#include "script_components.hpp"

params["_unit"];

private _statement = {
    removeHeadgear _target;
    _target addHeadgear "H_RacingHelmet_1_white_F";
    _player removeItem "H_RacingHelmet_1_white_F";
};

private _condition = {
    "H_RacingHelmet_1_white_F" in (items _player)
    && _target getVariable ["ace_captives_isHandcuffed", false]
    && !("H_RacingHelmet_1_white_F" in (headgear _target))
};

private _action = [
    "mission_place_helmet",
    "Helm aufsetzen",
    "",
    _statement,
    _condition
] call ace_interact_menu_fnc_createAction;

[_unit, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;
