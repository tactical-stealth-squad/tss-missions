if !(isServer) exitWith {};

/*
private _tank = createVehicle ["I_MBT_03_cannon_F", [0, 0, 0], [], 0, "NONE"];
private _result = [_tank, "Indep_02", ["HideTurret", 1, "HideHull", 1, "showCamonetHull", 1, "showCamonetTurret", 1], true] call BIS_fnc_initVehicle;
_tank setpos getMarkerPos "spawn_leo";
_tank setDir 300;

private _grp = [[0, 0, 0], Independent, ["I_C_Soldier_Para_2_F", "I_C_Soldier_Para_1_F", "I_C_Soldier_Para_4_F"]] call BIS_fnc_spawnGroup;
{
	_x moveInAny _tank
} foreach units _grp;
*/

private _vehicleArray = [getMarkerPos "spawn_leo", 300, "I_MBT_03_cannon_F", independent] call BIS_fnc_spawnVehicle;
_vehicleArray params ["_vehicle", "_crew", "_VehGroup"];
[_vehicle, "Indep_02", ["HideTurret", 1, "HideHull", 1, "showCamonetHull", 1, "showCamonetTurret", 1], true] call BIS_fnc_initVehicle;
if (isClass (configFile >> "CfgPatches" >> "lambs_danger")) then {
	{
		_x setVariable ["lambs_danger_disableAI",true]
	} foreach _VehGroup
};

[
	{
		_this params ["_argsArray", "_handleNumber"];
		_argsArray params ["_grp"];

		if ({alive _x} count (Allplayers - entities "HeadlessClient_F") isEqualTo 0) exitWith {[_handleNumber] call CBA_fnc_removePerFrameHandler};

		private _target = [_grp, 500, "for_mortar"] call compile preprocessFileLineNumbers "scripts\fn_findClosestTarget.sqf";

		[_grp] call CBA_fnc_clearWaypoints;
		private _wp = [_grp, selectrandom (Allplayers - (entities "HeadlessClient_F")), 50, "MOVE", "COMBAT", "RED", "FULL", "STAG COLUMN", "this doSuppressiveFire (getPosASL selectrandom (AllPlayers - entities ""HeadlessClient_F""))"] call CBA_fnc_addWaypoint
	},
	30,
	[
		_VehGroup
	]
] call CBA_fnc_addPerFrameHandler;

nil