#include "script_components.hpp"

private _executeManipulate = {
    [
        30,
        [],
        FUNC(manipulate_powerline),
        {}, "Manipuliere Leitung"
    ] call ace_common_fnc_progressBar;
};

private _conditionManipulate = {
    !GVAR(damaged_powerline);
};

private _actionManipulate = [
    QGVAR(manipulate),
    "Manipuliere Leitung",
    "",
    _executeManipulate,
    _conditionManipulate,
    {},
    [],
    [0,0,0],
    2,
    [false, false, false, false, false]
] call ace_interact_menu_fnc_createAction;

[
    {
        !isNil(QGVAR(power_line_dummies))
    },{
        {
            [_x, 0, [], _this] call ace_interact_menu_fnc_addActionToObject;
        } forEach GVAR(power_line_dummies);
    },
    _actionManipulate
] call CBA_fnc_waitUntilAndExecute;
