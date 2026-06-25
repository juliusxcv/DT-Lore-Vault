$VaultRoot = Split-Path -Parent $PSScriptRoot
$csvPath   = Join-Path $PSScriptRoot "frontmatter-plan-places.csv"
$utf8      = [System.Text.UTF8Encoding]::new($false)

$countOk      = 0
$countSkip    = 0
$countMissing = 0
$missingList  = @()

$rows = Import-Csv -Path $csvPath -Encoding UTF8

foreach ($row in $rows) {
    $rel      = $row.relative_path
    $fullPath = Join-Path $VaultRoot $rel

    if (-not (Test-Path -LiteralPath $fullPath)) {
        Write-Host "MISSING: $rel"
        $countMissing++
        $missingList += $rel
        continue
    }

    $raw = [System.IO.File]::ReadAllText($fullPath, $utf8)

    if ($raw.TrimStart().StartsWith('---')) {
        Write-Host "SKIP:    $rel"
        $countSkip++
        continue
    }

    $fm  = @('---')
    $fm += "type: $($row.type)"
    $fm += "visibility: $($row.visibility)"
    if ($row.faction -ne '') { $fm += "faction: $($row.faction)" }
    $fm += "status: $($row.status)"

    $aliasRaw = $row.aliases.Trim()
    if ($aliasRaw -eq '') {
        $fm += 'aliases: []'
    } else {
        $fm += 'aliases:'
        $aliasRaw -split ';' | ForEach-Object {
            $a = $_.Trim()
            if ($a -ne '') { $fm += "  - $a" }
        }
    }
    $fm += '---'

    $block = ($fm -join "`n") + "`n"
    [System.IO.File]::WriteAllText($fullPath, $block + $raw, $utf8)

    Write-Host "OK:      $rel"
    $countOk++
}

Write-Host ''
Write-Host '=== TOTALS ==='
Write-Host "OK:      $countOk"
Write-Host "SKIP:    $countSkip"
Write-Host "MISSING: $countMissing"

if ($missingList.Count -gt 0) {
    Write-Host ''
    Write-Host '=== MISSING FILES ==='
    $missingList | ForEach-Object { Write-Host "  $_" }
}
