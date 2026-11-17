#include "script_components.hpp"

if (!isServer) exitWith {};
// gather enemies present at mission start
GVAR(start_enemies) = [];
{
  if ((side _x) == east) then {
    GVAR(start_enemies) pushBack _x;
  }
} forEach allUnits;

// run radio check every 1200s aka 20min
[FUNCS(server,pfh_radioCheck), 1200] call CBA_fnc_addPerFrameHandler;

DMSG("prep radio check done");
