#include "script_component.hpp"
/*
 * Handle market behaviour, mainly equip random civs with guns.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * None
 *
 * Example:
 * [] call tss_opmortarhunt_fnc_searchClue
 *
 * Public: No
 */

params[["_object", objNull, [objNull]]];

TRACE_1("", _object);

private _statement = {
    ["Suche nach Hinweisen", 6, {true}, {
        private _message = if (random 1 < 0.5) then {
            GVAR(clues_found) = true;
            publicVariable QGVAR(clues_found);
            "marker_market" setMarkerAlpha 1.0;
            [QGVAR(addClueEntry), []] call CBA_fnc_globalEvent;
            "Hinweise gefunden.";
        } else {
            "Keine Hinweise gefunden.";
        };
        private _target = (_this select 0);
        TRACE_2("", _target, _message); 
        [_message] call CBA_fnc_notify;
        _target setVariable [QGVAR(clue_searched), true, true];
    }, {}, _target] call CBA_fnc_progressBar
};

private _condition = {
    TRACE_1("", _target);
    !(missionNamespace getVariable [QGVAR(clues_found), false])
    && !(_target getVariable [QGVAR(clue_searched), false])
};

private _action = [
    QGVAR(search_clue),
    "Nach Hinweisen suchen",
    "",
    _statement,
    _condition,
    {},
    [],
    [0,0,0],
    2,
    [false, false, false, false, false]
] call ace_interact_menu_fnc_createAction;

[_object, 0, [], _action] call ace_interact_menu_fnc_addActionToObject;
