private _vehicle = _this select 0;

if ((vehicle o_target_1 isEqualTo (_this select 0)) OR (vehicle o_target_2 isEqualTo (_this select 0))) then {
	"EveryoneWon" call BIS_fnc_endMissionServer;
	["task2", "SUCCEEDED", false] call BIS_fnc_taskSetState;
	["task3", "SUCCEEDED", false] call BIS_fnc_taskSetState
} else {
	"EveryoneLost" call BIS_fnc_endMissionServer;
	["task2", "FAILED", false] call BIS_fnc_taskSetState;
	["task3", "FAILED", false] call BIS_fnc_taskSetState
};

nil