#include "script_components.hpp"

if (!isServer) exitWith {};

GVAR(enemy_groups) = [];
GVAR(start_groups) = [];
GVAR(enemies) = [];
GVAR(aware) = false;

{
  if (side _x == east) then {
    GVAR(start_groups) pushBack _x;
  }
} forEach allGroups;

// run aware check every 5 seconds
[
  {
    [FUNCS(server,pfh_update_enemies), 5] call CBA_fnc_addPerFrameHandler;
    [FUNCS(server,pfh_aware), 1] call CBA_fnc_addPerFrameHandler;
  },[],10
] call CBA_fnc_waitAndExecute;
DMSG("prep aware done");
