#include "script_components.hpp"

PREP(handleWaypoints);

/* initialize Arrays */
GVAR(vips) = [
    vip_1,
    vip_2,
    vip_3,
    vip_4,
    vip_5
];
GVAR(guards) = [
    guards_0,
    guards_1
];
GVAR(vipsG) = [
    [vip_1,guards_1],
    [vip_2,guards_1],
    [vip_3,guards_1],
    [vip_4,guards_1],
    [vip_5,guards_0]
];
GVAR(towerGuards) = [
    tower_0,
    tower_1,
    tower_2,
    tower_3,
    tower_4,
    tower_5,
    tower_6
];
GVAR(villaGuards) = [
    villa_0,
    villa_1,
    villa_2,
    villa_3,
    villa_4,
    villa_5
];
/* call functions */
[] call FUNC(selectVip);
[GVAR(towerGuards),4,2,1] call FUNC(removeGuards);
//[GVAR(villaGuards),4,2,0] call FUNC(removeGuards); is now in one of the units

// add HVT reactions
[{!isNil QGVAR(vip)},{[GVAR(vip)] call FUNC(HVTReact);}] call CBA_fnc_waitUntilAndExecute;

// call state machine for HVT behaviour
[{!isNil QGVAR(vip)},{ call FUNC(handleWaypoints);}] call CBA_fnc_waitUntilAndExecute;

// Quit mission if vip dies
// [{!isNil QGVAR(vip)}, {
//     [
//         {!(alive GVAR(vip))},
//         {"EveryoneLost" call BIS_fnc_endMissionServer;}
//     ] call CBA_fnc_waitUntilAndExecute;
// }] call CBA_fnc_waitUntilAndExecute;

GVAR(difficulty) = ["Difficulty", 0] call BIS_fnc_getParamValue;

// Spawn helicopters
["HeliPadA"] call FUNC(handleHeliPad);
["HeliPadB"] call FUNC(handleHeliPad);
