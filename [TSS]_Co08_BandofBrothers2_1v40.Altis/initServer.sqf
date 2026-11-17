// Enemy units loadout
GEA_scr_loadout = compile preprocessFileLineNumbers "scr_loadout.sqf";
["SoldierEB", "init", {call GEA_scr_loadout}, true, [], true] call CBA_fnc_addClassEventHandler;

// Skill
{
	if (side _x isEqualTo east) then {
		_x setskill ["spotDistance", 1];
		_x setskill ["spotTime", 1];
		_x setskill ["courage", 1];
	}
} forEach allUnits;

// Variables
if (isNil "exfilHint") then {exfilHint = false; publicVariable "exfilHint"};
if (isNil "task1") then {task1 = false};

{
	_x addPrimaryWeaponItem "acc_flashlight";
	_x enableGunLights "forceOn";
} forEach units grp_gunlight1;

{
	_x addPrimaryWeaponItem "acc_flashlight";
	_x enableGunLights "forceOn";
} forEach units grp_gunlight2;