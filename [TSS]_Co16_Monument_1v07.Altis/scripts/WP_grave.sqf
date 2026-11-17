if (!(isServer)) exitWith {};

_grpTruck = group t1D;

salute playMove "AmovPercMstpSlowWrflDnon_SaluteOut";
salute enableAI "anim";

{
	_x enableAI "Path";
	_x setUnitPos "AUTO";
	_x assignAsCargo t1;
} foreach units group salute;
(units group salute) orderGetIn true;

waitUntil {sleep 2; count crew t1 > 7};

_wp_1 = _GrpTruck addWaypoint [getMarkerPos "wp_first", 1];
_wp_1 setWaypointType  "MOVE";
_wp_1 setWaypointBehaviour "SAFE";
_wp_1 setWaypointSpeed "FULL";

_wp_2 = _GrpTruck addWaypoint [getMarkerPos "wp_middle_1", 2];
_wp_2 setWaypointType  "MOVE";
_wp_2 setWaypointBehaviour "SAFE";
_wp_2 setWaypointSpeed "LIMITED";

_wp_3 = _GrpTruck addWaypoint [getMarkerPos "respawn_west", 3];
_wp_3 setWaypointType  "MOVE";
_wp_3 setWaypointBehaviour "SAFE";
_wp_3 setWaypointSpeed "FULL";

_wp_4 = _GrpTruck addWaypoint [getMarkerPos "wp_last", 4];
_wp_4 setWaypointType  "MOVE";
_wp_4 setWaypointBehaviour "SAFE";
_wp_4 setWaypointSpeed "FULL";
_wp_4 setWaypointStatements ["true", "{deleteVehicle _x} forEach thislist; deleteVehicle t1;"];