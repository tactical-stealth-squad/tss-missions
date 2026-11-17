#include "script_components.hpp"

hintSilent "Generator manipuliert";
TRACE_1("",_this);
/* set varaible */
(_this select 0) setVariable [QGVAR(manipulated), true, true];
if (
    (gen1 getVariable [QGVAR(manipulated), false] || !alive gen1) &&
    {gen2 getVariable [QGVAR(manipulated), false] || !alive gen2} &&
    {GVAR(damaged_powerline)}
) then {
    DMSG("Lights off");
    /* switch lights of on server */
    [QGVAR(switch_lights),[false]] call CBA_fnc_globalEvent;
    if (GVAR(blackout_once)) then {
        [QGVAR(set_aware),[]] call CBA_fnc_serverEvent;
    };
};
