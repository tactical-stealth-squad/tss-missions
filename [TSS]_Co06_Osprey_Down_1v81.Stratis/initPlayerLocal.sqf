Params ["_player", "_didJIP"];

// Ausschluss des HCs ///
if (!hasinterface) exitWith {};

/// Client Scripte ///
doStop _player;
// Terrain
setterraingrid 3.125;
// Briefing
[] spawn compile preprocessFileLineNumbers "scripts\briefing.sqf";
// Halo
if (!_didJIP) then {
	[_player, 4000, false, false, true] spawn compile preprocessFileLineNumbers "scripts\fn_HALO.sqf";
};

//--------------------Loadout-------------------------
private _helmet = selectRandom ["H_HelmetSpecB", "H_HelmetSpecB_blk", "H_HelmetSpecB_paint1", "H_HelmetSpecB_paint2", "H_HelmetSpecB_sand", "H_HelmetSpecB_snakeskin"];
private _facewear = selectRandom ["G_Balaclava_lowprofile", "G_Lowprofile"];

switch (typeOf _player) do {
	//TL
	case "B_Soldier_TL_F": {
		_player setUnitLoadout [["arifle_SPAR_02_blk_F","muzzle_snds_M","acc_pointer_IR","ACE_optic_Hamr_2D",["ACE_30Rnd_556x45_Stanag_M995_AP_mag",30],[],""],[],["hgun_Pistol_heavy_01_F","muzzle_snds_acp","acc_flashlight_pistol","",["11Rnd_45ACP_Mag",15],[],""],["U_B_CombatUniform_mcam",[["ACE_elasticBandage",13],["ACE_packingBandage",5],["ACE_HuntIR_monitor",1],["ACE_quikclot",2]]],["V_PlateCarrier2_rgr",[["ACE_salineIV_500",2],["ACE_splint",2],["ACE_MapTools",1],["ACRE_PRC343",1],["ACE_tourniquet",4],["ACE_morphine",3],["ACE_EarPlugs",1],["ACE_epinephrine",3],["HandGrenade",2,1],["SmokeShell",2,1],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",8,30],["11Rnd_45ACP_Mag",1,15]]],[],_helmet,_facewear,[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter","ACE_NVG_Wide_Black"]];
	};
	//Ammo Bearer
	case "B_Soldier_A_F": {
		_player setUnitLoadout [["arifle_SPAR_01_blk_F","muzzle_snds_M","acc_pointer_IR","ACE_optic_Hamr_2D",["ACE_30Rnd_556x45_Stanag_M995_AP_mag",30],[],""],[],["hgun_Pistol_heavy_01_F","muzzle_snds_acp","acc_flashlight_pistol","",["11Rnd_45ACP_Mag",15],[],""],["U_B_CombatUniform_mcam",[["ACE_elasticBandage",15],["ACE_packingBandage",5],["ACE_epinephrine",4],["ACE_morphine",4],["ACE_tourniquet",4]]],["V_PlateCarrier1_rgr",[["ACE_salineIV_500",2],["ACE_splint",2],["ACE_MapTools",1],["ACE_quikclot",2],["ACRE_PRC343",1],["HandGrenade",2,1],["SmokeShell",2,1],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",10,30],["11Rnd_45ACP_Mag",1,15]]],["B_AssaultPack_rgr",[["ACE_salineIV_250",1],["ACE_EarPlugs",1],["200Rnd_556x45_Box_Red_F",2,200],["MRAWS_HEAT_F",1,1],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",2,30]]],_helmet,_facewear,[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter","ACE_NVG_Wide_Black"]];
	};
	//AR
	case "B_soldier_AR_F": {
		_player setUnitLoadout [["LMG_03_F","muzzle_snds_H_MG_blk_F","acc_pointer_IR","optic_Holosight_blk_F",["200Rnd_556x45_Box_Tracer_Red_F",200],[],""],[],["hgun_Pistol_heavy_01_F","muzzle_snds_acp","acc_flashlight_pistol","",["11Rnd_45ACP_Mag",15],[],""],["U_B_CombatUniform_mcam",[["ACE_elasticBandage",15],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["11Rnd_45ACP_Mag",1,15]]],["V_PlateCarrier2_rgr",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["ACE_MapTools",1],["ACE_quikclot",2],["HandGrenade",2,1],["SmokeShell",2,1],["11Rnd_45ACP_Mag",1,15],["200Rnd_556x45_Box_Tracer_Red_F",2,200]]],[],_helmet,_facewear,[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter","ACE_NVG_Wide_Black"]];
	};
	//GRE
	case "B_Soldier_GL_F": {
		_player setUnitLoadout [["arifle_SPAR_01_GL_blk_F","muzzle_snds_M","acc_pointer_IR","optic_Holosight_blk_F",["ACE_30Rnd_556x45_Stanag_M995_AP_mag",30],["1Rnd_HE_Grenade_shell",1],""],[],["hgun_Pistol_heavy_01_F","muzzle_snds_acp","acc_flashlight_pistol","",["11Rnd_45ACP_Mag",15],[],""],["U_B_CombatUniform_mcam",[["ACE_elasticBandage",14],["ACE_packingBandage",5],["ACE_epinephrine",4],["ACE_morphine",3],["ACE_tourniquet",4],["11Rnd_45ACP_Mag",1,15]]],["V_PlateCarrier2_rgr_noflag_F",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["ACE_EarPlugs",1],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",6,30],["1Rnd_HE_Grenade_shell",12,1],["ACE_HuntIR_M203",2,1],["1Rnd_Smoke_Grenade_shell",2,1]]],[],_helmet,_facewear,[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter","ACE_NVG_Wide_Black"]];
	};
	//AT
	case "B_soldier_LAT_F": {
		_player setUnitLoadout [["arifle_SPAR_01_blk_F","muzzle_snds_M","acc_pointer_IR","optic_Holosight_blk_F",["ACE_30Rnd_556x45_Stanag_M995_AP_mag",30],[],""],["launch_MRAWS_sand_rail_F","","","",["MRAWS_HEAT_F",1],[],""],["hgun_Pistol_heavy_01_F","muzzle_snds_acp","acc_flashlight_pistol","",["11Rnd_45ACP_Mag",15],[],""],["U_B_CombatUniform_mcam",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["11Rnd_45ACP_Mag",1,15]]],["V_PlateCarrier2_rgr",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["ACE_quikclot",2],["HandGrenade",2,1],["SmokeShell",2,1],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",11,30]]],[],_helmet,_facewear,[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter","ACE_NVG_Wide_Black"]];
	};
	//Marksman
	case "B_soldier_M_F": {
		_player setUnitLoadout [["arifle_SPAR_03_blk_F","muzzle_snds_B","acc_pointer_IR","ACE_optic_SOS_2D",["ACE_10Rnd_762x51_M993_AP_Mag",10],[],"bipod_01_F_blk"],[],["hgun_Pistol_heavy_01_F","muzzle_snds_acp","acc_flashlight_pistol","",["11Rnd_45ACP_Mag",15],[],""],["U_B_CombatUniform_mcam",[["ACE_elasticBandage",15],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",3],["ACE_tourniquet",4],["ACE_10Rnd_762x51_M993_AP_Mag",1,10]]],["V_PlateCarrier2_rgr",[["ACE_salineIV_500",2],["ACE_splint",2],["ACE_RangeCard",1],["ACE_Kestrel4500",1],["ACRE_PRC343",1],["ACE_quikclot",2],["ACE_MapTools",1],["HandGrenade",2,1],["SmokeShell",2,1],["ACE_20Rnd_762x51_M993_AP_Mag",7,20]]],[],_helmet,_facewear,[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter","ACE_NVG_Wide_Black"]];
	};
	//CLS
	case "B_medic_F": {
		_player setUnitLoadout [["arifle_SPAR_02_blk_F","muzzle_snds_M","acc_pointer_IR","ACE_optic_Hamr_2D",["ACE_30Rnd_556x45_Stanag_M995_AP_mag",30],[],""],[],["hgun_Pistol_heavy_01_F","muzzle_snds_acp","acc_flashlight_pistol","",["11Rnd_45ACP_Mag",15],[],""],["U_B_CombatUniform_mcam",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["11Rnd_45ACP_Mag",1,15]]],["V_PlateCarrier2_rgr",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["ACE_EarPlugs",1],["ACE_MapTools",1],["ACE_quikclot",2],["HandGrenade",2,1],["SmokeShell",2,1],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",10,30]]],["B_TacticalPack_oli",[["ACE_elasticBandage",18],["ACE_packingBandage",5],["ACE_epinephrine",12],["ACE_morphine",8],["ACE_salineIV",4],["ACE_salineIV_250",8],["ACE_tourniquet",4],["ACE_splint",12],["ACE_personalAidKit",1],["ACE_surgicalKit",1]]],_helmet,_facewear,[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter","ACE_NVG_Wide_Black"]];
	};
};


//--------------------Loadout with KAT-------------------------
/* switch (typeOf _player) do {
	//TL
	case "B_Soldier_TL_F": {
		_player setUnitLoadout [["arifle_SPAR_02_blk_F","muzzle_snds_M","acc_pointer_IR","ACE_optic_Hamr_2D",["ACE_30Rnd_556x45_Stanag_M995_AP_mag",30],[],""],[],["hgun_Pistol_heavy_01_F","muzzle_snds_acp","acc_flashlight_pistol","",["11Rnd_45ACP_Mag",15],[],""],["U_B_CombatUniform_mcam",[["ACE_elasticBandage",13],["ACE_packingBandage",5],["ACE_HuntIR_monitor",1],["ACE_quikclot",2]]],["V_PlateCarrier2_rgr",[["ACE_salineIV_500",2],["ACE_splint",2],["ACE_MapTools",1],["ACRE_PRC343",1],["ACE_tourniquet",4],["ACE_morphine",3],["ACE_EarPlugs",1],["ACE_epinephrine",3],["kat_guedel",2],["kat_chestSeal",1],["kat_aatKit",1],["HandGrenade",2,1],["SmokeShell",2,1],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",8,30],["11Rnd_45ACP_Mag",1,15]]],[],_helmet,"",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter","ACE_NVG_Wide_Black"]];
	};
	//Ammo Bearer
	case "B_Soldier_A_F": {
		_player setUnitLoadout [["arifle_SPAR_01_blk_F","muzzle_snds_M","acc_pointer_IR","ACE_optic_Hamr_2D",["ACE_30Rnd_556x45_Stanag_M995_AP_mag",30],[],""],[],["hgun_Pistol_heavy_01_F","muzzle_snds_acp","acc_flashlight_pistol","",["11Rnd_45ACP_Mag",15],[],""],["U_B_CombatUniform_mcam",[["ACE_elasticBandage",15],["ACE_packingBandage",5],["ACE_epinephrine",4],["ACE_morphine",4],["ACE_tourniquet",4],["kat_chestSeal",2],["kat_guedel",2],["kat_aatKit",1]]],["V_PlateCarrier1_rgr",[["ACE_salineIV_500",2],["ACE_splint",2],["ACE_MapTools",1],["ACE_quikclot",2],["ACRE_PRC343",1],["HandGrenade",2,1],["SmokeShell",2,1],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",10,30],["11Rnd_45ACP_Mag",1,15]]],["B_AssaultPack_rgr",[["ACE_salineIV_250",1],["ACE_EarPlugs",1],["200Rnd_556x45_Box_Red_F",2,200],["MRAWS_HEAT_F",1,1],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",2,30]]],_helmet,"",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter","ACE_NVG_Wide_Black"]];
	};
	//AR
	case "B_soldier_AR_F": {
		_player setUnitLoadout [["LMG_03_F","muzzle_snds_H_MG_blk_F","acc_pointer_IR","optic_Holosight_blk_F",["200Rnd_556x45_Box_Tracer_Red_F",200],[],""],[],["hgun_Pistol_heavy_01_F","muzzle_snds_acp","acc_flashlight_pistol","",["11Rnd_45ACP_Mag",15],[],""],["U_B_CombatUniform_mcam",[["ACE_elasticBandage",15],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["kat_chestSeal",2],["kat_guedel",2],["11Rnd_45ACP_Mag",1,15]]],["V_PlateCarrier2_rgr",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["ACE_MapTools",1],["ACE_quikclot",2],["HandGrenade",2,1],["SmokeShell",2,1],["11Rnd_45ACP_Mag",1,15],["200Rnd_556x45_Box_Tracer_Red_F",2,200]]],[],"H_HelmetSpecB_snakeskin","",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter","ACE_NVG_Wide_Black"]];
	};
	//GRE
	case "B_Soldier_GL_F": {
		_player setUnitLoadout [["arifle_SPAR_01_GL_blk_F","muzzle_snds_M","acc_pointer_IR","optic_Holosight_blk_F",["ACE_30Rnd_556x45_Stanag_M995_AP_mag",30],["1Rnd_HE_Grenade_shell",1],""],[],["hgun_Pistol_heavy_01_F","muzzle_snds_acp","acc_flashlight_pistol","",["11Rnd_45ACP_Mag",15],[],""],["U_B_CombatUniform_mcam",[["ACE_elasticBandage",14],["ACE_packingBandage",5],["ACE_epinephrine",4],["ACE_morphine",3],["ACE_tourniquet",4],["kat_chestSeal",2],["kat_guedel",2],["11Rnd_45ACP_Mag",1,15]]],["V_PlateCarrier2_rgr_noflag_F",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["ACE_EarPlugs",1],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",6,30],["1Rnd_HE_Grenade_shell",12,1],["ACE_HuntIR_M203",2,1],["1Rnd_Smoke_Grenade_shell",2,1]]],[],_helmet,"",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter","ACE_NVG_Wide_Black"]];
	};
	//AT
	case "B_soldier_LAT_F": {
		_player setUnitLoadout [["arifle_SPAR_01_blk_F","muzzle_snds_M","acc_pointer_IR","optic_Holosight_blk_F",["ACE_30Rnd_556x45_Stanag_M995_AP_mag",30],[],""],["launch_MRAWS_sand_rail_F","","","",["MRAWS_HEAT_F",1],[],""],["hgun_Pistol_heavy_01_F","muzzle_snds_acp","acc_flashlight_pistol","",["11Rnd_45ACP_Mag",15],[],""],["U_B_CombatUniform_mcam",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["kat_chestSeal",2],["kat_guedel",2],["11Rnd_45ACP_Mag",1,15]]],["V_PlateCarrier2_rgr",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["ACE_quikclot",2],["HandGrenade",2,1],["SmokeShell",2,1],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",11,30]]],[],"H_HelmetSpecB_blk","",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter","ACE_NVG_Wide_Black"]];
	};
	//Marksman
	case "B_soldier_M_F": {
		_player setUnitLoadout [["arifle_SPAR_03_blk_F","muzzle_snds_B","acc_pointer_IR","ACE_optic_SOS_2D",["ACE_10Rnd_762x51_M993_AP_Mag",10],[],"bipod_01_F_blk"],[],["hgun_Pistol_heavy_01_F","muzzle_snds_acp","acc_flashlight_pistol","",["11Rnd_45ACP_Mag",15],[],""],["U_B_CombatUniform_mcam",[["ACE_elasticBandage",15],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",3],["ACE_tourniquet",4],["kat_chestSeal",2],["kat_guedel",2],["ACE_10Rnd_762x51_M993_AP_Mag",1,10]]],["V_PlateCarrier2_rgr",[["ACE_salineIV_500",2],["ACE_splint",2],["ACE_RangeCard",1],["ACE_Kestrel4500",1],["ACRE_PRC343",1],["ACE_quikclot",2],["ACE_MapTools",1],["HandGrenade",2,1],["SmokeShell",2,1],["ACE_20Rnd_762x51_M993_AP_Mag",7,20]]],[],"H_HelmetSpecB_paint2","",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter","ACE_NVG_Wide_Black"]];
	};
	//CLS
	case "B_medic_F": {
		_player setUnitLoadout [["arifle_SPAR_02_blk_F","muzzle_snds_M","acc_pointer_IR","ACE_optic_Hamr_2D",["ACE_30Rnd_556x45_Stanag_M995_AP_mag",30],[],""],[],["hgun_Pistol_heavy_01_F","muzzle_snds_acp","acc_flashlight_pistol","",["11Rnd_45ACP_Mag",15],[],""],["U_B_CombatUniform_mcam",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["11Rnd_45ACP_Mag",1,15]]],["V_PlateCarrier2_rgr",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["ACE_EarPlugs",1],["ACE_MapTools",1],["ACE_quikclot",2],["HandGrenade",2,1],["SmokeShell",2,1],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",10,30]]],["B_TacticalPack_oli",[["kat_accuvac",1],["ACE_elasticBandage",18],["ACE_packingBandage",5],["ACE_epinephrine",12],["ACE_morphine",8],["ACE_salineIV",4],["ACE_salineIV_250",8],["ACE_tourniquet",4],["ACE_splint",12],["kat_larynx",15],["kat_chestSeal",5],["kat_aatKit",5],["kat_Pulseoximeter",1],["kat_AED",1],["ACE_personalAidKit",1],["ACE_surgicalKit",1],["kat_Painkiller",1,10]]],_helmet,"",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter","ACE_NVG_Wide_Black"]];
	};
}; */

[teleport] call compile preprocessFileLineNumbers "fn_addTeleporter.sqf";