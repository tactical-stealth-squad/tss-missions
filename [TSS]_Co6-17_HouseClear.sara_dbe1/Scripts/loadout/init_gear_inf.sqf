/*

By Nobody ?
Grundidee/Scriptgrundlage BERT

*/

private _gear = _this select 0;

_gear addAction [
	("<t color=""#30fcff"">" + ("FireTeam Leader / Einsatzführung") + "</t>"),
	{
		(_this select 1) setUnitLoadout [["CUP_arifle_ACRC_blk_556","CUP_muzzle_snds_M16","CUP_acc_ANPEQ_15_Flashlight_Black_L","CUP_optic_AIMM_M68_BLK",["CUP_30Rnd_556x45_Stanag",30],[],""],[],["CUP_hgun_M9","CUP_muzzle_snds_M9","","",["CUP_15Rnd_9x19_M9",15],[],""],["CUP_U_I_RACS_Urban_1",[["ACE_packingBandage",5],["ACE_quikclot",3],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_Flashlight_MX991",1],["ACE_MapTools",1],["ACE_morphine",2],["ACE_splint",2],["ACE_tourniquet",4],["ACRE_PRC148",1],["ACE_elasticBandage",12],["ACE_microDAGR",1],["CUP_15Rnd_9x19_M9",1,15]]],["CUP_V_B_Armatus_BB_Black",[["ACRE_PRC152",1],["ACE_salineIV_500",2],["SmokeShellPurple",2,1],["ACE_M84",2,1],["SmokeShell",2,1],["CUP_30Rnd_556x45_Stanag",10,30],["CUP_HandGrenade_M67",1,1]]],[],"CUP_H_RACS_Helmet_TPAT","G_Balaclava_blk",["ACE_Vector","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","NVGoggles_OPFOR"]];
	},
	[], 1.5, true, true, "", "true", 5
];

_gear addAction [
	("<t color=""#30fcff"">" + ("Rifleman (SPAS-12)") + "</t>"),
	{
		(_this select 1) setUnitLoadout [["CUP_sgun_SPAS12","","","",["CUP_8Rnd_12Gauge_Slug",8],[],""],[],["CUP_hgun_M9","CUP_muzzle_snds_M9","","",["CUP_15Rnd_9x19_M9",15],[],""],["CUP_U_I_RACS_Urban_1",[["ACE_packingBandage",5],["ACE_quikclot",3],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_Flashlight_MX991",1],["ACE_MapTools",1],["ACE_morphine",2],["ACE_splint",2],["ACE_tourniquet",4],["ACE_elasticBandage",12],["ACE_microDAGR",1],["ACRE_PRC148",1],["CUP_15Rnd_9x19_M9",1,15]]],["CUP_V_B_Armatus_BB_Black",[["ACE_salineIV_500",2],["SmokeShellPurple",2,1],["ACE_M84",2,1],["SmokeShell",2,1],["CUP_8Rnd_12Gauge_Slug",15,8],["CUP_8Rnd_12Gauge_Pellets_No4_Buck",2,8],["CUP_15Rnd_9x19_M9",2,15],["CUP_8Rnd_12Gauge_HE",2,8]]],[],"CUP_H_RACS_Helmet_TPAT","G_Balaclava_blk",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","NVGoggles_OPFOR"]];
	}, [], 1.5, true, true, "", "true", 5];

_gear addAction [
	("<t color=""#30fcff"">" + ("Rifleman (AA-12)") + "</t>"),
	{
		(_this select 1) setUnitLoadout [["CUP_sgun_AA12","","","",["CUP_20Rnd_B_AA12_Slug",20],[],""],[],["CUP_hgun_M9","CUP_muzzle_snds_M9","","",["CUP_15Rnd_9x19_M9",15],[],""],["CUP_U_I_RACS_Urban_1",[["ACE_packingBandage",5],["ACE_quikclot",3],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_Flashlight_MX991",1],["ACE_MapTools",1],["ACE_morphine",2],["ACE_splint",2],["ACE_tourniquet",4],["ACE_elasticBandage",12],["ACE_microDAGR",1],["ACRE_PRC148",1],["CUP_15Rnd_9x19_M9",1,15]]],["CUP_V_B_Armatus_BB_Black",[["SmokeShellPurple",2,1],["ACE_M84",2,1],["SmokeShell",2,1],["CUP_20Rnd_B_AA12_Slug",3,20],["CUP_20Rnd_B_AA12_HE",1,20],["CUP_20Rnd_B_AA12_Buck_4",1,20]]],[],"CUP_H_RACS_Helmet_TPAT","G_Balaclava_blk",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","NVGoggles_OPFOR"]];
	}, [], 1.5, true, true, "", "true", 5];

_gear addAction [
	("<t color=""#30fcff"">" + ("Rifleman") + "</t>"),
	{
		(_this select 1) setUnitLoadout [["CUP_arifle_ACRC_blk_556","CUP_muzzle_snds_M16","CUP_acc_ANPEQ_15_Flashlight_Black_L","CUP_optic_AIMM_M68_BLK",["CUP_30Rnd_556x45_Stanag",30],[],""],[],["CUP_hgun_M9","CUP_muzzle_snds_M9","","",["CUP_15Rnd_9x19_M9",15],[],""],["CUP_U_I_RACS_Urban_1",[["ACE_packingBandage",5],["ACE_quikclot",3],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_Flashlight_MX991",1],["ACE_MapTools",1],["ACE_morphine",2],["ACE_splint",2],["ACE_tourniquet",4],["ACRE_PRC148",1],["ACE_elasticBandage",12],["ACE_microDAGR",1],["CUP_15Rnd_9x19_M9",1,15]]],["CUP_V_B_Armatus_BB_Black",[["ACE_salineIV_500",2],["SmokeShellPurple",2,1],["ACE_M84",2,1],["SmokeShell",2,1],["CUP_30Rnd_556x45_Stanag",10,30],["CUP_HandGrenade_M67",1,1]]],[],"CUP_H_RACS_Helmet_TPAT","G_Balaclava_blk",["","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","NVGoggles_OPFOR"]];
	},
	[], 1.5, true, true, "", "true", 5
];

_gear addAction [
	("<t color=""#30fcff"">" + ("Rifleman (MP5)") + "</t>"),
	{
		(_this select 1) setUnitLoadout [["CUP_smg_MP5SD6","","","CUP_optic_Aimpoint_5000",["CUP_30Rnd_9x19_MP5",30],[],""],[],["CUP_hgun_M9","CUP_muzzle_snds_M9","","",["CUP_15Rnd_9x19_M9",15],[],""],["CUP_U_I_RACS_Urban_1",[["ACE_packingBandage",5],["ACE_quikclot",3],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_Flashlight_MX991",1],["ACE_MapTools",1],["ACE_morphine",2],["ACE_splint",2],["ACE_tourniquet",4],["ACE_elasticBandage",12],["ACE_microDAGR",1],["ACRE_PRC148",1]]],["CUP_V_B_Armatus_BB_Black",[["ACE_salineIV_500",2],["SmokeShellPurple",2,1],["ACE_M84",2,1],["SmokeShell",2,1],["CUP_30Rnd_9x19_MP5",10,30],["CUP_HandGrenade_M67",1,1]]],[],"CUP_H_RACS_Helmet_TPAT","G_Balaclava_blk",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","NVGoggles_OPFOR"]];
	},
	[], 1.5, true, true, "", "true", 5
];

_gear addAction [
	("<t color=""#30fcff"">" + ("Marksman") + "</t>"),
	{
		(_this select 1) setUnitLoadout [["CUP_arifle_Mk17_STD_FG_black","CUP_muzzle_snds_SCAR_H","CUP_acc_ANPEQ_15_Flashlight_Black_L","optic_Nightstalker",["CUP_20Rnd_762x51_B_SCAR_bkl",20],[],""],[],["CUP_hgun_M9","CUP_muzzle_snds_M9","","",["CUP_15Rnd_9x19_M9",15],[],""],["CUP_U_I_RACS_Urban_1",[["ACE_packingBandage",5],["ACE_quikclot",3],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_Flashlight_MX991",1],["ACE_MapTools",1],["ACE_morphine",2],["ACE_splint",2],["ACE_tourniquet",4],["ACE_elasticBandage",12],["ACRE_PRC148",1],["CUP_15Rnd_9x19_M9",1,15]]],["CUP_V_B_Armatus_BB_Black",[["ACE_RangeCard",1],["ACE_Kestrel4500",1],["ACE_microDAGR",1],["ACE_salineIV_500",2],["SmokeShellPurple",2,1],["SmokeShell",2,1],["ACE_M84",2,1],["CUP_20Rnd_762x51_B_SCAR_bkl",8,20],["APERSMine_Range_Mag",2,1]]],[],"CUP_H_RACS_Helmet_TPAT","G_Balaclava_blk",["ACE_Vector","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","NVGoggles_OPFOR"]];
        call compile preprocessFileLineNumbers "scripts\disableThermal.sqf";
	},
	[], 1.5, true, true, "", "true", 5
];

_gear addAction [
	("<t color=""#30fcff"">" + ("Medic") + "</t>"),
	{
		(_this select 1) setUnitLoadout [["CUP_arifle_ACRC_blk_556","CUP_muzzle_snds_M16","CUP_acc_ANPEQ_15_Flashlight_Black_L","CUP_optic_AIMM_M68_BLK",["CUP_30Rnd_556x45_Stanag",30],[],""],[],["CUP_hgun_M9","CUP_muzzle_snds_M9","","",["CUP_15Rnd_9x19_M9",15],[],""],["CUP_U_I_RACS_Urban_1",[["ACE_packingBandage",5],["ACE_quikclot",3],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_Flashlight_MX991",1],["ACE_MapTools",1],["ACE_morphine",2],["ACE_splint",2],["ACE_tourniquet",4],["ACRE_PRC148",1],["ACE_elasticBandage",12],["ACE_microDAGR",1],["CUP_15Rnd_9x19_M9",1,15],["SmokeShell",1,1]]],["CUP_V_B_Armatus_BB_Black",[["ACE_salineIV_500",5],["ACE_elasticBandage",20],["ACE_packingBandage",10],["ACE_epinephrine",10],["ACE_morphine",10],["ACE_splint",4],["SmokeShellPurple",2,1],["SmokeShell",1,1],["CUP_30Rnd_556x45_Stanag",8,30]]],[],"CUP_H_RACS_Helmet_TPAT","G_Balaclava_blk",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","NVGoggles_OPFOR"]];
        (_this select 1) setVariable ["ace_medical_medicClass", 2, true];
	},
	[], 1.5, true, true, "", "true", 5
];

_gear addAction [
	("<t color=""#30fcff"">" + ("Pilot") + "</t>"),
	{
		(_this select 1) setUnitLoadout [["CUP_smg_MP5A5","","","",["CUP_30Rnd_9x19_MP5",30],[],""],[],["CUP_hgun_M9","","","",["CUP_15Rnd_9x19_M9",15],[],""],["CUP_U_B_USArmy_PilotOverall",[["ACE_packingBandage",5],["ACE_quikclot",3],["ACE_CableTie",1],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_morphine",2],["ACE_elasticBandage",12],["ACE_splint",2],["ACE_tourniquet",4],["ACE_salineIV_250",1]]],["CUP_V_B_PASGT_no_bags_OD",[["ACE_Flashlight_MX991",1],["ACRE_PRC148",1],["ACRE_PRC152",1],["SmokeShell",2,1],["SmokeShellGreen",1,1],["CUP_15Rnd_9x19_M9",1,15]]],[],"CUP_H_SPH4_green","G_Balaclava_blk",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","CUP_NVG_GPNVG_black"]];
	},
	[], 1.5, true, true, "", "true", 5
];

nil