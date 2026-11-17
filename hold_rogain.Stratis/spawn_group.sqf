/*
	Author:
		[=TSS=] zinki (inspiration by Hawk 2010) heavily modified by Gearfield

	Description:
		Spawns a group of predefined type and side with an attack waypoint to provided location.

	Parameter(s):
		0: Spawn Position (Object, i. e. GameLogic or Invisble H)
		1: Location of the waypoint

	Execute:
			
*/
private _GEA_CSAT_grp = ["O_Soldier_F", "O_Soldier_lite_F", "O_Soldier_lite_F", "O_Soldier_AR_F", "O_Soldier_GL_F", "O_Soldier_GL_F", "O_Soldier_LAT_F", "O_medic_F"];
private _side = east;
Params ["_pos_spawn", "_pos_wp"];

// spawns group on the edge of the map (performance friendly)
private _grp = [[0,0,0], _side, _GEA_CSAT_grp] call BIS_fnc_spawnGroup;

// moves group to desired starting location
[_grp, _pos_spawn] call CBA_fnc_setPos;
_grp deleteGroupWhenEmpty true;

// Attack given position
private _wp = _grp addWaypoint [_pos_wp, -1];
_wp setWaypointType "SAD";