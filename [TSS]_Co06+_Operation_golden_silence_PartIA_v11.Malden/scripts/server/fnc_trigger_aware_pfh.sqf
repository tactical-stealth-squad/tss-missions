#include "script_components.hpp"

private _waitTime = if (
  GVAR(damaged_powerline) &&
  !GVAR(reinforcements_once)
) then {600} else {300};

[{
  [{{side _x == east} count allUnits < 140},{
    // spawn reinforcements units if there are less than 140 of them
    DMSG("reinforcements spawned");
    GVAR(trigger_reinforcement_spawn) = true;
    GVAR(reinforcements_once) = true;
    [{
      GVAR(trigger_reinforcement_spawn) = false;
      [{
        [] call FUNCS(server,trigger_aware_pfh);
      }, [], 5] call CBA_fnc_waitAndExecute
    }, [], 5] call CBA_fnc_waitAndExecute;
  }] call CBA_fnc_waitUntilAndExecute;
}, [], _waitTime] call CBA_fnc_waitAndExecute;
