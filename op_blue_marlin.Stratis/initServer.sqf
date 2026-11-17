// Reveal Mines
{east revealMine _x} foreach AllMines;

// SKill
{
	// SKill
	_x setskill ["spotDistance", 1];
	_x setskill ["spotTime", 1];
	_x setskill ["courage", 1];

	// no LAMBS and VCOM for editor units
	_x setVariable ["lambs_danger_disableAI", true];
	//_x setVariable ["Vcm_Disable", true];

	// grr CFP and Alive ...
	_x setVariable ["CFP_DisableRandom", true];
	_x setVariable ["ALiVE_OverrideLoadout", true];

	// Eventhandler for moving when hit
	_x addEventhandler [
		"HIT",
		{
			if (side (_this select 1) isEqualTo east OR !alive (_this select 0)) exitWith {};
			(_this select 0) removeEventHandler ["HIT", _thisEventHandler];
			if !((_this select 0) checkAIFeature "PATH") then {(_this select 0) enableAI "PATH"};
			(_this select 0) doSuppressiveFire getPosASL (_this select 1);
		}
	];

	// Custom Loadouts (thanks to FHW Gearfield)
	private _klasse = typeOf _x;
	switch (_klasse) do {

		case "O_Soldier_lite_F": {
			// CQB
			_x setUnitloadout [["arifle_TRG20_F","","acc_flashlight","optic_Yorris",["30Rnd_556x45_Stanag_Sand",30],[],""],[],[],["U_O_T_Officer_F",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["30Rnd_556x45_Stanag",1,30]]],["V_TacVest_oli",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["MiniGrenade",4,1],["30Rnd_556x45_Stanag_Sand_Tracer_Yellow",6,30]]],[],"H_PASGT_basic_olive_F","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]]
		};

		case "O_officer_F": {
			// Officer/target
			_x setUnitloadout [["arifle_TRG20_F","","acc_flashlight","optic_Yorris",["30Rnd_556x45_Stanag_Sand",30],[],""],[],[],["U_O_T_Officer_F",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["30Rnd_556x45_Stanag",1,30]]],[],[],"H_Beret_CSAT_01_F","G_Aviator",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]]
		};

		case "O_Soldier_AR_F": {
			// AR
			_x setUnitloadout [["LMG_Zafir_F","","acc_flashlight","optic_Arco_blk_F",["150Rnd_762x54_Box_Tracer",150],[],""],[],[],["U_O_T_Officer_F",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACRE_PRC343",1]]],[],["B_FieldPack_ghex_F",[["150Rnd_762x54_Box_Tracer",4,150]]],"H_PASGT_basic_olive_F","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]]
		};

		case "O_Soldier_GL_F": {
			// Grenadier
			_x setUnitloadout [["arifle_TRG21_GL_F","","acc_flashlight","optic_Arco_blk_F",["30Rnd_556x45_Stanag_Sand",30],["1Rnd_HE_Grenade_shell",1],""],[],[],["U_O_T_Officer_F",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["30Rnd_556x45_Stanag_Sand",1,30]]],["V_HarnessOGL_ghex_F",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["MiniGrenade",4,1],["30Rnd_556x45_Stanag_Sand_Tracer_Yellow",5,30],["1Rnd_HE_Grenade_shell",8,1]]],[],"H_PASGT_basic_olive_F","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]]
		};

		case "O_Soldier_LAT_F": {
			// RPG
			_x setUnitloadout [["arifle_TRG20_F","","acc_flashlight","optic_Yorris",["30Rnd_556x45_Stanag_Sand",30],[],""],["launch_RPG32_green_F","","","",["RPG32_HE_F",1],[],""],[],["U_O_T_Officer_F",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2]]],["V_TacChestrig_grn_F",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["MiniGrenade",4,1],["30Rnd_556x45_Stanag_Sand",8,30]]],["B_AssaultPack_wdl_F",[["RPG32_F",2,1],["RPG32_HE_F",1,1]]],"H_PASGT_basic_olive_F","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]]
		};

		case "O_crew_F": {
			// Crewman
			_x setUnitloadout [["SMG_02_F","","acc_flashlight","",["30Rnd_9x21_Mag_SMG_02",30],[],""],[],[],["U_O_R_Gorka_01_black_F",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["30Rnd_9x21_Mag_SMG_02",1,30]]],["V_LegStrapBag_black_F",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC148",1],["SmokeShell",4,1],["30Rnd_9x21_Mag_SMG_02",4,30]]],[],"H_Tank_black_F","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]]
		};
		default {
			// Rifleman/FTL
			_x setUnitloadout [["arifle_TRG21_F","","acc_flashlight","optic_Arco_blk_F",["30Rnd_556x45_Stanag_Sand",30],[],""],[],[],["U_O_T_Officer_F",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2]]],["V_HarnessO_ghex_F",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343_ID_1",1],["MiniGrenade",4,1],["30Rnd_556x45_Stanag_Sand_Tracer_Yellow",10,30]]],[],"H_PASGT_basic_olive_F","",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]]
		}
	};

} foreach (units east);

// Custom look for IFRIT
[
	"O_MRAP_02_F",
	"init",
	{
		(_this select 0) setObjectTextureGlobal [0, "img\Ifrit\punisher_front_wd.paa"];
		(_this select 0) setObjectTextureGlobal [1, "img\Ifrit\punisher_back_wd.paa"];
		(_this select 0) addEventhandler ["hitPart", {[(_this select 0)] call compile preprocessFileLineNumbers "scripts\fnc_oneKill_APC.sqf"}]
	},
	true,
	[],
	true
] call CBA_fnc_addClassEventHandler;

// Custom look for IFRIT HMG
[
	"O_MRAP_02_hmg_F",
	"init",
	{
		(_this select 0) setObjectTextureGlobal [0, "img\Ifrit\punisher_front_wd.paa"];
		(_this select 0) setObjectTextureGlobal [1, "img\Ifrit\punisher_back_wd.paa"];
		(_this select 0) setObjectTextureGlobal [2, "img\Ifrit\Turret_wd.paa"];
		(_this select 0) addEventhandler ["hitPart", {[(_this select 0)] call compile preprocessFileLineNumbers "scripts\fnc_oneKill_APC.sqf"}];
		(_this select 0) disableTIEquipment true
	},
	true,
	[],
	true
] call CBA_fnc_addClassEventHandler;

// Tasksystem
//call compile preprocessFileLineNumbers "scripts\tasks.sqf";

// Variables
if (isNil "task1") then {task1 = false};
if (isNil "task2") then {task2 = false};
if (isNil "task3") then {task3 = false};