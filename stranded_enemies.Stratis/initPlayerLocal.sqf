Params ["_player", "_didJIP"];

/// Client Scripte ///
if (hasinterface) then {
	doStop _player;
	// Terrain
	setTerrainGrid 3.125;
	// Briefing
	[] call compile preprocessFileLineNumbers "briefing.sqf";
};

switch (typeOf _player) do {

	case "I_Soldier_SL_F": {
		_player setUnitLoadout  [["arifle_SPAR_01_blk_F","muzzle_snds_M","ACE_DBAL_A3_Red","ACE_optic_Hamr_2D",["ACE_30Rnd_556x45_Stanag_M995_AP_mag",30],[],""],[],["hgun_Pistol_heavy_02_F","","","",["6Rnd_45ACP_Cylinder",6],[],""],["U_B_CombatUniform_mcam_tshirt",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2],["6Rnd_45ACP_Cylinder",2,6]]],["V_PlateCarrier2_rgr_noflag_F",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_BF888S",1],["ACE_HuntIR_monitor",1],["HandGrenade",2,1],["SmokeShell",2,1],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",8,30]]],[],"H_HelmetSpecB","",["ACE_MX2A","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
	};

	case "I_Soldier_AR_F": {
		_player setUnitLoadout [["LMG_03_F","muzzle_snds_M","ACE_DBAL_A3_Red","ACE_optic_MRCO_2D",["200Rnd_556x45_Box_Tracer_Red_F",200],[],""],[],["hgun_P07_blk_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_I_G_resistanceLeader_F",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2],["16Rnd_9x21_Mag",1,17]]],["V_PlateCarrier2_blk",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_BF888S",1],["HandGrenade",2,1],["SmokeShell",2,1],["200Rnd_556x45_Box_Tracer_Red_F",2,200],["16Rnd_9x21_Mag",1,17]]],["B_AssaultPack_blk",[["200Rnd_556x45_Box_Tracer_Red_F",4,200]]],"H_HelmetSpecB_blk","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
	};

	case "I_Soldier_GL_F": {
		_player setUnitLoadout [["arifle_SPAR_01_GL_blk_F","muzzle_snds_M","ACE_DBAL_A3_Red","optic_Holosight_blk_F",["ACE_30Rnd_556x45_Stanag_M995_AP_mag",30],["1Rnd_HE_Grenade_shell",1],""],[],["hgun_Pistol_heavy_02_F","","","",["6Rnd_45ACP_Cylinder",6],[],""],["U_I_G_Story_Protagonist_F",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2],["6Rnd_45ACP_Cylinder",2,6]]],["V_MU_PlateCarrier2_cbr",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_BF888S",1],["HandGrenade",2,1],["SmokeShell",2,1],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",9,30]]],["B_AssaultPack_cbr",[["1Rnd_HE_Grenade_shell",15,1],["1Rnd_SmokeRed_Grenade_shell",2,1],["1Rnd_Smoke_Grenade_shell",2,1],["ACE_HuntIR_M203",3,1],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",4,30],["200Rnd_556x45_Box_Tracer_Red_F",1,200]]],"H_HelmetSpecB_paint2","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
	};

	case "I_medic_F": {
		_player setUnitLoadout [["arifle_SPAR_01_blk_F","muzzle_snds_M","ACE_DBAL_A3_Red","optic_Yorris",["ACE_30Rnd_556x45_Stanag_M995_AP_mag",30],[],""],[],[],["U_C_IDAP_Man_cargo_F",[["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_tourniquet",4]]],["V_MU_PlateCarrier2_2_cbr",[["ACRE_BF888S",1],["HandGrenade",2,1],["SmokeShell",2,1],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",9,30]]],["B_TacticalPack_blk",[["ACE_elasticBandage",18],["ACE_packingBandage",5],["ACE_epinephrine",12],["ACE_morphine",8],["ACE_salineIV",4],["ACE_salineIV_250",2],["ACE_tourniquet",4],["ACE_splint",12],["ACE_plasmaIV_500",4],["ACE_personalAidKit",1],["ACE_surgicalKit",1]]],"H_HelmetSpecB_blk","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
	};

	case "I_Soldier_LAT_F": {
		_player setUnitLoadout [["arifle_SPAR_01_blk_F","muzzle_snds_M","ACE_DBAL_A3_Red","ACE_optic_Hamr_2D",["ACE_30Rnd_556x45_Stanag_M995_AP_mag",30],[],""],["CUP_launch_M136_Loaded","","","",["CUP_M136_M",1],[],""],["hgun_ACPC2_F","","","",["9Rnd_45ACP_Mag",8],[],""],["U_B_CombatUniform_mcam_tshirt",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2]]],["V_PlateCarrier2_rgr_noflag_F",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_BF888S",1],["HandGrenade",2,1],["SmokeShell",2,1],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",8,30]]],[],"H_HelmetSpecB","",["Rangefinder","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
	};

	case "I_Sniper_F": {
		_player setUnitLoadout [["srifle_LRR_camo_F","","","ACE_optic_LRPS_2D",["7Rnd_408_Mag",7],[],""],[],["CUP_hgun_UZI","CUP_muzzle_snds_UZI","","",["CUP_32Rnd_9x19_UZI_M",32],[],""],["U_B_GhillieSuit",[["ACE_elasticBandage",20],["ACE_packingBandage",10],["ACE_EarPlugs",1],["ACE_epinephrine",4],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",5],["ACE_morphine",4],["ACE_RangeCard",1],["ACE_Kestrel4500",1],["ACE_microDAGR",1],["ACE_ATragMX",1]]],["V_MU_PlateCarrier2_2_rgr",[["ACE_splint",8],["ACRE_BF888S",1],["ACE_salineIV_500",5],["HandGrenade",2,1],["SmokeShell",2,1]]],["B_Carryall_oli",[["7Rnd_408_Mag",10,7],["ACE_7Rnd_408_305gr_Mag",5,7],["CUP_32Rnd_9x19_UZI_M",3,32]]],"H_HelmetLeaderO_ocamo","",["ACE_VectorDay","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
	};

	case "I_Spotter_F": {
		_player setUnitLoadout [["arifle_SPAR_03_snd_F","muzzle_snds_B_snd_F","ACE_DBAL_A3_Red","ACE_optic_SOS_2D",["20Rnd_762x51_Mag",20],[],"bipod_02_F_arid"],[],["hgun_Rook40_F","muzzle_snds_L","","",["16Rnd_9x21_Mag",17],[],""],["U_B_GhillieSuit",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2],["ACE_ATragMX",1],["ACE_DAGR",1],["ACE_Kestrel4500",1],["ACE_microDAGR",1],["ACE_RangeCard",1]]],["V_PlateCarrier2_rgr_noflag_F",[["ACE_splint",8],["ACRE_BF888S",1],["ACRE_PRC152",1],["ACE_salineIV_500",9],["ACE_surgicalKit",1],["HandGrenade",2,1],["SmokeShell",2,1],["16Rnd_9x21_Mag",3,17]]],["B_Carryall_oli",[["ACE_SpottingScope",1],["ACE_Tripod",1],["ACE_EntrenchingTool",1],["MineDetector",1],["ACE_20Rnd_762x51_M993_AP_Mag",15,20]]],"H_HelmetLeaderO_ocamo","",["ACE_VectorDay","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
	};

	default {
		_player setUnitLoadout [["arifle_SPAR_01_blk_F","muzzle_snds_M","ACE_DBAL_A3_Red","optic_Holosight_blk_F",["ACE_30Rnd_556x45_Stanag_M995_AP_mag",30],[],""],["","","","",["CUP_M136_M",1],[],""],["hgun_ACPC2_F","","","",["9Rnd_45ACP_Mag",8],[],""],["U_B_CombatUniform_mcam_tshirt",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2]]],["V_PlateCarrier2_rgr_noflag_F",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_BF888S",1],["HandGrenade",2,1],["SmokeShell",2,1],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",8,30]]],[],"H_HelmetSpecB","",["","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
	};
};