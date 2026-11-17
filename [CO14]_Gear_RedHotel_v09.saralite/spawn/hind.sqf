if (!isServer) exitWith {};

params ["_pos_spawn", "_pos_attack", "_delay"];
_pos_spawn = getMarkerPos _pos_spawn;
_pos_attack = getMarkerPos _pos_attack;

sleep _delay;

private _heli = createVehicle ["CUP_O_Mi24_V_Dynamic_RU", _pos_spawn, [], 10, "FLY"];

sleep 0.1;

private _grp = Creategroup EAST;
"CUP_O_RU_Pilot" createUnit [_pos_spawn, _grp,"unith1 = this", 1, "corporal"];
"CUP_O_RU_Pilot" createUnit [_pos_spawn, _grp,"unith2 = this", 1, "corporal"];

unith1 moveinDriver _heli;
unith1 allowFleeing 0;
unith2 moveinGunner _heli;
unith2 allowFleeing 0;

sleep 2;

unith1 setBehaviour "Combat";
unith2 setBehaviour "Combat";

_heli flyInHeight 150;
unith1 flyInHeight 150;
unith2 flyInHeight 150;

private _waypoint0 = Grph1 addwaypoint[_pos_attack,100];
_waypoint0 setWaypointType "SAD";
_waypoint0 setWaypointBehaviour"COMBAT";

sleep 1;

private _waypoint1 = Grph1 addwaypoint[_pos_attack,100];
_waypoint1 setWaypointType "CYCLE";
_waypoint1 setWaypointBehaviour"COMBAT";