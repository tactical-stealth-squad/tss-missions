#include "script_components.hpp"

params["_obj", "_hitSel", "_damage"];
DMSG("Generator damaged");
if (
  (gen1 getVariable [QGVAR(manipulated), false] || !alive gen1) &&
  {gen2 getVariable [QGVAR(manipulated), false] || !alive gen2} &&
  {GVAR(damaged_powerline)}
) then {
  DMSG("Lights off");
  /* switch lights of on server */
  [QGVAR(switch_lights),[false]] call CBA_fnc_globalEvent;
  //[false] call FUNCS(server,switch_lights);
  if (GVAR(blackout_once)) then {
    call FUNCS(server,set_aware);
  };
};
