#include "script_components.hpp"
diag_log "************************* Co6+ Operation Golden Hour *************************";

/* set viewdistance */
setViewDistance 1200;

/* set fog */
0 setfog [0.4,0.05,70];

/* set sams to east side */
//[sam1, sam2] joinSilent createGroup east;

/* some variables*/
GVAR(servers) = [
  server_0, server_1, server_2,
  server_3, server_4, server_5,
  server_6, server_7, server_8
];

GVAR(dummies) = [];

GVAR(trigger_guard_spawn) = false;
GVAR(trigger_reinforcement_spawn) = false;
GVAR(trigger_aware_running) = false;

publicVariable QGVAR(trigger_guard_spawn);
publicVariable QGVAR(trigger_reinforcement_spawn);
publicVariable QGVAR(trigger_aware_running);

GVAR(server_hdda) = floor(random 3) + 1;
GVAR(server_hddb) = floor(random 3) + 4;
GVAR(server_hddc) = floor(random 3) + 7;

publicVariable QGVAR(server_hdda);
publicVariable QGVAR(server_hddb);
publicVariable QGVAR(server_hddc);

server_terminal setVariable [QGVAR(searched), false, true];
{
  _x setVariable [QGVAR(hdd_removed), false, true];
} forEach GVAR(servers);

/* preprocess functions */
PREPS(server,eh_generator);
PREPS(server,eh_powerline);
PREPS(server,pfh_aware);
PREPS(server,pfh_fence_cut);
PREPS(server,pfh_fence_detect);
PREPS(server,pfh_fences_damaged);
PREPS(server,pfh_radioCheck);
PREPS(server,pfh_update_enemies);
PREPS(server,prep_generators);
PREPS(server,prep_aware);
PREPS(server,prep_fences);
//PREPS(server,prep_lights);
PREPS(server,prep_radioCheck);
PREPS(server,prep_powerlines);
PREPS(server,set_aware);
PREPS(server,sim);
//PREPS(server,switch_lights);
PREPS(server,switch_lights_pfh);
PREPS(server,trigger_aware);
PREPS(server,trigger_aware_pfh);


/* add events */
//[QGVAR(switch_lights),FUNCS(server,switch_lights)] call CBA_fnc_addEventHandler;
[QGVAR(switch_lights_pfh),FUNCS(server,switch_lights_pfh)] call CBA_fnc_addEventHandler;
[QGVAR(set_aware),FUNCS(server,set_aware)] call CBA_fnc_addEventHandler;

/* call functions */
[
  {
    DMSG("Run preps");
    call FUNCS(server,prep_generators);
    call FUNCS(server,prep_aware);
    call FUNCS(server,prep_fences);
    //call FUNCS(server,prep_lights);
    call FUNCS(server,prep_powerlines);
    call FUNCS(server,prep_radioCheck);
  }, [], 10
] call CBA_fnc_waitAndExecute;
