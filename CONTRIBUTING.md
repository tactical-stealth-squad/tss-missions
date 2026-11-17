# Adding a mission

This guide is for mission makers. You need the Arma 3 Eden editor and a way to upload files to GitHub (the web interface is enough). [`op_example.Stratis`](op_example.Stratis) is a complete example you can copy.

## 1. One folder per mission

Each mission is one folder at the top of this repository, exactly as Eden saves it in `Documents\Arma 3 - Other Profiles\<profile>\missions\`. Do not pack it into a `.pbo`.

The folder name is `<name>.<map>`:

- `<name>` is lower case, words joined with `_` (letters, digits and `_` only).
- `<map>` is the map name exactly as Eden writes it (`Altis`, `Stratis`, `Tanoa`, `Enoch`, ...).

| Good | Bad | Why |
|---|---|---|
| `silent_harbor.Altis` | `Silent Harbor.Altis` | upper case and a space |
| `op_example.Stratis` | `op_example` | the map is missing |

Renaming a folder makes it a new mission on the site, so pick the name once.

## 2. Files the folder must contain

| File | What it is |
|---|---|
| `mission.sqm` | The Eden save. Must be saved **unbinarized** (see below). |
| `description.ext` | Normal Arma mission settings (`onLoadName`, `Header`, ...). |
| `briefing.sqf` | The briefing, written with `createDiaryRecord` (see below). |
| `tss.toml` | TSS information about the mission (see below). |

Any other files (scripts, images, sounds) are fine and are ignored by the site.

### Saving `mission.sqm` unbinarized

In Eden open **Attributes → General**, and under **Misc** untick **Binarize the Scenario File**. Save the mission again.

To check: open `mission.sqm` in a text editor. The first line must be `version=54;` (or another number). If it starts with `raP` and looks like garbage, it is still binarized.

### Slots

The site builds the slot list from `mission.sqm`:

- Every unit with **Playable** ticked becomes a slot.
- The slot's name is the unit's **Role Description** (unit attributes → Object: Identity). Give every playable unit one, for example `Squad Leader`, `Medic`, `Rifleman (AT)`.
- Slots are grouped by group. The group's name is its **Callsign** (group attributes), for example `Alpha`, `Bravo`.

### Briefing

Write the briefing in `briefing.sqf` with one line per section:

```sqf
player createDiaryRecord ["Diary", ["Situation", "Text of the section.<br/>A second line."]];
```

Arma shows the last created section first, so write the sections in reverse order (for example Execution, Mission, Situation). `<br/>` and `<marker name='...'>...</marker>` work as in Arma.

## 3. `tss.toml`

A small text file with information the site shows and filters by. Copy this and change the values:

```toml
title = "Operation Example"        # shown on the site, 1 to 80 characters
author = "Callsign"                # who made the mission, 1 to 40 characters
type = "coop"                      # one of: coop, tvt, cotvt, zeus, training
tags = ["night", "stealth"]        # up to 10; lower case letters, digits and "-", each up to 24 characters
min_players = 4                    # the fewest players the mission works with, 1 to 200
max_players = 9                    # the most players, 1 to 200, not less than min_players
summary = "One or two sentences."  # shown in the mission list, 1 to 500 characters
```

- All seven lines are required.
- Spelling matters: a key the site does not know (for example `max_player`) is an error.
- `max_players` should be the number of playable slots in `mission.sqm`.
- `type`: `coop` everyone against the AI; `tvt` team against team; `cotvt` teams against each other and the AI; `zeus` run live by a Zeus; `training` a training scenario.

If `tss.toml` is missing or wrong, or `mission.sqm` cannot be read, the site does not add the mission and opens an issue here explaining what to fix.

## 4. Reporting a problem with a mission

Players report problems on the mission's page on the TSS site; the site opens an issue here for them. You can also use **Issues → New issue → Problem report** on GitHub. Every report gets the label `problem-report` and a `category:` label; add the label `mission:<folder name>` (for example `mission:op_example.Stratis`) so it shows up on the right mission.
