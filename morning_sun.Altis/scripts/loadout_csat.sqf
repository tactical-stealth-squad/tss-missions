
// SKill and EH when unit get`s hit
[
	"SoldierEB",
	"init",
	{
		// Custom Loadouts (thanks to FHW Gearfield)
		private _klasse = typeOf (_this select 0);
		switch (_klasse) do {

			case "O_Soldier_lite_F": {
				// CQB
				(_this select 0) setUnitloadout [["arifle_CTAR_blk_F","","ACE_acc_pointer_green","optic_Yorris",["30Rnd_580x42_Mag_F",30],[],""],[],[],["U_O_T_Officer_F",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["30Rnd_556x45_Stanag",1,30]]],["V_TacVest_oli",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["MiniGrenade",4,1],["30Rnd_580x42_Mag_F",6,30]]],[],"H_PASGT_basic_olive_F","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]]
				};

			case "O_Soldier_TL_F": {
				// Officer
				(_this select 0) setUnitloadout [["arifle_CTAR_blk_F","","ACE_acc_pointer_green","optic_Yorris",["30Rnd_580x42_Mag_F",30],[],""],[],[],["U_O_T_Officer_F",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["30Rnd_556x45_Stanag",1,30]]],[],[],"H_Beret_CSAT_01_F","G_Aviator",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]]
			};

			case "O_Soldier_AR_F": {
				// AR
				(_this select 0) setUnitloadout [["LMG_Zafir_F","","","optic_Arco_blk_F",["150Rnd_762x54_Box_Tracer",150],[],""],[],[],["U_O_T_Officer_F",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACRE_PRC343",1]]],[],["B_FieldPack_ghex_F",[["150Rnd_762x54_Box_Tracer",4,150]]],"H_PASGT_basic_olive_F","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]]
			};

			case "O_Soldier_GL_F": {
				// Grenadier
				(_this select 0) setUnitloadout [["arifle_CTAR_GL_blk_F","","","optic_Arco_blk_F",["30Rnd_580x42_Mag_F",30],["1Rnd_HE_Grenade_shell",1],""],[],[],["U_O_T_Officer_F",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["30Rnd_580x42_Mag_F",1,30]]],["V_HarnessOGL_ghex_F",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["MiniGrenade",4,1],["30Rnd_580x42_Mag_F",5,30],["1Rnd_HE_Grenade_shell",8,1]]],[],"H_PASGT_basic_olive_F","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]]
			};

			case "O_Soldier_LAT_F": {
				// RPG
				(_this select 0) setUnitloadout [["arifle_CTAR_blk_F","","ACE_acc_pointer_green","optic_Yorris",["30Rnd_580x42_Mag_F",30],[],""],["launch_RPG32_green_F","","","",["RPG32_HE_F",1],[],""],[],["U_O_T_Officer_F",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2]]],["V_TacChestrig_grn_F",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["MiniGrenade",4,1],["30Rnd_580x42_Mag_F",8,30]]],["B_AssaultPack_wdl_F",[["RPG32_F",2,1],["RPG32_HE_F",1,1]]],"H_PASGT_basic_olive_F","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]]
			};

			case "O_crew_F": {
				// Crewman
				(_this select 0) setUnitloadout [["SMG_02_F","","","",["30Rnd_9x21_Mag_SMG_02",30],[],""],[],[],["U_O_R_Gorka_01_black_F",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["30Rnd_9x21_Mag_SMG_02",1,30]]],["V_LegStrapBag_black_F",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC148",1],["SmokeShell",4,1],["30Rnd_9x21_Mag_SMG_02",4,30]]],[],"H_Tank_black_F","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]]
			};

			case "O_Officer_Parade_F": {
				// target
				(_this select 0) setUnitloadout [[],[],["hgun_Pistol_heavy_02_F","","","",["6Rnd_45ACP_Cylinder",6],[],""],["U_O_ParadeUniform_01_CSAT_decorated_F",[["ACE_elasticBandage",3],["ACE_packingBandage",1],["6Rnd_45ACP_Cylinder",4,6]]],[],[],"H_Beret_CSAT_01_F","G_Squares_Tinted",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]]
			};

			default {
				// Rifleman/FTL
				(_this select 0) setUnitloadout [["arifle_CTAR_blk_F","","","optic_Arco_blk_F",["30Rnd_580x42_Mag_F",30],[],""],[],[],["U_O_T_Officer_F",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2]]],["V_HarnessO_ghex_F",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["MiniGrenade",4,1],["30Rnd_580x42_Mag_F",10,30]]],[],"H_PASGT_basic_olive_F","",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]]
			}
		};
	},
	true,
	[],
	true
] call CBA_fnc_addClassEventHandler;