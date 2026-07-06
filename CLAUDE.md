\## Note creation contract

&#x20;

When creating ANY new note in this vault, follow this exactly:

&#x20;

Frontmatter (YAML, at the very top, between --- lines):

\- type:       one of character|faction|location|creature|item|mission|

&#x20;             session-log|handout|in-world-doc|rules|index|tool

\- visibility: gm | player | draft

&#x20;             (World Lore = gm; Published/Codex/handouts = player; unrevealed = draft)

\- status:     empty | stub | complete   (new notes default to stub)

\- faction:    plain-text grouping if clear (e.g. Inquisition), else omit the line

\- parent:     a PATH-QUALIFIED link to the note one level up. MANDATORY format:

&#x20;             parent: "\[\[Full/Vault/Root/Path/To/Parent|Display Name]]"

&#x20;             NEVER a bare \[\[Name]] — duplicate basenames exist (Luna Tenebris,

&#x20;             Drukhari, Ordo Xenos, Deathwatch) and bare links resolve wrong.

&#x20;             Places: parent = containing place. Characters: parent = who they

&#x20;             report to. Root nodes and standalone player handouts: omit parent.

\- aliases:    YAML list of names that LITERALLY appear in the note; \[] if none.

&#x20;             Never invent an alias.

&#x20;

Rules:

\- ALL internal links in frontmatter are full path-qualified. No bare names.

\- Do NOT add a children: field and do NOT add Dataview blocks. Children are

&#x20; shown via backlinks (each child's parent: link).

\- A container note that shares a name with a folder goes inside it as

&#x20; Folder/Folder.md (like Mining Settlement/Mining Settlement.md).

\- After creating notes, resolve every link you wrote against disk and report

&#x20; EXISTS/MISSING before committing. Flag any bare-name links.

&#x20;

Item notes may add: cost, code, lvl, hint.

Player handouts: visibility: player, usually no parent.

&#x20;

4\. After writing, print the full current contents of CLAUDE.md so I can confirm

&#x20;  the contract is present and nothing else was lost. Do not commit yet.

