param([string]$OnlyGroup = '')   # pass A, B, or C to restrict to one group

$VaultRoot = Split-Path -Parent $PSScriptRoot
$csvPath   = Join-Path $PSScriptRoot "frontmatter-plan-published.csv"
$utf8      = [System.Text.UTF8Encoding]::new($false)

$script:cntA=0; $script:cntB=0; $script:cntC=0
$script:cntOk=0; $script:cntSkip=0; $script:cntMissing=0
$script:noted = @()

# ── helpers ───────────────────────────────────────────────────────────────────

function Detect-Group ($raw) {
    $lines = $raw -split "`r?`n"
    for ($i = 0; $i -lt [Math]::Min($lines.Count, 20); $i++) {
        if ($lines[$i] -ne '') {
            if ($lines[$i].Trim() -eq '---') {
                return $(if ($i -eq 0) { 'A' } else { 'B' })
            }
            return 'C'
        }
    }
    return 'C'
}

# Returns a parsed block hashtable, or $null when:
#   - no closing --- is found after the opening ---, or
#   - lines between the delimiters contain prose rather than YAML key:value pairs
#     (guards against mistaking a Markdown HR for a frontmatter delimiter).
function Try-Parse ($raw) {
    $lines = $raw -split "`r?`n"
    if ($lines.Count -eq 0 -or $lines[0].Trim() -ne '---') { return $null }

    $closeIdx = -1
    for ($i = 1; $i -lt $lines.Count; $i++) {
        if ($lines[$i].Trim() -eq '---') { $closeIdx = $i; break }
    }
    if ($closeIdx -lt 0) { return $null }

    $between = if ($closeIdx -gt 1) { @($lines[1..($closeIdx-1)]) } else { @() }

    foreach ($l in $between) {
        if ($l -ne '' -and $l -notmatch '^\S[^:]*:\s?') { return $null }
    }

    $keyNames = @{}
    foreach ($l in $between) {
        if ($l -match '^([^:\s][^:]*):\s?') { $keyNames[$matches[1]] = $true }
    }

    $after = if (($closeIdx+1) -lt $lines.Count) { @($lines[($closeIdx+1)..($lines.Count-1)]) } else { @() }

    return @{ Between = $between; KeyNames = $keyNames; Body = ($after -join "`n") }
}

function Apply-File ($group, $raw, $fullPath, $rel, $desired) {
    $parsed = Try-Parse $raw

    if ($null -eq $parsed) {
        # No valid YAML block found. Prepend a fresh block.
        # If $raw starts with --- (a bare HR after blank-stripping in group B),
        # insert a blank line between the new block and that HR.
        $fm = @('---')
        foreach ($k in $desired.Keys) { $fm += "${k}: $($desired[$k])" }
        $fm += '---'
        $sep = if ($raw -match '^---') { "`n" } else { '' }
        [System.IO.File]::WriteAllText($fullPath, ($fm -join "`n") + "`n" + $sep + $raw, $utf8)
        Write-Host "${group}  OK(prepend): $rel"
        $script:cntOk++
        return
    }

    # Merge: add keys that are absent; report and skip keys already present.
    $toAdd = [ordered]@{}
    foreach ($k in $desired.Keys) {
        if ($parsed.KeyNames.ContainsKey($k)) {
            $script:noted += "  ${rel}: '${k}' already present - kept as-is"
        } else {
            $toAdd[$k] = $desired[$k]
        }
    }

    if ($toAdd.Count -eq 0) {
        Write-Host "${group}  SKIP:        $rel"
        $script:cntSkip++
        return
    }

    # Rebuild: preserve every existing line verbatim, append new keys before ---.
    $fmOut = @('---') + $parsed.Between
    foreach ($k in $toAdd.Keys) { $fmOut += "${k}: $($toAdd[$k])" }
    $fmOut += '---'

    [System.IO.File]::WriteAllText($fullPath, ($fmOut -join "`n") + "`n" + $parsed.Body, $utf8)
    Write-Host "${group}  OK(merge):   $rel"
    $script:cntOk++
}

# ── main ──────────────────────────────────────────────────────────────────────

$rows = Import-Csv -Path $csvPath -Encoding UTF8

foreach ($row in $rows) {
    $rel      = $row.relative_path
    $fullPath = Join-Path $VaultRoot $rel

    if (-not (Test-Path -LiteralPath $fullPath)) {
        Write-Host "MISSING: $rel"; $script:cntMissing++; continue
    }

    $raw = [System.IO.File]::ReadAllText($fullPath, $utf8)

    $desired = [ordered]@{ type = $row.type; visibility = 'player' }
    $fac = $row.faction.Trim()
    if ($fac -ne '') { $desired['faction'] = $fac }
    $desired['status']  = $row.status
    $desired['aliases'] = '[]'

    $group = Detect-Group $raw

    if ($OnlyGroup -ne '' -and $group -ne $OnlyGroup) { continue }

    switch ($group) {
        'A' { $script:cntA++; Apply-File 'A' $raw $fullPath $rel $desired }
        'B' {
            $script:cntB++
            Apply-File 'B' ($raw -replace '^[\r\n]+', '') $fullPath $rel $desired
        }
        'C' { $script:cntC++; Apply-File 'C' $raw $fullPath $rel $desired }
    }
}

''
'=== TOTALS ==='
"Groups:  A=$($script:cntA)  B=$($script:cntB)  C=$($script:cntC)  MISSING=$($script:cntMissing)"
"Actions: OK=$($script:cntOk)  SKIP=$($script:cntSkip)"

if ($script:noted.Count -gt 0) {
    ''
    '=== KEYS ALREADY PRESENT (not overwritten) ==='
    $script:noted | ForEach-Object { $_ }
}
