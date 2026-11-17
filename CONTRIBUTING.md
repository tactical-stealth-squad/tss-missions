# Adding a mission

This guide is for mission makers. You need the Arma 3 Eden editor and a GitHub account. In short: **upload your mission as it is.** The site reads what it needs from the mission files. [`op_example.Stratis`](op_example.Stratis) is a small example.

## 0. Getting your files into the repository

1. Ask a TSS admin for **write access** to this repository, and tell them your GitHub user name. You only need to do this once.
2. **New mission:** on the repository's main page click **Add file → Upload files**, drag your whole mission folder from Windows Explorer onto the page, and click **Commit changes**.
3. **Updating a mission:** open your mission's folder on GitHub, click **Add file → Upload files**, drag in the changed files, and click **Commit changes**. Files with the same name are replaced.

## 1. Upload the mission as it is

Each mission is one folder at the top of this repository, exactly as Eden saves it. Do not pack it into a `.pbo`. Eden keeps missions in:

- `Documents\Arma 3\missions\` for your main profile, or
- `Documents\Arma 3 - Other Profiles\<profile>\missions\` for any other profile.

Eden names the folder `<name>.<map>`, for example `[TSS]_Co08_Snakehead_2v04.Stratis`. The part after the last `.` is the map, and Arma needs it. You can name the rest as you like; the site does not read anything from it. Eden writes spaces in folder names as `%20`, so prefer `_`.

The folder must contain:

| File | Why |
|---|---|
| `mission.sqm` | The Eden save. The site reads the slots from it. Save it **unbinarized** (see below). |
| `description.ext` | Mission settings. The site reads the title, author and summary from it. |

Everything else (scripts, images, `briefing.sqf`, `tss.toml`) is optional.

**Saving `mission.sqm` unbinarized:** in Eden open **Attributes → General**, and under **Misc** untick **Binarize the Scenario File**. Save again. To check, open `mission.sqm` in a text editor: the first line must be `version=54;` (or another number). If it starts with `raP` and looks like garbage, it is still binarized.

## 2. What the site reads, and from where

| Shown on the site | Comes from |
|---|---|
| Title | `description.ext`: `onLoadName = "...";` (required) |
| Author | `description.ext`: `author = "...";`, otherwise the author set in Eden |
| Summary | `description.ext`: `overviewText = "...";` (optional) |
| Map | the folder name after the last `.` |
| Slots | every unit in `mission.sqm` marked **Playable** (or **Player**); headless clients are not slots |
| Slot group | the part of the unit's **Role Description** after `@`; otherwise the group's **Callsign** |
| Slot name | the part of the Role Description before `@`; otherwise the unit type, for example "Rifleman" |
| Briefing | see section 3 |

**Tip:** write Role Descriptions as `Role@Group`, for example `Squad Leader@Alpha` or `1: Medic@ALEX 1-1`. Arma's lobby groups the slots by the part after `@`, and the site shows them the same way.

## 3. Briefings

The site shows only the briefing that players have **when the mission starts**. Diary entries added during the mission (found intel, interrogation results, new tasks) are left out on purpose, because they would spoil the mission.

The site finds a briefing when:

- it is in a script whose file name contains `briefing`, in any folder (for example `briefing.sqf` or `scripts\briefing.sqf`), and
- `init.sqf` or `initPlayerLocal.sqf` starts that script, for example with `execVM "scripts\briefing.sqf";`, and
- each section is a plain line like this:

```sqf
player createDiaryRecord ["Diary", ["Situation", "Text of the section.<br/>A second line."]];
```

Lines inside `spawn`, `if`, `addAction` or event handler blocks, or after a `sleep` or `waitUntil`, are treated as "during the mission" and are not shown.

Arma shows the last created section first, so write the sections in reverse order (for example Execution, Mission, Situation). `<br/>` and `<marker name='...'>...</marker>` work as in Arma.

If the site cannot read a briefing, the mission page says so and why. In that case, or if your briefing is built by a script, put the briefing text into `tss.toml` (section 4).

## 4. `tss.toml` (optional)

A small text file next to `mission.sqm` for things the mission files cannot say. Every line is optional:

```toml
tags = ["night", "stealth"]     # up to 10; lower case letters, digits and "-", each up to 24 characters, no tag twice
recommended_min_players = 4     # the fewest players the mission is fun with, 1 to 200

# Only if the site cannot read your briefing: these sections replace it, shown in this order.
[[briefing]]
title = "Situation"
text = "Text of the section.<br/>A second line."

[[briefing]]
title = "Mission"
text = "..."
```

Spelling matters: a key the site does not know (for example `recommended_players`) is an error, and the site opens an issue here explaining what to fix. The same happens if `mission.sqm` or `description.ext` is missing or cannot be read.

## 5. Reporting a problem with a mission

Players report problems on the mission's page on the TSS site; the site opens an issue here for them. You can also use **Issues → New issue → Problem report** on GitHub. Reports from the site get their labels automatically. A report filed on GitHub only gets `problem-report`; a mission maker with write access then adds the matching `category:` label (`category:bug`, `category:balance`, `category:briefing` or `category:other`) and the label `mission:<folder name>` (for example `mission:op_example.Stratis`), so it shows up on the right mission.
