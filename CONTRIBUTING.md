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

Eden names the folder `<name>.<map>`, for example `[TSS]_Co08_Snakehead.Stratis`. The part after the last `.` is the map, and Arma needs it. You can name the rest as you like, but the name is how the site knows the mission. Eden writes spaces in folder names as `%20`, so prefer `_`.

**Do not put a version in the folder name.** The folder name stays the same across releases: keep saving the mission under the same name in Eden, and upload each new version into the existing folder (see section 0). A mission is known by its folder name, so a renamed folder is a new mission. The site rejects a folder with a version in its name (for example `_2v04` or `_v1_00`) and opens an issue here. Only a lower-case `v` counts as a version, so names such as `_V22` (the aircraft) are fine. The version of a mission is the commit. If you want a visible label, add `version = "..."` to `tss.toml` (section 4), and raise it with each release. Whoever packs a PBO adds the version to the file name at packing time.

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
| Slot group | the part of the unit's **Role Description** after `@`; otherwise the group's **Callsign**; otherwise a name like "BLUFOR 1" |
| Slot name | the part of the Role Description before `@`; otherwise the unit type, for example "Rifleman" |
| Briefing | see section 3 |

**Tip:** write Role Descriptions as `Role@Group`, for example `Squad Leader@Alpha` or `1: Medic@ALEX 1-1`. Arma's lobby groups the slots by the part after `@`, and the site shows them the same way.

## 3. Briefings

The site shows only the briefing that players have **when the mission starts**. Diary entries added during the mission (found intel, interrogation results, new tasks) are left out on purpose, because they would spoil the mission.

The site finds a briefing when:

- it is in a script whose file name contains `briefing`, in any folder (for example `briefing.sqf` or `scripts\briefing.sqf`), and
- `init.sqf` or `initPlayerLocal.sqf` starts that script right away, either on its own line or inside `if (hasInterface) then { … }`, for example:

```sqf
if (hasInterface) then {
    call compile preprocessFileLineNumbers "scripts\briefing.sqf";
};
```

  `execVM "briefing.sqf";` and `[] spawn compile preprocessFileLineNumbers "briefing.sqf";` work too. A start that comes after a `sleep` or `waitUntil`, or sits inside a `spawn { … }` block, a trigger or an event handler, counts as "during the mission".
- in that script, each section is one `createDiaryRecord` with the text written out in quotes (it may span several lines):

```sqf
player createDiaryRecord ["Diary", ["Situation", "Text of the section.<br/>A second line."]];
```

Only lines at the top level of the script count. Lines inside `spawn`, `if`, `addAction`, event handlers or any other `{ … }` block, lines after a `sleep` or `waitUntil`, and text built with `format` or `localize` are treated as "during the mission" or unreadable and are not shown.

Arma shows the last created section first, so write the sections in reverse order (for example Execution, Mission, Situation). `<br/>` and `<marker name='...'>...</marker>` work as in Arma.

If the site cannot read a briefing, the mission page says so and why. In that case, or if your briefing is built by a script, put the briefing text into `tss.toml` (section 4).

## 4. `tss.toml` (optional)

A small text file next to `mission.sqm` for things the mission files cannot say. Every line is optional:

```toml
tags = ["night", "stealth"]     # up to 10; lower case letters, digits and "-", each up to 24 characters, no tag twice
recommended_min_players = 4     # the fewest players the mission is fun with, 1 to 200
version = "1.2"                 # a label for the release, 1 to 24 characters; raise it with each release
title = "Monument"              # the name the site shows instead of onLoadName, 1 to 120 characters

# Only if the site cannot read your briefing: these sections replace it, shown in this order.
[[briefing]]
title = "Situation"
text = "Text of the section.<br/>A second line."

[[briefing]]
title = "Mission"
text = "..."
```

`title` is for missions whose `onLoadName` is not a name but a task text, for example "Zerstören Sie die AA Stellungen und finden Sie den UN-General" for Monument. The site shows the `title` exactly as you write it (spaces at the start and end are dropped), so write it the way it should read, without `[TSS]` or `Co08`. Without a `title` the site shows the `onLoadName` as before. The Info tab of the mission still shows the `onLoadName` as the full title.

Spelling matters: a key the site does not know (for example `recommended_players`) is an error, and the site opens an issue here explaining what to fix. The same happens if `mission.sqm` or `description.ext` is missing or cannot be read.

## 5. Reporting a problem with a mission

Players report problems on the mission's page on the TSS site; the site opens an issue here for them. Reports from the site say "Reported by: TSS member": the site never sends the reporter's name or email to GitHub (the site shows who reported it to logged-in members). They get the labels `problem-report`, `category:<bug|balance|briefing|other>` and, when the folder name fits GitHub's 50-character label limit, `mission:<folder name>`. A hidden `<!-- tss-report id=… -->` line at the end of the body links the issue to the site's report; leave it in place.

You can also use **Issues → New issue → Problem report** on GitHub. Such a report only gets `problem-report`; the site reads the mission and category from the form fields. If the Mission field is wrong, a mission maker with write access can add the label `mission:<folder name>` (for example `mission:op_example.Stratis`) and a `category:` label (`category:bug`, `category:balance`, `category:briefing` or `category:other`).

The mission page on the site lists a mission's open reports. Close an issue as *completed* or *not planned* when it is handled; deleting it, transferring it or removing the `problem-report` label also takes it off the site.
