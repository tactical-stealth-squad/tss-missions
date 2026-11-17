#include "..\script_components.hpp"

params ["_units"];

// all
PREP(HVTReactExecuteLocal);
[QGVAR(HVTReactExecuteLocal),FUNC(HVTReactExecuteLocal)] call CBA_fnc_addEventHandler;

// server only
if (isServer) then {
  PREPS(server,HVTReactExecute);
  PREPS(server,HVTReactFiredNear);
  [QGVAR(HVTReactExecute),FUNCS(server,HVTReactExecute)] call CBA_fnc_addEventHandler;
};
// players only
if (hasInterface) then {
  PREPS(player,HVTReactACRE);
  PREPS(player,HVTReactAcrePFH);
};

// add HVT reactions
{
  // server only
  if (isServer) then {
    _x addEventHandler ["FiredNear",FUNCS(server,HVTReactFiredNear)];
  };
  // players only
  if (hasInterface) then {
    [_x] call FUNCS(player,HVTReactACRE);
  };
} forEach _units;
