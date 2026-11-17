#include "..\script_components.hpp"

[QGVAR(pullOut), {
    unassignVehicle GVAR(vip);
    [GVAR(vip)] call CBA_fnc_clearWaypoints;
}] call CBA_fnc_addEventHandler;

private _action = [
    QGVAR(pullOut),
    "VIP herausziehen",
    "", {
        [QGVAR(pullOut), objNull, GVAR(vip)] call CBA_fnc_targetEvent;
    }, {GVAR(vip) in (crew _target) && {(count crew _target) == 1}}
] call ace_interact_menu_fnc_createAction;

[
    "LandVehicle", 0,
    ["ACE_MainActions"],
    _action,
    true
] call ace_interact_menu_fnc_addActionToClass;

[
    "Air", 0,
    ["ACE_MainActions"],
    _action,
    true
] call ace_interact_menu_fnc_addActionToClass;
