/*
	Author:
		[=TSS=] zinki (inspiration by Hawk 2010) heavily modified by Gearfield

	Description:
		Spawns the given vehicle with an attack waypoint to provided location.

	Parameter(s):
		0: vehicle type
		0: Spawn Position (Object, i. e. GameLogic or Invisble H)
		1: Location of the waypoint

	Execute:
			
*/

Params ["_type","_pos_spawn", "_pos_wp"];
private _side = east;
// private _type = "O_LSV_02_armed_F";
// private _pos_spawn = "spawn_veh_0";
// private _pos_wp = [5005.33,5912.72,0];

// Spawns the vehicle on the desiered location
private _vehArray = [getMarkerPos _pos_spawn, (markerDir _pos_spawn), _type, _side] call BIS_fnc_spawnVehicle;
_vehArray params ["_veh", "_crew", "_grp"];

// deleteGroupWhenEmpty and decorations
private _grpVeh = _veh call CBA_fnc_getGroup;
_grpVeh deleteGroupWhenEmpty true;

switch (typeOf (_veh)) do {
	case "I_APC_Wheeled_03_cannon_F": {
		[_veh,["Guerilla_02",1],["showCamonetHull",1,"showBags",1,"showBags2",1,"showTools",1,"showSLATHull",0]] call BIS_fnc_initVehicle;
	};

	case "O_APC_Tracked_02_cannon_F": {
		[_veh,["Hex",1],["showTracks",1,"showCamonetHull",1,"showBags",1,"showSLATHull",0]] call BIS_fnc_initVehicle;
	};

	case "O_LSV_02_armed_F": {
		[_veh, ["Black",1],["Unarmed_Doors_Hide",1]] call BIS_fnc_initVehicle;
	};

	case "O_LSV_02_AT_F": {
		[_veh, ["Black",1],["Unarmed_Doors_Hide",1]] call BIS_fnc_initVehicle;
	};

	case "O_Plane_Fighter_02_F": {
		_veh flyInHeight 500;
	};

	case "O_Plane_CAS_02_dynamicLoadout_F": {
		_veh flyInHeight 500;
	};

	case "O_UAV_02_dynamicLoadout_F": {
		_veh flyInHeight 500;
	};
};

// Attack given position
private _wp = _grpVeh addWaypoint [_pos_wp, -1];
_wp setWaypointType "MOVE";