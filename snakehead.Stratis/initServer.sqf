// hide Marker
{_x setMarkerAlpha 0} foreach ["conv_0", "conv_1", "conv_2", "conv_3", "conv_4", "conv_5", "mrk_amb", "patArea"];

// Recon #1
if (isNil "recon_trg_01") then {recon_trg_01 = true};

// Recon #2 over Radio Check (WIP/ALPHA) + hideBody
if (isNil "radio_check") then {radio_check = true; publicVariable "radio_check"};
call compile preprocessFileLineNumbers "scripts\fnc_pfh_radiocheck.sqf";

// Skill & Eventhandler
{
	_x setskill ["spotDistance", 0];
	_x setskill ["spotTime", 0];
	_x setskill ["courage", 1];

	// Eventhandler for moving when hit
	_x addEventhandler [
		"HIT",
		{
			if (side (_this select 3) isEqualTo east OR !alive (_this select 0) OR (vehicle (_this select 0) != (_this select 0))) exitWith {};
			(_this select 0) removeEventHandler ["HIT", _thisEventHandler];
			(_this select 0) doSuppressiveFire getPosASL (_this select 3);
			[(_this select 0), (_this select 3), 50, true] call CBA_fnc_taskAttack
		}
	];

	_x addEventhandler [
		"Killed",
		{
			(_this select 0) removeEventHandler ["Killed", _thisEventHandler];
			[(_this select 0), ["<t color='#ff0000'>Leiche verstecken</t>", {hidebody (_this select 0); [(_this select 0), (_this select 2)] remoteExecCall ["removeAction"]}, nil, 1.5, true, true, "", "true", 3]] remoteExecCall ["addaction"];
			if (radio_check) then {
				[(_this select 0), ["<t color='#ffff00'>Funkgerät nehmen</t>", {radio_check = false; publicVariable "radio_check"; [(_this select 0), (_this select 2)] remoteExecCall ["removeAction"]}, nil, 1.5, true, true, "", "true", 3]] remoteExecCall ["addaction"]
			};
		}
	];

	if (_x inArea "patArea") then {
		_x addEventHandler [
			"Fired",
			{
				(_this select 0) removeEventHandler ["Fired", _thisEventHandler];
				if (recon_trg_01) then {
					{_x enableAI "PATH"} foreach units recon_1;
					(group recon_1) setVariable ["lambs_danger_enableGroupReinforce", true, true];
					[20, [Speaker_1]] spawn compile preprocessFileLineNumbers "scripts\fn_Alarmsound.sqf";
					recon_trg_01 = false
				};
			}
		]
	};

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

	if !(_x isEqualTo target) then {
		_x unassignItem "NVGoggles";
		_x removeItem "NVGoggles";
	};

} foreach (units east);

// No Lambs & VCOM
{
	_x setVariable ["Vcm_Disable",true];
} foreach AllUnits;

{
	_x setVariable ["lambs_danger_disableAI",true];
} foreach (units civilian + units target);

// Allgroups to Safe
{
	if !(_x isEqualTo group target) then {_x setBehaviour "SAFE";};
} foreach AllGroups;

// custom Iffrit
{
	_x setObjectTextureGlobal [0, "pics\Ifrit\punisher_front_wd.paa"];
	_x setObjectTextureGlobal [1, "pics\Ifrit\punisher_back_wd.paa"];
} foreach [iffrit_1, iffrit_2, convCar_0];

iffrit_2 setObjectTextureGlobal [2, "pics\Ifrit\Turret_wd.paa"];