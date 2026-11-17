#include "script_components.hpp"

if (GVAR(trigger_aware_running)) exitWith {};
GVAR(trigger_aware_running) = true;
GVAR(trigger_guard_spawn) = true;
GVAR(reinforcements_once) = false;
publicVariable QGVAR(trigger_guard_spawn);
DMSG("guards alarmed");

call FUNCS(server,trigger_aware_pfh);
call FUNCS(server,set_aware);
[FUNCS(server,pfh_fence_cut),5,[]] call CBA_fnc_addPerFrameHandler;
DMSG("Cut fence PFH started");
