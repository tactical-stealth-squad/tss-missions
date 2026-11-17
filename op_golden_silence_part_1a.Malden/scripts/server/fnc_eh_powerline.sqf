#include "script_components.hpp"

params["_obj", "_hitSel", "_damage"];
TRACE_1("",_this);

DMSG("Powerline damaged");
if (_damage >= 0.9) then {
    if (!GVAR(damaged_powerline)) then {
        /* some messages */
        hintSilent "Leitung manipuliert";
        DMSG("Lights off");
        /* set variable */
        GVAR(damaged_powerline) = true;
        publicVariable QGVAR(damaged_powerline);
        /* switch lights */
        [QGVAR(switch_lights),[false]] call CBA_fnc_globalEvent;
        call FUNCS(server,switch_lights_pfh);
    };
};
