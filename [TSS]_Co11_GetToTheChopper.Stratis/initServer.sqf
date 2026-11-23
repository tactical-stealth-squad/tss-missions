// Intel
[
	intel_1,
	"RscAttributeDiaryRecord",
	[
		"Baupläne",
		"Die Dokumente enthalten Baupläne des vor Ort stationierten Pprototypens.<br/><br/>",
		""
	]
] call bis_fnc_setServerVariable;
intel_1 setvariable ["RscAttributeDiaryRecord_texture", "images\BlauPause.jpg", true];

// Vanilla bähhhh
{
	_x addEventhandler ["hitPart", {[(_this select 0), false] call compile preprocessFileLineNumbers "scripts\iV_fnc_oneHitKill.sqf"}];
	_x disableTIEquipment true
} foreach [APC_1, APC_2, sup_car_1, sup_car_2, MATV_heli];

/// Skill & Eventhandler///
{
	_x setskill ["spotDistance", 1];
	_x setskill ["spotTime", 1];
	_x setskill ["courage", 1];
	// Eventhandler for moving when hit
	_x addEventhandler [
		"HIT",
		{
			if (side (_this select 3) isEqualTo west OR !alive (_this select 0) OR (vehicle (_this select 0) != (_this select 0))) exitWith {};
			(_this select 0) removeEventHandler ["HIT", _thisEventHandler];
			(_this select 0) doSuppressiveFire getPosASL (_this select 3);
			[(_this select 0), (_this select 3), 50, true] call CBA_fnc_taskAttack;
		}
	];
	// Custom Loadouts
	private _klasse = typeOf _x;

	switch (_klasse) do {

		case "B_soldier_AR_F": {
			// AR
			_x setUnitloadout [["LMG_03_F","","acc_pointer_IR","optic_Holosight_blk_F",["200Rnd_556x45_Box_F",200],[],""],[],["hgun_Pistol_heavy_01_F","muzzle_snds_acp","acc_flashlight_pistol","",["11Rnd_45ACP_Mag",11],[],""],["U_B_CombatUniform_mcam",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_quikclot",3],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_microDAGR",1],["ACE_splint",2],["ACE_tourniquet",4],["ACE_MapTools",1]]],["V_PlateCarrier1_rgr",[["ACRE_PRC152",1],["ACE_salineIV_250",2],["11Rnd_45ACP_Mag",1,11],["200Rnd_556x45_Box_F",3,200]]],[],"H_HelmetB_sand","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","NVGoggles"]]
		};

		case "B_Soldier_A_F": {
			// Rifleman in Base
			_x setUnitloadout [["arifle_SPAR_01_blk_F","","acc_pointer_IR","optic_Holosight_blk_F",["30Rnd_556x45_Stanag",30],[],""],[],["hgun_Pistol_heavy_01_F","muzzle_snds_acp","acc_flashlight_pistol","",["11Rnd_45ACP_Mag",11],[],""],["U_B_CombatUniform_mcam",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_quikclot",3],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_microDAGR",1],["ACE_splint",2],["ACE_tourniquet",4],["ACE_MapTools",1]]],["V_PlateCarrier1_rgr",[["ACRE_PRC152",1],["ACE_salineIV_250",2],["HandGrenade",2,1],["SmokeShellGreen",2,1],["SmokeShell",2,1],["11Rnd_45ACP_Mag",1,11],["30Rnd_556x45_Stanag",10,30]]],[],"H_Cap_tan_specops_US","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]]
		};

		case "B_Soldier_GL_F": {
			// Grenadier
			_x setUnitloadout [["arifle_SPAR_01_GL_blk_F","","acc_pointer_IR","optic_Arco_blk_F",["30Rnd_556x45_Stanag",30],["1Rnd_HE_Grenade_shell",1],""],[],["hgun_Pistol_heavy_01_F","muzzle_snds_acp","acc_flashlight_pistol","",["11Rnd_45ACP_Mag",11],[],""],["U_B_CombatUniform_mcam",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_quikclot",3],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_microDAGR",1],["ACE_splint",2],["ACE_tourniquet",4],["ACE_MapTools",1]]],["V_PlateCarrier1_rgr",[["ACRE_PRC152",1],["ACE_salineIV_250",2],["11Rnd_45ACP_Mag",1,11],["30Rnd_556x45_Stanag",8,30],["1Rnd_HE_Grenade_shell",5,1],["UGL_FlareWhite_F",5,1],["SmokeShellGreen",2,1],["SmokeShell",2,1]]],[],"H_HelmetB_sand","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","NVGoggles"]]
		};

		case "B_soldier_M_F": {
			// Marksman
			_x setUnitloadout [["srifle_DMR_06_olive_F","muzzle_snds_B_lush_F","","optic_ams_khk",["20Rnd_762x51_Mag",20],[],"bipod_01_F_khk"],[],["hgun_Pistol_heavy_01_F","muzzle_snds_acp","acc_flashlight_pistol","",["11Rnd_45ACP_Mag",11],[],""],["U_B_CombatUniform_mcam",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_quikclot",3],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_microDAGR",1],["ACE_splint",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_RangeCard",1]]],["V_PlateCarrier1_rgr",[["ACRE_PRC152",1],["ACE_salineIV_250",2],["ACE_Kestrel4500",1],["HandGrenade",1,1],["SmokeShellGreen",1,1],["SmokeShell",2,1],["11Rnd_45ACP_Mag",1,11],["20Rnd_762x51_Mag",8,20]]],[],"H_HelmetB_sand","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","NVGoggles"]]
		};

		case "B_Crew_F": {
			// Crewman
			_x setUnitloadout [["SMG_05_F","","acc_flashlight","optic_Holosight_smg_blk_F",["30Rnd_9x21_Mag_SMG_02",30],[],""],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_B_CombatUniform_mcam_vest",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_quikclot",3],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_splint",2],["ACE_tourniquet",4],["ACE_MapTools",1],["16Rnd_9x21_Mag",1,17]]],["V_Rangemaster_belt",[["30Rnd_9x21_Mag",4,30]]],[],"H_HelmetCrew_I","",[],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch","NVGoggles"]]
		};
		default {
			// Rifleman/FTL
			_x setUnitloadout [["arifle_SPAR_02_blk_F","","acc_pointer_IR","optic_Arco_blk_F",["30Rnd_556x45_Stanag",30],[],""],[],["hgun_Pistol_heavy_01_F","muzzle_snds_acp","acc_flashlight_pistol","",["11Rnd_45ACP_Mag",11],[],""],["U_B_CombatUniform_mcam",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_quikclot",3],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_microDAGR",1],["ACE_splint",2],["ACE_tourniquet",4],["ACE_MapTools",1]]],["V_PlateCarrier1_rgr",[["ACRE_PRC152",1],["ACE_salineIV_250",2],["HandGrenade",2,1],["SmokeShellGreen",2,1],["SmokeShell",2,1],["11Rnd_45ACP_Mag",1,11],["30Rnd_556x45_Stanag",10,30]]],[],"H_HelmetB_sand","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","NVGoggles"]]
		};
	};

	if (_x inArea "mrk_noNVG") then {
		_x unassignItem "NVGoggles";
		_x removeItem "NVGoggles";
	};
} foreach (units west);

// Keine Bewegung
private _static_groups = [];
{
	_static_groups append _x;
} foreach [units funk_stat, units heli_stat_1, units heli_stat_2];

{
	dostop _x;
	_x disableAI "PATH";
	_x removeMagazines "smokeshell";
} foreach _static_groups;