#include "script_components.hpp"

if (!isServer) exitWith {};
GVAR(damaged_fences) = [];
GVAR(fence_pfh_running) = false;
GVAR(fence_detect_range) = 20;
GVAR(cut_fences) = [fence_0,fence_1,fence_2,fence_3,fence_4,fence_5];

// find wall and fences
GVAR(fences) = nearestTerrainObjects [[7100, 10100, 100], ["FENCE"], 680];
GVAR(fences) append nearestTerrainObjects [[7100, 10100, 100], ["WALL"], 680];
GVAR(fences) append nearestObjects [[7100, 10100, 100], ["Land_Mil_WiredFence_F"], 680];
GVAR(fences) append nearestObjects [[7100, 10100, 100], ["Land_ConcreteWall_01_l_8m_F"], 680];

// add eventhandler
/*{
  _x addEventhandler ["Killed", {_this call FUNC(eh_fence)}];
} forEach GVAR(fences);
*/
[FUNCS(server,pfh_fences_damaged), 10] call CBA_fnc_addPerFrameHandler;

DMSG("prep fence done");
