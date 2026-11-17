/*
	Author:
		[=TSS=] zinki (inspiration by Hawk 2010)

	Description:
		Spawns a vehicle of given typ and a "Task" (i. e. CBA_Taskdefend, etc.).

	Parameter(s):
		0: Position (Object, i. e. GameLogic or Invisble H)
		1: Side
		2: Units (Can be three different types: a list of character types (Array), an amount of characters to spawn (Number) or a CfgGroups entry (Config))
		3: TASK (CBA_Patrol, CBA_Defend, CBA_Attack)
		4: Parameters for the TASK (i. e. CBA_TASK (Patrol, Defend, Attack) Parameters)

	Execute:
			[[h2, west, ["rhsusf_army_ucp_medic", "rhsusf_army_ucp_autoriflemana"]], "CBA_Patrol", []] remoteExec ["HC_fnc_SpawnGroup", _HC, false];

	Requirement(s):

	Returns:
		Vehicle
*/

Params ["_spawn", "_task", "_params"];

// spawns vehicle and group
_spawn params ["_pos", "_dir", "_type", "_side"];
private _position = _pos call CBA_fnc_getPos;

private _vehArray = [[0,0,0], _dir, _type, _side] call BIS_fnc_spawnVehicle;

_vehArray params ["_veh", "_crew", "_grp"];
[_veh, _position] call CBA_fnc_setPos;

private _grpVeh = _veh call CBA_fnc_getGroup;
_grpVeh deleteGroupWhenEmpty true;

// Tasks
switch (_task) do {

	case "CBA_Patrol": {

		private _task_Array = [_veh];
		_task_Array append _params;
		_task_Array call CBA_fnc_taskPatrol
	};

	case "CBA_Defend": {

		private _task_Array = [_veh];
		_task_Array append _params;
		_task_Array call CBA_fnc_taskDefend
	};

	case "CBA_Attack": {

		private _task_Array = [_veh];
		_task_Array append _params;
		_task_Array call CBA_fnc_taskAttack
	};

	case "CBA_SearchArea": {

		private _task_Array = [_veh];
		_task_Array append _params;
		_task_Array call CBA_fnc_TaskSearchArea
	}
};

// Returnvalue
_veh