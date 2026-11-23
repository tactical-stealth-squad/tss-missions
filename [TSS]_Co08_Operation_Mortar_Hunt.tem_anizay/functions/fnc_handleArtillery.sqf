#include "script_component.hpp"
/*
 * Handle mortar fire stage and play sound in base.
 *
 * Arguments:
 * 0: Stage <NUMBER>
 *
 * Return Value:
 * None
 *
 * Example:
 * [1] call tss_opmortarhunt_fnc_handleArtillery
 *
 * Public: No
 */

#ifdef DEBUG_MODE_FULL
#define FIRETIME 10
#else
#define FIRETIME 150
#endif


params [["_stage", 0, [0]]];

if !isServer exitWith {};

GVAR(selected_mortars) = [[mortar_0_0, mortar_0_1], [mortar_1_0, mortar_1_1]] select GVAR(selected_target_set);
GVAR(selected_markers) = [["zone_a", "zone_b"], ["zone_b", "zone_a"]] select GVAR(selected_target_set);
GVAR(speakers) = [warning_speaker_0, warning_speaker_1];

TRACE_5("", _stage, FIRETIME, GVAR(selected_mortars), GVAR(selected_markers), GVAR(speakers));

[{
    private _mortar = GVAR(selected_mortars) select _this;
    private _marker = GVAR(selected_markers) select _this;
    TRACE_2("", _mortar, _marker);
    [
        QGVAR(fireArtillery),
        [_mortar, getMarkerPos "mortar_target", 15, "8Rnd_82mm_Mo_shells", 8, 10],
        _mortar
    ] call CBA_fnc_targetEvent;
    [{
        {[QGVAR(playWarning), [_x, 0]] call CBA_fnc_globalEvent;} forEach GVAR(speakers);
    }, "", 6] call CBA_fnc_waitAndExecute;
    [{
        {[QGVAR(playWarning), [_x, 1]] call CBA_fnc_globalEvent;} forEach GVAR(speakers);
        if (_this == 0) then {
            
        };
    }, _this, 6 + 120] call CBA_fnc_waitAndExecute;
    [{
        _this setMarkerAlpha 1.0;
        ["CBA_fnc_notify", [["Trajektorie berechnet"], ["Zielbereich auf Karte"]]] call CBA_fnc_globalEvent;
    }, _marker, 6 + 120 + 15] call CBA_fnc_waitAndExecute;
}, _stage, FIRETIME + random 15] call CBA_fnc_waitAndExecute;
