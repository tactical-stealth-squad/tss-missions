#include "script_components.hpp"

if (!GVAR(damaged_powerline)) then {
    /* some messages */
    DMSG("Leitung zerstört");
    /* set variable */
    GVAR(damaged_powerline) = true;
    publicVariable QGVAR(damaged_powerline);
    /* switch lights */
    [QGVAR(switch_lights),[false]] call CBA_fnc_globalEvent;
    [QGVAR(switch_lights_pfh),[]] call CBA_fnc_serverEvent;
};