if (!isServer) exitWith {};

private _pos = "csat_start";
private _no_nvg = true;
private _no_helmet = false;


private _grp1  = [getMarkerPos _pos, 45, "O_MRAP_02_hmg_F", EAST] call BIS_fnc_spawnVehicle;
private _wp1 = (_grp1 select 2) addWaypoint [getMarkerPos "csat_go1", 5];
private _wp2 = (_grp1 select 2) addWaypoint [getMarkerPos "csat_go2", 5];
private _wp3 = (_grp1 select 2) addWaypoint [getMarkerPos "csat_go3", 15];
_wp3 setWaypointType "LOITER";
sleep 25;


private _grp1_tr  = [getMarkerPos _pos, 45, "O_Truck_02_covered_F", EAST] call BIS_fnc_spawnVehicle;

for "_x" from 1 to 2 do {
	private _grp_array = ["FT"] call fnc_random_grp_o_csat;
	private _grp1  = [getMarkerPos _pos, EAST, _grp_array] call BIS_fnc_spawnGroup;
	if (_no_nvg) then {{_x unassignItem "NVGoggles_OPFOR"; _x removeItem "NVGoggles_OPFOR"; _x addPrimaryWeaponItem "acc_flashlight"} foreach units _grp1; _grp1 enableGunLights "forceOn"};
	if (_no_helmet) then {{removeHeadgear _x} foreach units _grp1};
	{_x moveinCargo (_grp1_tr select 0)} foreach units _grp1;
	private _wp_inf = _grp1 addWaypoint [getMarkerPos "csat_go3", 15];
	_wp_inf setWaypointType "SAD"
};

private _wp1 = (_grp1_tr select 2) addWaypoint [getMarkerPos "csat_go1", 5];
private _wp2 = (_grp1_tr select 2) addWaypoint [getMarkerPos "csat_go2", 5];
private _wp3 = (_grp1_tr select 2) addWaypoint [getMarkerPos "csat_go4", 15];
_wp3 setWaypointType "TR UNLOAD";
_wp3 setWaypointBehaviour "CARELESS"