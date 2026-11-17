#include "script_components.hpp"
diag_log "************************* Co8+ QRF Bird Down *************************";
setTerrainGrid 3.125;
setViewDistance 5000;

/* preprocess functions */
PREP(addBriefing);
PREP(loadout);
PREP(intro);

/* add briefing */
[] call FUNC(intro);
[] call FUNC(addBriefing);
["tss_post_equip", FUNC(loadout)] call CBA_fnc_addEventhandler;
