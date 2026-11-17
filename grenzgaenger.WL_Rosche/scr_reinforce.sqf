while { count (_pos nearEntities 50) > 0 } do
{
	_pos = selectRandom [lgc_startPos_1, lgc_startPos_2, lgc_startPos_3, lgc_startPos_4, lgc_startPos_5, lgc_startPos_6, lgc_startPos_7, lgc_startPos_8, lgc_startPos_9, lgc_startPos_10];
	
};


Helispawn dann


/*
  SHK_paraTroops
  ==============
  Version 0.1
  Author: Shuko (shuko@quakenet, miika@miikajarvinen.fi)
  modified by Gearfield for attacking instead of helping
  ======================================================
  Syntax:
    nul = targetPos execvm "SHK_paraTroops.sqf";
	
	Name the player or an object: targetPos
    
*/
private ["_side", "_type", "_pos_spawn", "_vehArray","_grpVeh","_grp","_chute","_wp"];

//Params ["_pos_spawn", "_pos_wp"];
_side = east;
_type = "CUP_O_Mi24_V_Dynamic_RU";
_pos_spawn = "mrk_spawn_heli";
_pos_attac = "mrk_UK" call CBA_fnc_getPos ;
_custom_grp = GEA_RUS_grp;

// Classname of transport type and faction of the transport
_vehArray = [getMarkerPos [_pos_spawn, true], (markerDir _pos_spawn), _type, _side] call BIS_fnc_spawnVehicle;
_vehArray params ["_veh", "_crew", "_grpVeh"];
_grpVeh = _veh call CBA_fnc_getGroup;
_grpVeh deleteGroupWhenEmpty true;
_grpVeh setBehaviour "COMBAT";
_grpVeh setCombatMode "RED";

// Configurations
_veh flyInHeight 100;
[ _veh, ["RussiaGrey",1], true] call BIS_fnc_initVehicle;

//_grpVeh move [3098.19,6591.38,0];

// Move waypoint for helicopter
_wp = _grpVeh addWaypoint [[2912.13,7335.83,0], 0];
_wp setWaypointType "MOVE";

// Search and Destroy waypoint for helicopter
_wp = _grpVeh addWaypoint [_pos_attac, 0];
_wp setWaypointType "SAD";

// Faction and group of paratroopers that spawn
_grp = [[0,0,0], _side, _custom_grp] call BIS_fnc_spawnGroup;
{	_x moveInCargo _veh;
	_x assignAsCargoIndex [_veh, _veh getCargoIndex _x]; //otherwise unit will not get out
} forEach (units _grp);
_grp deleteGroupWhenEmpty true;
_grp setBehaviour "AWARE";
_grp setCombatMode "YELLOW";

// Search and Destroy waypoint for infantry
_wp = _grp addWaypoint [_pos_attac, 0];
_wp setWaypointType "SAD";

//sleep 75;

// Wait for drop
waitUntil {sleep 1; _pos_attac distance2D _veh < 600};
// Initial Drop
{
	unAssignVehicle _x; 
	_x allowDamage false; 
	moveOut _x; 
	sleep 0.35; 
	_chute = createVehicle ["NonSteerable_Parachute_F", (getPos _x), [], 0, "NONE"];
	_chute setPos (getPos _x);
	_x moveinDriver _chute;
	_x allowDamage true;
	sleep 0.5;
} forEach units _grp;

nil