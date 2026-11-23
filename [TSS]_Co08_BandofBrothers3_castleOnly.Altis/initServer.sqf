// Enemy units loadout
GEA_scr_loadout = compile preprocessFileLineNumbers "scr_loadout.sqf";
["SoldierEB", "init", {call GEA_scr_loadout}, true, [], true] call CBA_fnc_addClassEventHandler;

// Skill
{
	if (side _x isEqualTo independent) then {
		_x setskill ["spotDistance", 1];
		_x setskill ["spotTime", 1];
		_x setskill ["courage", 1]
	}
} forEach allUnits;

// Variables
if (isNil "task1") then {task1 = false};
if (isNil "task2") then {task2 = false};