#include "script_components.hpp"

trigger_phase_1 = false;
// trigger_phase_2 = false;
// trigger_phase_3 = false;
heli_is_landing = false;
heli_repaired = false;
groups_fob_obeh = [];

publicVariable "trigger_phase_1";
// publicVariable "trigger_phase_2";
// publicVariable "trigger_phase_3";
publicVariable "heli_is_landing";
publicVariable "heli_repaired";
publicVariable "groups_fob_obeh";

v1 addMagazineCargoGlobal ["ace_csw_100Rnd_127x99_mag_red", 8];
// v2 addMagazineCargoGlobal ["ace_csw_100Rnd_127x99_mag_red", 4];

PREP(hideBlockades);
PREP(revealBlockades);

/* Register northern group */
[
    "add_group_fob_obeh",
    {
        groups_fob_obeh = groups_fob_obeh + [_this];
        publicVariable "groups_fob_obeh";    
    }
] call CBA_fnc_addEventHandler;

/* cache blockades */
[] call FUNC(hideBlockades);


[
    {
        private _daytime = daytime;
        private _hours_ = floor _daytime;
        private _minutes_ = floor ((_daytime - _hours_) * 60);
        private _result = _hours_ == 4 && {_minutes_ >= 45};
        _result;
    },
    {
        [civs] call grad_civs_common_fnc_addPopulationZone
    }
] call CBA_fnc_waitUntilAndExecute;


/* Move units from the north to pick up position */
// [
//     {trigger_phase_2},
//     {
//         {
//             for "_i" from count waypoints _x - 1 to 0 step -1 do {
//                 deleteWaypoint [_x, _i];
//             };
//             [_x, 1000, Null, Null, [1863, 4230]] spawn lambs_wp_fnc_taskRush;
//         } forEach groups_fob_obeh;
//     }
// ] call CBA_fnc_waitUntilAndExecute
