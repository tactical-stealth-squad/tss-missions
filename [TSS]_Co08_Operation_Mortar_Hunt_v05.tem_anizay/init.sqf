#include "script_components.hpp"
diag_log "************************* Co8+ Operation Mortar Hunt *************************";
setTerrainGrid 3.125;
setViewDistance 5000;

/* preprocess functions */
PREP(addBriefing);
PREP(addClueEntry);
PREP(equipGun);
PREP(fireArtillery);
PREP(handleMarket);
PREP(playPrayerSpeaker);
PREP(playWarning);
PREP(searchClue);

/* initialize events */
[QGVAR(addClueEntry), FUNC(addClueEntry)] call CBA_fnc_addEventHandler;
[QGVAR(equipGun), FUNC(equipGun)] call CBA_fnc_addEventHandler;
[QGVAR(fireArtillery), FUNC(fireArtillery)] call CBA_fnc_addEventHandler;
[QGVAR(playWarning), FUNC(playWarning)] call CBA_fnc_addEventHandler;
["CBA_fnc_notify", CBA_fnc_notify] call CBA_fnc_addEventHandler;

/* add prayers */
{
    [_x, 6, 30] call FUNC(playPrayerSpeaker);
} forEach [
    speaker_civ_0, speaker_civ_1, speaker_civ_2, speaker_civ_3, speaker_civ_4,
    speaker_civ_5, speaker_civ_6, speaker_civ_7, speaker_civ_8, speaker_civ_9,
    speaker_civ_10, speaker_civ_11
];

/* add ace interaction */
{
    [_x] call FUNC(searchClue);
} forEach [
    clue_0, clue_1, clue_2, clue_3, clue_4, clue_5, clue_6, clue_7, clue_8, clue_9, clue_10,
    clue_11, clue_12, clue_13
];

/* add briefing */
[] call FUNC(addBriefing);

// [true] call tss_mods_units_fnc_gatherEquip;
// [ACE_player] call tss_mods_units_fnc_applyLoadout;
