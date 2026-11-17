#include "..\script_components.hpp"

params ["_unit"];

// all
[QGVAR(HVTReactExecuteLocal), FUNC(HVTReactExecuteLocal)] call CBA_fnc_addEventHandler;
// server only
if (isServer) then {
    [QGVAR(HVTReactExecute), FUNC(HVTReactExecute)] call CBA_fnc_addEventHandler;
    _unit addEventHandler ["FiredNear", FUNC(HVTReactFiredNear)];
};
// players only
if (hasInterface) then {
    [_unit] call FUNC(HVTReactACRE);
};
