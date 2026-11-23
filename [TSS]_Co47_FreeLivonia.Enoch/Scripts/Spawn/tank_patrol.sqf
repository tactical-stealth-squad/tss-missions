private _tankGroup = createGroup east;
// Create first tank
private _tankArray1 = [[0,0,0], 0, "O_T_MBT_02_cannon_ghex_F", _tankGroup] call BIS_fnc_spawnVehicle;
// Teleport to first waypoint position
[_tankArray1 select 0, "spawn_random_1"] call CBA_fnc_setPos;

// Create second tank with same group of frist tank
private _tankArray2 = [[0,0,0], 0, "O_T_MBT_02_cannon_ghex_F", _tankGroup] call BIS_fnc_spawnVehicle;
// Teleport to frist tank but with some space between both
[_tankArray2 select 0, ["spawn_random_1", 15] call CBA_fnc_randPos] call CBA_fnc_setPos;

// Mark for deletion
_tankGroup deleteGroupWhenEmpty true;

// Waypoint creating
private _wp1 = _tankGroup addWaypoint ["spawn_random_1" call CBA_fnc_getPos, 10, 0];
_wp1 setWaypointBehaviour "COMBAT";
_wp1 setWaypointCombatMode "RED";
_wp1 setWaypointType "MOVE";

private _wp2 = _tankGroup addWaypoint ["spawn_airport_2" call CBA_fnc_getPos, 10, 1];

private _wp3 = _tankGroup addWaypoint ["spawn_random_2" call CBA_fnc_getPos, 10, 2];

private _wp4 = _tankGroup addWaypoint ["spawn_random_3" call CBA_fnc_getPos, 10, 2];
_wp4 setWaypointType "CYCLE";

// ReturnValue
_tankGroup