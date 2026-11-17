#include "script_component.hpp"
/*
 * Play warning on speaker.
 *
 * Arguments:
 * 0: Speaker object <OBJECT>
 * 1: Stage <NUMBER>
 *
 * Return Value:
 * None
 *
 * Example:
 * [speaker_0, 6, 41] call tss_opmortarhunt_fnc_playWarning
 *
 * Public: No
 */

params [
    ["_object", objNull, [objNull]], 
    ["_stage", 0, [0]]
];


private _sound = ["WarnIncomming", "WarnYellow"] select _stage;
TRACE_3("Playing Sound", _object, _stage, _sound);
_object say3D [_sound, 500];
