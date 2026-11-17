// Enemy units loadout
GEA_scr_loadout = compile preprocessFileLineNumbers "scr_loadout.sqf";
["SoldierEB", "init", {call GEA_scr_loadout}, true, [], true] call CBA_fnc_addClassEventHandler;

// Skill
{
	if (side _x isEqualTo east) then {
		_x setskill ["spotDistance", 1];
		_x setskill ["spotTime", 1];
		_x setskill ["courage", 1]
	}
} forEach allUnits;

// Variables
if (isNil "task1") then {task1 = false};
if (isNil "task2") then {task2 = false};

obj_submarine setMass 3450500;
// obj_submarine setMass 3445000; without two SDVs

veh_sdv_1 attachTo [obj_submarine,[0,10,5.6]];
veh_sdv_2 attachTo [obj_submarine,[0,17,5.6]];

{
	_x addItemCargoGlobal  ["FirstAidKit", -2];	

	_x addItemCargoGlobal  ["H_HelmetSpecB_wdl", 10];
	_x addItemCargoGlobal  ["ACE_DBAL_A3_Red", 10];
	_x addItemCargoGlobal  ["ACE_NVG_Wide_Black_WP", 10];

	_x addItemCargoGlobal  ["30Rnd_556x45_Stanag_red", 36];
	_x addItemCargoGlobal  ["ACE_20Rnd_762x51_Mk316_Mod_0_Mag", 5];

	_x addItemCargoGlobal  ["ACE_elasticBandage", 30];
	_x addItemCargoGlobal  ["ACE_packingBandage", 20];
	_x addItemCargoGlobal  ["ACE_quikclot", 10];
	_x addItemCargoGlobal  ["ACE_plasmaIV_500", 10];
	_x addItemCargoGlobal  ["ACE_salineIV_500", 10];
	_x addItemCargoGlobal  ["ACE_surgicalKit", 1];
	_x addItemCargoGlobal  ["ACE_personalAidKit", 1];
	_x addItemCargoGlobal  ["ACE_key_lockpick", 1];
} forEach [veh_sdv_1, veh_sdv_2];

// Move own units to SDVs
{
	_x moveInAny veh_sdv_1;
} forEach units grp_blu_1;

{
	_x moveInAny veh_sdv_2;
} forEach units grp_blu_2;