#include "script_components.hpp"

private _executeManipulate = {
    [
        15, _target, FUNC(manipulate_generator)
        , {}, "Manipuliere Generator"
    ] call ace_common_fnc_progressBar;
};

private _conditionManipulate = {
    !(_target getVariable [QGVAR(manipulated), false]);
};

private _actionManipulate = [
    "Manipuliere Generator",
    "Manipuliere Generator",
    "",
    _executeManipulate,
    _conditionManipulate
] call ace_interact_menu_fnc_createAction;

{
    [_x, 0, [], _actionManipulate] call ace_interact_menu_fnc_addActionToObject;
} forEach [gen1, gen2];
