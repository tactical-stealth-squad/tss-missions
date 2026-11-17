//--------------------Skill and Loadout-------------------------
GEA_fnc_loadout = compile preprocessFileLineNumbers "loadout.sqf";

{	_x setskill ["spotDistance", 1];
	_x setskill ["spotTime", 1];
	_x setskill ["courage", 1];
	[_x] call GEA_fnc_loadout;
} foreach (units east);

//--------------------Task-------------------------
if (isNil "task1") then {task1 = false; publicVariable "task1"};
if (isNil "task2") then {task2 = false; publicVariable "task2"};