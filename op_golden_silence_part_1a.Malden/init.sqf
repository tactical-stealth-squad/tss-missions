#include "script_components.hpp"
diag_log "************************* Co6+ Operation Golden Hour *************************";
setTerrainGrid 3.125;
setViewDistance 20000;

/* preprocess functions */
PREP(set_behaviour);
PREP(prep_lights);
PREP(switch_lights);
PREP(set_safe);
PREP(prep_HVTReact);
PREP(manipulate_generator);
PREP(manipulate_powerline);

/* add events */
[QGVAR(set_behaviour),FUNC(set_behaviour)] call CBA_fnc_addEventHandler;
[QGVAR(switch_lights),FUNC(switch_lights)] call CBA_fnc_addEventHandler;

/* prep HVT react */
// [[vip1, vip2]] call FUNC(prep_HVTReact);

/* prep lights */
call FUNC(prep_lights);

/* set all units to safe */
if (!isMultiplayer || !hasInterface || isServer) then {
    call FUNC(set_safe);
};

/* for mission testing */
if (isServer && hasInterface) then {
    {_x disableAI "All"} forEach [sniper0, sniper1, spotter0, spotter1];
};