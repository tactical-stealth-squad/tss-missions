#include "script_components.hpp"

// switch on light after 90s if generators are not disabled

DMSG("Lights PFH started");
[
  {
    if (
      (alive gen1 && !(gen1 getVariable [QGVAR(manipulated), false])) ||
      {alive gen2 && !(gen2 getVariable [QGVAR(manipulated), false])}
    ) then {
      [QGVAR(switch_lights),[true]] call CBA_fnc_globalEvent;
      GVAR(blackout_once) = true;
      publicVariable QGVAR(blackout_once);
    } else {
      call FUNCS(server,set_aware);
    }
  }, [], 180
] call CBA_fnc_waitAndExecute;
