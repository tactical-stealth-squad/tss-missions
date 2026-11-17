Params ["_groupType", "_direction"];
// Create group
private _grp = [[0,0,0], east, _groupType] call BIS_fnc_spawnGroup;
// Teleport to first WP
[_grp, _direction select 0 call CBA_fnc_getPos] call CBA_fnc_setPos;
//Mark for deletion
_grp deleteGroupWhenEmpty true;

// Waypoint creating
private _wp1 = _grp addWaypoint [_direction select 0 call CBA_fnc_getPos, 10, 0];
_wp1 setWaypointBehaviour "COMBAT";
_wp1 setWaypointCombatMode "YELLOW";
_wp1 setWaypointType "MOVE";
_wp1 setWaypointSpeed "NORMAL";

private _wp2 = _grp addWaypoint [_direction select 1 call CBA_fnc_getPos, 10, 1];

private _wp3 = _grp addWaypoint [_direction select 2 call CBA_fnc_getPos, 10, 2];

private _wp4 = _grp addWaypoint [_direction select 3 call CBA_fnc_getPos, 10, 3];
_wp4 setWaypointType "CYCLE";

// Return value
_grp