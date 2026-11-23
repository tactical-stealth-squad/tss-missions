/*
  SHK_paraTroops
  ==============
  Version 0.1
  Author: Shuko (shuko@quakenet, miika@miikajarvinen.fi)
  modified by Gearfield
  ======================================================
  Syntax:
    nul = targetPos execvm "SHK_paraTroops.sqf";
	
	Name the player or an object: targetPos
    
*/

private _side = east;
private _type = "CUP_O_Mi8AMT_RU";
private _pos_spawn = "mrk_flight_2";
private _pos_drop = grp_fernspaeh call CBA_fnc_getPos;
private _pos_attack = grp_fernspaeh call CBA_fnc_getPos;
private _custom_grp = ["CUP_O_RU_Soldier_SL", "CUP_O_RU_Soldier_MG", "CUP_O_RU_Soldier_AT", "CUP_O_RU_Soldier_LAT", "CUP_O_RU_Soldier_GL", "CUP_O_RU_Soldier_Marksman", "CUP_O_RU_Soldier_MG","CUP_O_RU_Soldier_AT", "CUP_O_RU_Soldier_AR", "CUP_O_RU_Soldier_LAT", "CUP_O_RU_Soldier_GL", "CUP_O_RU_Soldier", "CUP_O_RU_Soldier", "CUP_O_RU_Soldier"];

private _dir = markerDir _pos_spawn;
_pos_spawn = getMarkerPos [_pos_spawn, true];

// Classname of transport type and faction of the transport
_vehArray = [_pos_spawn, _dir, _type, _side] call BIS_fnc_spawnVehicle;
_vehArray params ["_veh", "_crew", "_grpVeh"];
// _grpVeh = _veh call CBA_fnc_getGroup;
_grpVeh deleteGroupWhenEmpty true;
_grpVeh setBehaviour "COMBAT";
_grpVeh setCombatMode "RED";

// Configurations
_veh flyInHeight 100;
//[ _veh, ["RussiaGrey",1], true] call BIS_fnc_initVehicle;

//_grpVeh move [3098.19,6591.38,0];

// Move waypoint for helicopter
private _wp = _grpVeh addWaypoint [_pos_drop, 0];
_wp setWaypointType "MOVE";
//_wp setWaypointSpeed "FULL";

// Return waypoint for helicopter
_wp = _grpVeh addWaypoint [_pos_spawn, 0];
_wp setWaypointType "MOVE";
//_wp setWaypointSpeed "FULL";

// Faction and group of paratroopers that spawn
private _grp = [[0,0,0], _side, _custom_grp] call BIS_fnc_spawnGroup;
{	_x moveInCargo _veh;
	_x assignAsCargoIndex [_veh, _veh getCargoIndex _x]; //otherwise unit will not get out
} forEach (units _grp);
_grp deleteGroupWhenEmpty true;
_grp setBehaviour "AWARE";
_grp setCombatMode "YELLOW";

// Search and Destroy waypoint for infantry
//_wp = _grp addWaypoint [_pos_attack, 0];
//_wp setWaypointType "SAD";

//sleep 75;

// Wait for drop
waitUntil {sleep 1; _pos_attack distance2D _veh < 600};
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

// Hunt Task for infantry
[_grp, 500] spawn lambs_wp_fnc_taskHunt;

// Reached target position
waitUntil {sleep 1; _veh distance2D _pos_spawn < 150};

// Delete last WP
[_grpVeh] call CBA_fnc_clearWaypoints;

// Delete heli and crew
deletevehicle _veh; {deleteVehicle _x} forEach units (_grpVeh);

nil