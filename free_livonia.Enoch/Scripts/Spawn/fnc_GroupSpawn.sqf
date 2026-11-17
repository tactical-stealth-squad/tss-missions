/*
	Author:
		[=TSS=] zinki (inspiration by Hawk 2010)

	Description:
		Spawns a Group of given typ and a "Task" (i. e. CBA_Taskdefend, etc.).

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
		group
*/

Params ["_spawn", "_task", "_params"];

// spawns group
_spawn params ["_pos", "_side", "_grpInfo"];
private _position = _pos call CBA_fnc_getPos;
private _grp = [[0,0,0], _side, _grpInfo] call BIS_fnc_spawnGroup;
[_grp, _position] call CBA_fnc_setPos;
_grp deleteGroupWhenEmpty true;

// Tasks
switch (_task) do {

	case "CBA_Patrol": {

		private _task_Array = [leader _grp];
		_task_Array append _params;
		_task_Array call CBA_fnc_taskPatrol
	};

	case "CBA_Defend": {

		private _task_Array = [leader _grp];
		_task_Array append _params;
		_task_Array call CBA_fnc_taskDefend
	};

	case "CBA_Attack": {

		private _task_Array = [leader _grp];
		_task_Array append _params;
		_task_Array call CBA_fnc_taskAttack
	};

	case "CBA_SearchArea": {

		private _task_Array = [leader _grp];
		_task_Array append _params;
		_task_Array call CBA_fnc_TaskSearchArea
	}
};

// Returnvalue
_grp