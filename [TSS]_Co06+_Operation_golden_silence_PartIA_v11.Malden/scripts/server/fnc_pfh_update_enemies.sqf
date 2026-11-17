#include "script_components.hpp"

/*
if (GVAR(aware)) then {
  [_this select 1] call CBA_fnc_removePerFrameHandler;
  DMSG("update enemies pfh stoped");
};
*/

GVAR(enemy_groups) = [];
{
  if (side _x == EAST) then {
    GVAR(enemy_groups) pushBack _x;
  };
} forEach allGroups;

GVAR(enemies) = [];
{
  if (side _x == EAST) then {
    GVAR(enemies) pushBack _x;
  };
} forEach allUnits;
