/* ----------------------------------------------------------------------------
    Inspired by Hawk 2010 (www.germany-fun.net)
---------------------------------------------------------------------------- */
Params ["_type", "_pos_start", "_pos_end", "_dir"];

// Creates aircraft with crew at starting position
// private _grp = createGroup east;
private _vehArray = [_pos_start, _dir, _type, east] call bis_fnc_spawnvehicle;
_vehArray params ["_veh", "_crew", "_grpVeh"];

// Height and Decorations
_veh flyinHeight 50;

switch (_type) do {
	case "CUP_O_AN2_TK": {
		[ _veh, ["military",1], ["hideDoor",1] ] call BIS_fnc_initVehicle;
	};

	case "CUP_O_Mi8_RU": {
		[ _veh, ["NVA_1",1], true ] call BIS_fnc_initVehicle;
	};
};

// Sets the behaviour of the crew/pilot
_grpVeh setBehaviour "AWARE";
_grpVeh setCombatMode "RED";
_grpVeh deleteGroupWhenEmpty true;

// Waypoint 
private _wp = _grpVeh addWaypoint [_pos_end, 0];
_wp setWaypointType "MOVE";
_wp setWaypointSpeed "FULL";
_wp setWaypointCompletionRadius 1;

// Reached target position
waitUntil {sleep 1; _veh distance2D _pos_end < 150};

 // Deletes last WP
[_grpVeh] call CBA_fnc_clearWaypoints;

// Deletes heli and Crew
deletevehicle _veh; {deleteVehicle _x} forEach units (_grpVeh);