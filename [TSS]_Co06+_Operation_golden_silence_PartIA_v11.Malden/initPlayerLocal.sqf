#include "script_components.hpp"
diag_log "************************* Co6+ Operation Golden Hour *************************";

/* hide markers*/
"gaia_ao" setMarkerAlpha 0;
"gaia_pat" setMarkerAlpha 0;
"gaia_fs" setMarkerAlpha 0;

/* some gvars*/
GVAR(servers) = [
  server_0, server_1, server_2,
  server_3, server_4, server_5,
  server_6, server_7, server_8
];

/* preprocess functions */
PREPS(player,add_action_server);
PREPS(player,add_action_generator);
PREPS(player,add_action_powerline);
PREPS(player,briefing);

/* call functions */
call FUNCS(player,briefing);
call FUNCS(player,add_action_server);
call FUNCS(player,add_action_generator);
call FUNCS(player,add_action_powerline);
