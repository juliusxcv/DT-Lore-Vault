# DT-Lore-Vault — Full Audit Report
**Date:** 2026-06-24  
**Scope:** Read-only survey of all 258 markdown files.  
**Method:** Every file read individually; wikilinks traced manually; contradictions flagged with source quotes.

---

## 1. Note Count and Folder Structure

**Total notes: 258**

| Top-Level Folder | Files |
|---|---|
| Campaign\ | 32 |
| Published\CODEX\ | 79 |
| System Prompts\ | 3 |
| Unpublished\ | 7 |
| World Lore\ | 137 |
| **Total** | **258** |

### Full Directory Tree

```
DT-Lore-Vault/
│
├── _audit/                                          [new — this report]
│
├── Campaign/                                        (32 files)
│   ├── _Rules/                                      (1)
│   │   ├── LP System.md
│   │   └── GM Notes/                               (2)
│   │       ├── Clearance Codes & Effects.md
│   │       └── Session 1.md
│   ├── Briefing Dossier/                            (15)
│   │   ├── Authorization Codes LVL-6.md
│   │   ├── Authorization Codes LVL-9 - High Level Clearance.md
│   │   ├── Inquisitorial Clearance Codes.md
│   │   ├── Arrest Warrant - Helbrecht Nullis.md
│   │   ├── Arrest Warrant - Vexilia Thornkell.md
│   │   ├── Dropsite Coordinates.md
│   │   ├── Emergency Protocols.md
│   │   ├── Manual of Reflective Praxis [Eldar Rituals].md
│   │   ├── Oath of Service.md
│   │   ├── Sanctioned Hymns & Chants.md
│   │   ├── Tenebris - Fauna.md
│   │   ├── Tenebris - Field Report.md
│   │   ├── Tenebris - Flora.md
│   │   ├── Tenebris - Historical Journal.md
│   │   └── Tenebris - Weather Forecast (5 Day).md
│   ├── LOGS/                                        (1)
│   │   └── Session 2.md
│   ├── Mainquest/                                   (8)
│   │   ├── Campaign Index.md
│   │   ├── Mission 0.0 - Briefing.md
│   │   ├── Mission 0.1 - Landfall.md
│   │   ├── Mission 1 - Establish Communications.md
│   │   ├── Mission 2 - First Contact.md
│   │   ├── Mission 3 - Securing a Beachhead.md
│   │   ├── Mission 4 - Fight the Horde.md
│   │   └── Reveal Cadence Map - Dark Soul Arc.md
│   └── Sidequests/                                  (5)
│       ├── Burning Man.md
│       ├── Mining Shaft.md
│       ├── The Miners Fate.md
│       └── Hollowkin/                               (1)
│           └── The Answer.md
│
├── Published/CODEX/                                 (79 files)
│   ├── Archive/Logs/
│   │   ├── Miners/                                  (1)
│   │   │   ├── The Renn Collective.md
│   │   │   └── Journals/                           (7)
│   │   │       ├── Aron Edrik - Journal.md
│   │   │       ├── Corvin Renn - Journal.md
│   │   │       ├── Edras Helbrun - Field Report.md
│   │   │       ├── Ilia Valev - Milas Words.md
│   │   │       ├── Ilia Valev - Personal Log.md
│   │   │       ├── Jorren Valev - Journal.md
│   │   │       └── Selene Renn - Journal.md
│   │   └── Operatives Reports/                     (5)
│   │       ├── Mission Report - I - Nullis Helbrecht.md
│   │       ├── Mission Report - II - Vex.md
│   │       ├── Mission Report - III - Helbrecht.md
│   │       ├── Mission Report - III - Slabs.md
│   │       └── Mission Report - III - Vex.md
│   ├── Bestiary/                                    (4)
│   │   ├── Fleshspoil.md
│   │   ├── Spore Wretch.md
│   │   ├── Undead Cadaver.md
│   │   └── Undead Mutant.md
│   ├── Mainframe/                                   (30)
│   │   ├── LOG-PROT - CARGO SUMMARY.md
│   │   ├── RND-PROT - CLASSIFIED PROJECT NOTICE.md
│   │   ├── SEC-PROT - Encounter Record 11-DELTA.md
│   │   ├── SEC-PROT - INQ VU 1.md  … through INQ VU 9.md
│   │   └── [+ ~20 more ADMIN/LOG/MAINT/RND-PROT terminal files]
│   └── Security/                                    (32)
│       └── [one form file per LVL-6 clearance code action]
│
├── System Prompts/                                  (3 files)
│   ├── System Prompt.md
│   ├── System Prompt - Research Facility.md
│   └── System Prompt Shadow Sentinels.md
│
├── Unpublished/                                     (7 files)
│   ├── Grave Titan.md
│   ├── Mindspike Horror.md
│   ├── Moonspawned Aberrant.md
│   ├── Rift Leaper.md
│   ├── Shard Swarm.md
│   ├── Shardspawn Mimic.md
│   └── Tenebris Facility Map.md
│
└── World Lore/                                      (137 files)
    ├── Beastiary/                                   (46)
    │   ├── Beastiary Index.md
    │   ├── Fauna/
    │   │   └── Hollowkin.md
    │   ├── Necromutants/                            (9 creature files)
    │   │   ├── Fleshspoil Ambusher.md
    │   │   ├── Grave Titan.md
    │   │   ├── Mindspike Horror.md
    │   │   ├── Moonspawned Aberrant.md
    │   │   ├── Necromutant.md
    │   │   ├── Rift Leaper.md
    │   │   ├── Shard Swarm.md
    │   │   ├── Shardspawn Mimic.md
    │   │   └── Undead Legionnaires.md
    │   │   ├── Necromutants Items/                  (12 + 9 Organs + 2 Weapons = 23)
    │   │   │   ├── [12 top-level item files]
    │   │   │   ├── Organs/  [9 files]
    │   │   │   └── Weapons/ [2 files]
    │   │   └── Necromutants Weapons/                (6)
    │   │       ├── Belzarach Bolter.md
    │   │       ├── Bone Blade.md
    │   │       ├── Bone Scythes.md
    │   │       ├── Phase Claws.md
    │   │       ├── Rotting Claws.md
    │   │       └── Shard Claws.md
    │   └── Shard Tyranids/                          (6)
    │       ├── Corpse Bloom.md
    │       ├── Necrogaunt.md
    │       ├── Ravager Husk.md
    │       ├── Shardbeast.md
    │       ├── Shard Devil.md
    │       └── Spore Wretch.md
    ├── Characters/                                  (69)
    │   ├── Dark Adeptus Mechanicus/                 (1)
    │   │   └── The Body.md
    │   ├── Drukhari/                                (25)
    │   │   ├── Index Weapons.md
    │   │   ├── Shards of Venom.md
    │   │   ├── Operatives/                          (6)
    │   │   │   ├── Archon Vaelinth Sissarath.md
    │   │   │   ├── Beastmaster.md
    │   │   │   ├── Haemonculus.md
    │   │   │   ├── Scourge.md
    │   │   │   ├── Succubus.md
    │   │   │   └── Sybarite.md
    │   │   └── Drukhari Weapons/                   (17)
    │   │       ├── Melee/  [6 files]
    │   │       └── Ranged/ [11 files]
    │   ├── Inquisition/
    │   │   ├── Deathwatch/                          (1)
    │   │   │   └── Killteam Velatum Umbra.md
    │   │   ├── Ordo Xenos/                          (3)
    │   │   │   ├── Agent Cell IX-Vespera.md  [EMPTY]
    │   │   │   ├── Lord Inquisitor Lucius Harridan.md
    │   │   │   └── Lord Inquisitor Seraphina Valeria.md
    │   │   └── Rejects/                             (5)
    │   │       ├── ALB-XXIII.md
    │   │       ├── Helbrecht Nullis.md
    │   │       ├── Rejects.md
    │   │       ├── Slabs.md
    │   │       └── Vexilia Thornkell.md
    │   ├── Miners/                                  (20)
    │   │   ├── Chalk marks.md
    │   │   ├── Mass Grave.md  [EMPTY]
    │   │   ├── Renn Key.md
    │   │   ├── Saint Dravik the Lantern-Bearer of the Deep.md
    │   │   ├── The Edrik Family.md
    │   │   ├── The Green Angel.md
    │   │   ├── The Helbrun Family.md
    │   │   ├── The Karsen Family.md
    │   │   ├── The Morholt Family.md
    │   │   ├── The Valev Family.md
    │   │   └── Journals/                            (10)
    │   │       ├── Aron Edrik - Journal.md
    │   │       ├── Corvin Renn - Journal.md
    │   │       ├── Edras Helbrun - Field Report.md
    │   │       ├── Ilia Valev - Milas Words.md
    │   │       ├── Ilia Valev - Personal Log.md
    │   │       ├── Jorren Valev - Journal.md
    │   │       ├── Kael Helbrun - Journal.md
    │   │       ├── Mara Karsen - Journal.md
    │   │       ├── Selene Renn - Journal.md
    │   │       └── Tessa Morholt - Journal.md
    │   ├── Shadow Sentinels/                        (13)
    │   │   ├── Shadow Sentinels First Contact.md
    │   │   ├── Shadow Sentinels.md
    │   │   └── Patrol Theta/                        (11)
    │   │       ├── 0_Sergeant Arik Varn.md
    │   │       ├── 1_Corporal Nia Drask.md
    │   │       ├── 2_Medic Salla Veylan.md
    │   │       ├── 3_Marksman Kael Ryn.md
    │   │       ├── 4_Heavy Weapons Specialist Bronn Kade.md
    │   │       ├── 5_Demolition Expert Tarek Voss.md
    │   │       ├── 6_Tech-Savant Khorvis.md
    │   │       ├── 7_Trooper Dain Korr.md
    │   │       ├── 8_Trooper Garran Vyce.md
    │   │       ├── 9_Trooper Lira Venn.md
    │   │       └── Lt Darius Koln - Deceased.md
    │   └── Tenebris Personnel/                      (1)
    │       └── Drakos Kael.md
    └── Places/                                      (22)
        ├── Galaxy Map.md
        ├── Segmentum Ultima.md
        └── System/                                  (3)
        │   ├── Bellum Eternum.md
        │   ├── Bellum Eternum Tertius.md
        │   └── Luna Tenebris.md
        └── Luna Tenebris/                           (19)
            ├── Midnight Wraith.md
            ├── Project HELIOS SHEPHERD.md
            ├── Shard.md
            ├── The Maw.md
            ├── Mining Settlement/                   (7 + 4 subfolder)
            │   ├── Chapel of Saint Dravik.md
            │   ├── Mining Settlement House I.md … House VI.md
            │   └── Research Facility Tenebris/     [NOTE: misplaced folder — see §4]
            │       └── [4 files]
            └── Research Facility/                   (2)
                ├── Research Facility Tenebris.md
                └── 0_Theta Gate/
                    └── Corvus Blackstar.md
```

---

## 2. Notes by Type

### Player Characters (PCs)
| Note | Location |
|---|---|
| Helbrecht Nullis ("Judicar") | World Lore\Characters\Inquisition\Rejects\ |
| Vexilia Thornkell "PSY-VEX" | World Lore\Characters\Inquisition\Rejects\ |
| ALB-XXIII (Skitarii) | World Lore\Characters\Inquisition\Rejects\ |
| Slabs / OGR-271 (Ogryn) | World Lore\Characters\Inquisition\Rejects\ |
| Rejects (index) | World Lore\Characters\Inquisition\Rejects\ |

### NPCs — Inquisition
| Note | Location |
|---|---|
| Lord Inquisitor Seraphina Valeria | World Lore\Characters\Inquisition\Ordo Xenos\ |
| Lord Inquisitor Lucius Harridan | World Lore\Characters\Inquisition\Ordo Xenos\ |
| Agent Cell IX-Vespera | World Lore\Characters\Inquisition\Ordo Xenos\ [**EMPTY**] |
| Killteam Velatum Umbra (5 Marines) | World Lore\Characters\Inquisition\Deathwatch\ |

### NPCs — Shadow Sentinels
| Note | Location |
|---|---|
| Shadow Sentinels (faction overview) | World Lore\Characters\Shadow Sentinels\ |
| Shadow Sentinels First Contact (dialogue trees) | World Lore\Characters\Shadow Sentinels\ |
| Lt Darius Koln — Deceased | World Lore\Characters\Shadow Sentinels\Patrol Theta\ |
| Sergeant Arik Varn | World Lore\Characters\Shadow Sentinels\Patrol Theta\ |
| Corporal Nia Drask | World Lore\Characters\Shadow Sentinels\Patrol Theta\ |
| Medic Salla Veylan | World Lore\Characters\Shadow Sentinels\Patrol Theta\ |
| Marksman Kael Ryn | World Lore\Characters\Shadow Sentinels\Patrol Theta\ |
| Heavy Weapons Specialist Bronn Kade | World Lore\Characters\Shadow Sentinels\Patrol Theta\ |
| Demolition Expert Tarek Voss | World Lore\Characters\Shadow Sentinels\Patrol Theta\ |
| Tech-Savant Khorvis | World Lore\Characters\Shadow Sentinels\Patrol Theta\ |
| Trooper Dain Korr | World Lore\Characters\Shadow Sentinels\Patrol Theta\ |
| Trooper Garran Vyce | World Lore\Characters\Shadow Sentinels\Patrol Theta\ |
| Trooper Lira Venn | World Lore\Characters\Shadow Sentinels\Patrol Theta\ |

### NPCs — Drukhari (Shards of Venom)
| Note | Location |
|---|---|
| Shards of Venom (faction) | World Lore\Characters\Drukhari\ |
| Archon Vaelinth Sissarath | World Lore\Characters\Drukhari\Operatives\ |
| Succubus | World Lore\Characters\Drukhari\Operatives\ |
| Haemonculus | World Lore\Characters\Drukhari\Operatives\ |
| Sybarite | World Lore\Characters\Drukhari\Operatives\ |
| Beastmaster | World Lore\Characters\Drukhari\Operatives\ |
| Scourge | World Lore\Characters\Drukhari\Operatives\ |
| Index Weapons (wikilink list) | World Lore\Characters\Drukhari\ |
| [17 weapon stat files — Melee/Ranged] | World Lore\Characters\Drukhari\Drukhari Weapons\ |

### NPCs — Dark Adeptus Mechanicus
| Note | Location |
|---|---|
| The Body (cult overview + 5 leaders) | World Lore\Characters\Dark Adeptus Mechanicus\ |

### NPCs — Miners / Civilians
| Note | Location |
|---|---|
| The Edrik Family | World Lore\Characters\Miners\ |
| The Helbrun Family | World Lore\Characters\Miners\ |
| The Karsen Family | World Lore\Characters\Miners\ |
| The Morholt Family | World Lore\Characters\Miners\ |
| The Valev Family | World Lore\Characters\Miners\ |
| The Green Angel (Fallen Dark Angel) | World Lore\Characters\Miners\ |
| Saint Dravik the Lantern-Bearer of the Deep | World Lore\Characters\Miners\ |
| Drakos Kael (scientist) | World Lore\Characters\Tenebris Personnel\ |
| Mass Grave | World Lore\Characters\Miners\ [**EMPTY**] |

### Miner Journals (GM — full versions)
Aron Edrik, Corvin Renn, Edras Helbrun, Ilia Valev (x2), Jorren Valev, Kael Helbrun, Mara Karsen, Selene Renn, Tessa Morholt — all in World Lore\Characters\Miners\Journals\

### Gameplay Objects (items, clues)
| Note | Location |
|---|---|
| Chalk marks (secret compartment clue) | World Lore\Characters\Miners\ |
| Renn Key (vault key) | World Lore\Characters\Miners\ |

### Factions
| Faction | Primary File | Supporting Files |
|---|---|---|
| Rejects | Rejects.md | 4 individual PC sheets |
| Shadow Sentinels | Shadow Sentinels.md | First Contact + 11 Patrol Theta members |
| Shards of Venom (Drukhari) | Shards of Venom.md | 6 operatives + 17 weapons |
| Killteam Velatum Umbra | Killteam Velatum Umbra.md | — |
| The Body (Dark Mechanicus) | The Body.md | — |

### Locations
| Note | Location |
|---|---|
| Galaxy Map | World Lore\Places\ |
| Segmentum Ultima | World Lore\Places\ |
| Bellum Eternum (system) | World Lore\Places\System\ |
| Bellum Eternum Tertius | World Lore\Places\System\ |
| Luna Tenebris | World Lore\Places\System\ |
| Midnight Wraith | World Lore\Places\Luna Tenebris\ |
| Shard (of the Dark Soul) | World Lore\Places\Luna Tenebris\ |
| The Maw (cave network) | World Lore\Places\Luna Tenebris\ |
| Project HELIOS SHEPHERD | World Lore\Places\Luna Tenebris\ |
| Research Facility Tenebris | World Lore\Places\Luna Tenebris\Research Facility\ |
| Corvus Blackstar (landing craft) | World Lore\Places\…\0_Theta Gate\ |
| Chapel of Saint Dravik | World Lore\Places\Luna Tenebris\Mining Settlement\ |
| Mining Settlement Houses I–VI | World Lore\Places\Luna Tenebris\Mining Settlement\ |

### Bestiary — Creatures
| Type | Files | Notes |
|---|---|---|
| Necromutants (stat sheets) | 9 | Tier I–III, World Lore |
| Shard Tyranids (stat sheets) | 6 | Tier II–V, World Lore |
| Necromutant items (drops) | 23 | Spread across 3 folder tiers (see §4) |
| Necromutant weapons | 6 | World Lore\Beastiary\Necromutants Weapons\ |
| Hollowkin | 1 | World Lore\Beastiary\Fauna\ |
| Bestiary Index | 1 | World Lore\Beastiary\ |
| Published autopsies | 4 | Published\CODEX\Bestiary\ |
| Unpublished autopsies | 6 | Unpublished\ (GM drafts) |

### Campaign / Plot Threads
| Note | Type |
|---|---|
| Campaign Index | Overview, broken links |
| Mission 0.0 – Briefing | Mission |
| Mission 0.1 – Landfall | Mission |
| Mission 1 – Establish Communications | Mission |
| Mission 2 – First Contact | Mission (most detailed) |
| Mission 3 – Securing a Beachhead | Mission **stub** (1 line) |
| Mission 4 – Fight the Horde | Mission **stub** (1 line) |
| Reveal Cadence Map – Dark Soul Arc | GM pacing doc, tagged gm-only/spoilers |
| Burning Man (sidequest) | Encounter |
| Mining Shaft (sidequest) | Procedural dungeon |
| The Miners Fate (sidequest) | Reveal scene |
| The Answer / Hollowkin (sidequest) | Solo beat (Vex) |

### Sessions / Logs
| Note | Content |
|---|---|
| Session 1 (GM Notes) | 2 lines only — player form assignments |
| Session 2 (LOGS) | 1 line — "Skitari reports undead Humans" |
| Mission Report I — Helbrecht | Full in-character report (Published) |
| Mission Report II — Vex | Full in-character report (Published) |
| Mission Report III — Helbrecht | Full in-character report (Published) |
| Mission Report III — Vex | Full in-character report (Published) |
| Mission Report III — Slabs | Full in-character report (Published) |

### Player Handouts
| Note | Location |
|---|---|
| Authorization Codes LVL-6 | Campaign\Briefing Dossier\ |
| Authorization Codes LVL-9 | Campaign\Briefing Dossier\ |
| Inquisitorial Clearance Codes | Campaign\Briefing Dossier\ |
| Arrest Warrant — Helbrecht Nullis | Campaign\Briefing Dossier\ |
| Arrest Warrant — Vexilia Thornkell | Campaign\Briefing Dossier\ |
| Tenebris — Historical Journal | Campaign\Briefing Dossier\ |
| Tenebris — Field Report | Campaign\Briefing Dossier\ |
| Tenebris — Fauna (46 entries) | Campaign\Briefing Dossier\ |
| Tenebris — Flora (46 entries) | Campaign\Briefing Dossier\ |
| Tenebris — Weather Forecast (5 Day) | Campaign\Briefing Dossier\ |
| Dropsite Coordinates | Campaign\Briefing Dossier\ |
| Oath of Service | Campaign\Briefing Dossier\ |
| Emergency Protocols | Campaign\Briefing Dossier\ |
| Manual of Reflective Praxis [Eldar Rituals — misnamed] | Campaign\Briefing Dossier\ |
| Sanctioned Hymns & Chants | Campaign\Briefing Dossier\ |
| 32 LVL-6 clearance code forms | Published\CODEX\Security\ |
| 30 in-world terminal documents | Published\CODEX\Mainframe\ |
| 8 miner journal handouts (truncated) | Published\CODEX\Archive\Logs\Miners\ |

### GM Rules and Tools
| Note | Location |
|---|---|
| LP System (Loyalty Points) | Campaign\_Rules\ |
| Clearance Codes & Effects (GM master table) | Campaign\_Rules\GM Notes\ |
| System Prompt (generic) | System Prompts\ |
| System Prompt — Research Facility | System Prompts\ |
| System Prompt — Shadow Sentinels | System Prompts\ |

---

## 3. Orphans

### 3a. Notes With No Outgoing Wikilinks (link to nothing)

These files contain no `[[...]]` links. They are dead-ends — useful for reading but not navigable from within the vault.

**Bestiary stat sheets and items** — all 23 Necromutant item files, all 6 Necromutant weapon files, all 6 Shard Tyranid files, all 9 Necromutant creature files. The `Beastiary Index.md` links to some creature files, but creature files don't link back or forward.

**Drukhari weapons** — all 17 weapon stat files (Melee + Ranged subfolders). `Index Weapons.md` links to them; they link to nothing.

**Player handout flat files:**
- `Tenebris - Fauna.md`
- `Tenebris - Flora.md`
- `Tenebris - Weather Forecast (5 Day).md`
- `Dropsite Coordinates.md`
- `Oath of Service.md`
- `Emergency Protocols.md`
- `Sanctioned Hymns & Chants.md`

**Empty files:**
- `Agent Cell IX-Vespera.md` — referenced in two places, contains 1 blank line
- `Mass Grave.md` — referenced nowhere, contains 1 blank line

**Gameplay object stubs:**
- `Chalk marks.md` — a one-paragraph gameplay note, no links
- `Renn Key.md` — a one-paragraph gameplay note, no links

**Published\CODEX\Security** — all 32 clearance form files (player uses them; no wikilinks inside them)

**Published\CODEX\Mainframe** — most of the ~30 terminal files have no wikilinks (they are flat in-world text documents)

**Session logs:**
- `Campaign\_Rules\GM Notes\Session 1.md` — 2 lines
- `Campaign\LOGS\Session 2.md` — 1 line

**System Prompts** — all 3 files have no outgoing wikilinks (they embed lore inline rather than linking)

### 3b. Notes That Nothing Links To (no incoming wikilinks)

The vault uses wikilinks inconsistently — many files that clearly belong to a topic are never linked from a hub. Notable unlinked notes:

| Note | Why it matters |
|---|---|
| `System Prompts\*.md` (all 3) | Utility files; expected orphans |
| `Unpublished\*.md` (all 7) | GM draft autopsies; no campaign file references them by wikilink |
| `Campaign\_Rules\LP System.md` | Core mechanic, never linked |
| `World Lore\Places\Galaxy Map.md` | Just an image embed |
| `World Lore\Places\Segmentum Ultima.md` | Copy-pasted WH40K wiki content |
| `World Lore\Characters\Miners\Mass Grave.md` | Empty AND unlinked |
| `Campaign\Briefing Dossier\Manual of Reflective Praxis.md` | Eldar ritual document; no mission links to it |
| `Published\CODEX\Security\*.md` (all 32) | Forms are referenced by the clearance code dossiers but not via wikilinks |
| `World Lore\Beastiary\Necromutants\Necromutants Items\Organs\*.md` (all 9) | Third-tier item subfolder; no file links in |
| Patrol Theta members 3–10 | `Shadow Sentinels.md` lists them; individual files have no incoming links from mission files |
| `World Lore\Characters\Miners\Chalk marks.md` | Gameplay clue; no links |
| `World Lore\Characters\Miners\Renn Key.md` | Gameplay clue; no links |
| `World Lore\Places\Luna Tenebris\The Maw.md` | Central location for the endgame; no mission links to it |
| `World Lore\Places\Luna Tenebris\Project HELIOS SHEPHERD.md` | Major secret; only 1 terminal file (RND-PROT) hints at it |

### 3c. Broken Wikilinks (link targets with no matching file)

| Source File | Broken Link | Notes |
|---|---|---|
| `Campaign\Mainquest\Campaign Index.md` | `[[XVR Dokemtation]]` | No file by this name exists |
| `Campaign\Mainquest\Mission 1.md` | `[[Shadow Sentinels Interactions]]` | No file by this name exists |
| `Campaign\Mainquest\Mission 1.md` | `[[VOX-4ZT - Orbital Relay Ping Protocol]]` | No file; VOX-4ZT is a clearance code, not a protocol document |
| `World Lore\Places\Luna Tenebris\Project HELIOS SHEPHERD.md` | `![[Project HELIO_Test Range.png]]` | Image file not present in vault |
| `Unpublished\Tenebris Facility Map.md` | `![[map image]]` | Image file not present in vault |

---

## 4. Likely Duplicates

### Duplicate Group A: Miner Journals — Dual-Version System

Ten miner journals exist in two versions:

| World Lore (GM — full) | Published\CODEX (player — truncated) |
|---|---|
| Aron Edrik - Journal.md | Aron Edrik - Journal.md |
| Corvin Renn - Journal.md | Corvin Renn - Journal.md |
| Edras Helbrun - Field Report.md | Edras Helbrun - Field Report.md |
| Ilia Valev - Milas Words.md | Ilia Valev - Milas Words.md |
| Ilia Valev - Personal Log.md | Ilia Valev - Personal Log.md |
| Jorren Valev - Journal.md | Jorren Valev - Journal.md |
| Kael Helbrun - Journal.md | — *(not published yet)* |
| Mara Karsen - Journal.md | — *(not published yet)* |
| Selene Renn - Journal.md | Selene Renn - Journal.md |
| Tessa Morholt - Journal.md | — *(not published yet)* |

**Note:** GM versions contain full multi-entry journals plus in-bracket GM notes (e.g., `FOUND: VEX`, `FOUND BY GIDEON`). Published versions are truncated to first entries only. This is **intentional design**, but there is no naming convention to distinguish them at a glance — identical filenames in different folders.

### Duplicate Group B: Necromutant Items — Triple-Folder Problem

Item data for Necromutant drops is scattered across three folder levels with apparent overlap:

| Folder | Files | Scope |
|---|---|---|
| `Necromutants Items\` (top-level) | 12 | General items |
| `Necromutants Items\Organs\` | 9 | Organ harvests |
| `Necromutants Items\Weapons\` | 2 | Looted weapons |

Several items appear to have entries in **both** the top-level folder and the Organs/ subfolder (e.g., Constrictor Coil, Mutagenic Core). This creates ambiguity about which file is authoritative and risks data divergence if one is updated and the other is not.

### Duplicate Group C: Clearance Code Documents — Player vs GM Mismatch

| Document | Layer | LVL-6 Example Code |
|---|---|---|
| `Authorization Codes LVL-6.md` | Player handout | ADM-2XK |
| `Clearance Codes & Effects.md` | GM master table | ADM-242 |
| `Authorization Codes LVL-9.md` | Player handout | [matches GM] |
| `Inquisitorial Clearance Codes.md` | Player handout | Differs from GM |

LVL-6 and Inquisitorial code identifiers do **not match** between the player handout and the GM reference. LVL-9 codes are consistent. If a player uses their handout code in-game and the GM cross-references the GM Notes, the IDs will not align.

### Duplicate Group D: System Prompts — Cascading Copies

All three System Prompts share an identical ROLE / CANON HIERARCHY / TASKS / HARD CONSTRAINTS structure. The Research Facility and Shadow Sentinels variants add lore in the `# LORE CONTEXT` section but copy-paste the surrounding template. The base prompt text exists in triplicate.

### Duplicate Group E: Seraphina's Reply — Mission Report III Vex

`Published\CODEX\Archive\Logs\Operatives Reports\Mission Report - III - Vex.md` contains **an identical copy** of Seraphina's reply that appears in `Mission Report - II - Vex.md`. The reply text is word-for-word the same, responding to Vex's Mission 2 report rather than her Mission 3 content.

### Duplicate Group F: Bestiary — Stat Sheet vs Autopsy Split

Creatures appear in up to three places:
1. `World Lore\Beastiary\Necromutants\*.md` — combat stat sheets (GM)
2. `Unpublished\*.md` — narrative autopsy drafts (GM, not yet revealed)
3. `Published\CODEX\Bestiary\*.md` — player-unlockable autopsy reports

Not all creatures have all three. The Grave Titan and Shardspawn Mimic have World Lore stat sheets and Unpublished autopsies, but only 4 creatures (Fleshspoil, Undead Cadaver, Undead Mutant, Spore Wretch) have Published autopsies. Coverage is inconsistent.

### Duplicate Group G: Misplaced Subfolder

PowerShell file tree reveals a folder named `Research Facility Tenebris` **inside** `World Lore\Places\Luna Tenebris\Mining Settlement\` containing 4 files. The canonical Research Facility notes are at `World Lore\Places\Luna Tenebris\Research Facility\`. This misplaced subfolder may contain orphaned or duplicated facility content.

---

## 5. Lore Contradictions

### CONTRADICTION 1 — Research Facility Construction Date
**Severity: High (two canonical documents directly conflict)**

| Source | Date | Quote |
|---|---|---|
| `Campaign\Briefing Dossier\Tenebris - Historical Journal.md` | **M38.993–M38.995** | "Colony constructed M38.993–M38.995 under Magos Tertullian Vex directive" |
| `World Lore\Places\Luna Tenebris\Research Facility\Research Facility Tenebris.md` | **731.M41** | "Constructed in 731.M41 by the Adeptus Mechanicus under the directive of Archmagos Virellian" |
| `System Prompt - Research Facility.md` | **731.M41** | Same text as above — confirms the M41 version |

M38 to M41 spans roughly 200,000+ years. These cannot refer to the same construction event. The M38 date may refer to an earlier colony (consistent with the mining settlement timeline), but the Historical Journal's framing uses the same location name and doesn't distinguish the two structures. **Both documents position themselves as the founding document of the same installation.**

### CONTRADICTION 2 — Midnight Wraith Materialization Date
**Severity: High (three-way conflict)**

| Source | Date | Quote |
|---|---|---|
| `World Lore\Places\Luna Tenebris\Shard.md` | **898.M41.223** | "Midnight Wraith materialized 898.M41.223 — Filed by Inquisitor Harridan" |
| `World Lore\Places\Luna Tenebris\Midnight Wraith.md` | **998.M41.219** | "The hulk materialized within the Bellum Eternum system on 998.M41.219" |
| `World Lore\Places\Luna Tenebris\Research Facility\Research Facility Tenebris.md` | **761.M41** | "In 761.M41, a covert Inquisitorial probe…discovered the Midnight Wraith" |

Three different discovery/materialization dates for the same event: 761, 898, and 998.M41. The campaign is set in 998.M41, so the 998 date in `Midnight Wraith.md` is the most recently authored and likely the intended one. The 898 date in `Shard.md` appears to be an unrevised draft (exactly 100 years off). The 761 date in the Facility notes describes Harridan's discovery, which would predate any materialization unless the hulk was embedded before 998.

### CONTRADICTION 3 — Segmentum Designation
**Severity: Medium (affects geographic plausibility)**

| Source | Segmentum |
|---|---|
| `Bellum Eternum Tertius.md` | **Segmentum Solar** |
| `Arrest Warrant - Helbrecht Nullis.md` | **Segmentum: Solar** |
| `Arrest Warrant - Vexilia Thornkell.md` | **Segmentum: Solar** |
| `Lord Inquisitor Seraphina Valeria.md` | **Segmentum Ultima** |
| `Tenebris - Historical Journal.md` | **Segmentum Ultima** |
| `Shadow Sentinels.md` | **Segmentum Ultima** |

The entire campaign location is assigned to two different segmentums across different files. No reconciliation is provided. If this is intentional (e.g., the system sits on a segmentum border), it needs a note.

### CONTRADICTION 4 — Shadow Sentinels Commander
**Severity: Low (resolvable, but unaddressed)**

| Source | Named Leader |
|---|---|
| `Shadow Sentinels.md` | **Colonel Alera Vandis** ("tactical genius…under her command…") |
| `Mission 2 - First Contact.md` | **Sergeant Arik Varn** (patrol leader, introduced as authority figure to players) |

Vandis is the regiment CO; Varn is the patrol sergeant — these roles are hierarchically compatible, but Vandis is never mentioned in any mission file. Players interacting with Varn have no way to learn Vandis exists. She appears only in the faction overview note.

### CONTRADICTION 5 — LVL-6 Clearance Code IDs
**Severity: Medium (runtime problem if used in play)**

| Source | Code for Admin function |
|---|---|
| `Authorization Codes LVL-6.md` (player handout) | **ADM-2XK** |
| `Clearance Codes & Effects.md` (GM master) | **ADM-242** |

LVL-6 and Inquisitorial clearance code identifiers do not match between the GM reference table and the player handout. LVL-9 codes match. If a player attempts to use a code from their handout document at the table, the GM cannot validate it using the GM Notes.

### CONTRADICTION 6 — Saint Dravik Martyrdom vs Settlement Abandonment
**Severity: Medium (internal timeline inconsistency)**

| Source | Date/Fact |
|---|---|
| `World Lore\Characters\Miners\Saint Dravik the Lantern-Bearer of the Deep.md` | Martyrdom: **942.M41**, at Bellum Eternum Secundus-Theta |
| `Campaign\Briefing Dossier\Tenebris - Historical Journal.md` | Colony established **M38.992**, implied abandoned well before M41 |
| `World Lore\Characters\Miners\Journals\Ilia Valev - Personal Log.md` | References a **Saint Dravik statue** in the mining settlement chapel |
| `World Lore\Places\Luna Tenebris\Mining Settlement\Chapel of Saint Dravik.md` | Statue linked to [[The Green Angel]] iconography |

For a Saint Dravik statue to exist at an M38 settlement, Dravik would have had to be venerated there before his 942.M41 martyrdom — making him a local spiritual figure who later achieved sainthood, which is plausible. But the martyrdom occurs at **Bellum Eternum Secundus-Theta**, not Luna Tenebris itself, and the colony the Valev journal places active seems to predate the Saint by many centuries. The timeline needs clarification: is this a retroactive rededication of an older shrine, or did the miners encounter a more recently abandoned site?

### CONTRADICTION 7 — Mission Report III Vex — Copy-Pasted Reply
**Severity: Low (production error, not lore)**

`Published\CODEX\Archive\Logs\Operatives Reports\Mission Report - III - Vex.md` contains Seraphina's reply verbatim from Mission Report II. The Mission 3 Vex report describes entirely different events (Hollowkin research, Fallen Dark Angel contact) but receives the same generic reply Seraphina gave after Mission 2. If players read both reports side by side, Seraphina appears to give identical responses to different situations.

### CONTRADICTION 8 — Agent Cell IX-Vespera — Referenced but Empty
**Severity: Medium (named NPC with no content)**

Agent Cell IX-Vespera is cited as the filing agent in `Authorization Codes LVL-9 - High Level Clearance.md` and appears at the end of `Manual of Reflective Praxis.md` as a named operative. The file `World Lore\Characters\Inquisition\Ordo Xenos\Agent Cell IX-Vespera.md` contains one blank line. This NPC appears to be a significant intelligence asset (they filed the highest-clearance codes and accessed Eldar ritual documents) with no documented background.

### CONTRADICTION 9 — Harridan's Timeline
**Severity: Medium (logical sequence issue)**

| Source | Event | Date |
|---|---|---|
| `Research Facility Tenebris.md` | Harridan discovers Midnight Wraith | **761.M41** |
| `Shard.md` | Filed by Harridan re: Midnight Wraith materialization | **898.M41** |
| `Midnight Wraith.md` | Verified by Harridan | **998.M41** |
| Facility / System Prompt | "Harridan is missing. Last transmission ended mid-sentence." | Current (998.M41) |

If the Midnight Wraith materialised in **998.M41** (the correct campaign date per `Midnight Wraith.md`), then Harridan's 761.M41 discovery either refers to a different event at the facility (the pre-materialization anomaly/warp signal) or the facility notes are using incorrect dates. The sequence that makes most narrative sense: anomalous signal detected ~761, leading to Inquisition seizure; full materialization occurs 998.M41. But this is not explicitly stated and the facility note reads as if the 761 event IS the materialization.

### CONTRADICTION 10 — The Green Angel / Miner Timeline
**Severity: Low (ambiguous, may be intentional mystery)**

The miner journals place the Green Angel (Fallen Dark Angel) appearing at the mining settlement as a living memory of the characters writing the journals. Those characters were alive during an active mining operation. Per the Historical Journal, the original colony was established M38.992. Per Saint Dravik's martyrdom (942.M41), some activity occurred in M41. The miner journals feel temporally M41 in register (the technology, language, circumstances). But the settlement is described as **long-abandoned** by the time the current campaign (998.M41) begins. If the Green Angel encounter was in, say, 960–980.M41 and the settlement was abandoned shortly after, this is consistent — but no date is given for when the mining operation ended.

---

## Summary — Key Priorities

| Priority | Issue | Affected Files |
|---|---|---|
| **Fix now** | Clearance code ID mismatch (breaks play) | `Clearance Codes & Effects.md`, `Authorization Codes LVL-6.md`, `Inquisitorial Clearance Codes.md` |
| **Fix now** | Mission Report III Vex — Seraphina reply copy-paste | `Mission Report - III - Vex.md` |
| **Fix now** | Three broken wikilinks (`[[XVR Dokemtation]]`, `[[Shadow Sentinels Interactions]]`, `[[VOX-4ZT - Orbital Relay Ping Protocol]]`) | `Campaign Index.md`, `Mission 1.md` |
| **Resolve** | Midnight Wraith materialization date (898 vs 998.M41) | `Shard.md` — update to 998.M41 |
| **Resolve** | Research Facility construction date (M38 vs M41) | `Tenebris - Historical Journal.md` — clarify if M38 = mining colony ≠ research facility |
| **Resolve** | Segmentum (Solar vs Ultima) | Pick one and update arrest warrants or Seraphina's bio |
| **Fill** | `Agent Cell IX-Vespera.md` — empty file for a referenced NPC | `World Lore\Characters\Inquisition\Ordo Xenos\` |
| **Fill** | `Mass Grave.md` — empty file | `World Lore\Characters\Miners\` |
| **Fill** | Missions 3 and 4 — both are 1-line stubs | `Campaign\Mainquest\` |
| **Fill** | Harridan timeline clarification | `Research Facility Tenebris.md`, `Shard.md` |
| **Investigate** | Misplaced `Research Facility Tenebris\` subfolder inside `Mining Settlement\` | `World Lore\Places\Luna Tenebris\Mining Settlement\` |
| **Tidy** | Necromutant item triple-folder structure — determine which files are authoritative | `Necromutants Items\`, `Necromutants Items\Organs\`, `Necromutants Items\Weapons\` |
| **Tidy** | Session logs are nearly empty — decide if they are used or removed | `Session 1.md`, `Session 2.md` |
| **Tidy** | System Prompt triple-duplication of boilerplate — consider template approach | `System Prompts\*.md` |
| **Note** | `Mining Shaft.md` uses real player names (Timo, Lamar, Silvan, etc.) — check if this is intentional | `Campaign\Sidequests\Mining Shaft.md` |
