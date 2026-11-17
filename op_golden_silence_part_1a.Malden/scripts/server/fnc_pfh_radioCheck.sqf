#include "script_components.hpp"

if (GVAR(aware)) then {
  DMSG("radio check pfh stoped");
  [_this select 1] call CBA_fnc_removePerFrameHandler;
};

DMSG("radio check!");
{
  if (!(alive _x) || {_x getVariable ["ACE_isUnconscious", false]}) then {
    DMSG("unresponsive unit detected via radio check!");
    GVAR(aware) = true;
  };
} forEach GVAR(enemies);
DMSG("radio check done!");
