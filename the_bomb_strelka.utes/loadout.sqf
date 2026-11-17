private _unit = (_this select 0);

// private _helmet = selectRandom ["CUP_H_CZ_Helmet07", "CUP_H_CZ_Helmet08", "CUP_H_CZ_Helmet09", "CUP_H_CZ_Helmet10"];
private _uniform = selectRandom ["CUP_U_B_USMC_MCCUU", "CUP_U_B_USMC_MCCUU_gloves", "CUP_U_B_USMC_MCCUU_pads", "CUP_U_B_USMC_MCCUU_pads_gloves", "CUP_U_B_USMC_MCCUU_roll", "CUP_U_B_USMC_MCCUU_roll_gloves", "CUP_U_B_USMC_MCCUU_roll_pads", "CUP_U_B_USMC_MCCUU_roll_pads_gloves", "CUP_U_B_USMC_MCCUU_roll_2", "CUP_U_B_USMC_MCCUU_roll_2_gloves", "CUP_U_B_USMC_MCCUU_roll_2_pads", "CUP_U_B_USMC_MCCUU_roll_2_pads_gloves"];
private _vest = selectRandom ["CUP_V_B_RRV_DA1_CB", "CUP_V_B_RRV_DA2_CB"];

switch (typeOf _unit) do {

	case "CUP_B_FR_Soldier_Assault": {
		_unit setUnitLoadout [["CUP_arifle_M4A1","CUP_muzzle_snds_M16","","CUP_optic_ACOG",["CUP_30Rnd_556x45_Stanag",30],[],""],[],["CUP_hgun_Colt1911","","","",["CUP_7Rnd_45ACP_1911",7],[],""],[_uniform,[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACRE_PRC152",1]]],[_vest,[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["HandGrenade",2,1],["SmokeShell",2,1],["CUP_7Rnd_45ACP_1911",1,7],["CUP_30Rnd_556x45_Stanag",8,30]]],[],"CUP_H_CZ_Helmet07","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch","CUP_NVG_PVS15_black"]];
	};
	
	case "CUP_B_FR_Soldier_AR": {
		_unit setUnitLoadout [["CUP_lmg_Mk48_nohg","","CUP_acc_ANPEQ_15_Black","CUP_optic_CompM2_low",["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",100],[],""],[],["CUP_hgun_M9","CUP_muzzle_snds_M9","","",["CUP_15Rnd_9x19_M9",15],[],""],[_uniform,[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["CUP_15Rnd_9x19_M9",1,15]]],[_vest,[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["SmokeShell",2,1],["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",2,100]]],["B_AssaultPack_cbr",[["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",3,100],["HandGrenade",2,1],["ACE_SpareBarrel",1,1]]],"CUP_H_CZ_Helmet07","",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","CUP_NVG_PVS15_black"]];
	};

	case "CUP_B_FR_Soldier_Assault_GL": {
		_unit setUnitLoadout [["CUP_arifle_M4A1_GL_carryhandle","CUP_muzzle_snds_M16","","CUP_optic_HoloBlack",["CUP_30Rnd_556x45_Stanag",30],["CUP_1Rnd_HEDP_M203",1],""],[],["CUP_hgun_Colt1911","","","",["CUP_7Rnd_45ACP_1911",7],[],""],[_uniform,[["ACE_elasticBandage",10],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["CUP_1Rnd_HEDP_M203",3,1]]],[_vest,[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["HandGrenade",2,1],["SmokeShell",2,1],["CUP_7Rnd_45ACP_1911",1,7],["CUP_30Rnd_556x45_Stanag",7,30],["CUP_1Rnd_HEDP_M203",2,1]]],[],"CUP_H_CZ_Helmet07","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch","CUP_NVG_PVS15_black"]];
	};

	case "CUP_B_FR_Medic": {
		_unit setUnitLoadout [["CUP_arifle_M4A1","CUP_muzzle_snds_M16","","CUP_optic_ACOG",["CUP_30Rnd_556x45_Stanag",30],[],""],[],["CUP_hgun_M9","CUP_muzzle_snds_M9","","",["CUP_15Rnd_9x19_M9",15],[],""],[_uniform,[["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_tourniquet",4],["CUP_30Rnd_556x45_Stanag",1,30]]],[_vest,[["ACRE_PRC343",1],["HandGrenade",2,1],["SmokeShell",2,1],["CUP_30Rnd_556x45_Stanag",8,30],["CUP_15Rnd_9x19_M9",2,15]]],["B_AssaultPack_cbr",[["ACE_elasticBandage",18],["ACE_packingBandage",5],["ACE_epinephrine",12],["ACE_morphine",8],["ACE_salineIV",4],["ACE_salineIV_250",8],["ACE_tourniquet",4],["ACE_splint",12],["ACE_surgicalKit",1],["ACE_personalAidKit",1]]],"CUP_H_CZ_Helmet07","",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","CUP_NVG_PVS15_black"]];
	};

	case "CUP_B_FR_Soldier_Marksman": { //Sniper
		_unit setUnitLoadout [["CUP_srifle_m110_kac_black","CUP_muzzle_snds_M110_black","CUP_acc_ANPEQ_15_Black","ACE_optic_SOS_PIP",["CUP_20Rnd_762x51_B_M110",20],[],"CUP_bipod_Harris_1A2_L_BLK"],[],["CUP_hgun_M9","CUP_muzzle_snds_M9","","",["CUP_15Rnd_9x19_M9",15],[],""],["CUP_U_B_USMC_MCCUU_M81_pads_gloves",[["ACE_elasticBandage",15],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACRE_PRC152",1],["cup_optic_cws_nv_rds",1]]],["CUP_V_B_Interceptor_Grenadier_M81",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["ACE_RangeCard",1],["ACE_Kestrel4500",1],["HandGrenade",2,1],["SmokeShell",2,1],["CUP_20Rnd_762x51_B_M110",6,20],["CUP_15Rnd_9x19_M9",2,15]]],[],"CUP_H_USArmy_MICH_Headset_M81","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","CUP_NVG_PVS15_black"]];
	};

	// case "CUP_B_FR_Story_Miles": { //Spotter
	// 	_unit setUnitLoadout [["CUP_arifle_M4A1_BUIS_camo_GL","CUP_muzzle_snds_M16_camo","","CUP_optic_ACOG_Reflex_Wood",["CUP_30Rnd_556x45_Stanag_Mk16_woodland",30],[],""],[],["CUP_hgun_M9","CUP_muzzle_snds_M9","","",["CUP_15Rnd_9x19_M9",15],[],""],["CUP_U_B_USMC_MCCUU_M81_pads_gloves",[["ACE_elasticBandage",15],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACRE_PRC152_ID_1",1]]],["CUP_V_B_Interceptor_Grenadier_M81",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["ACE_Kestrel4500",1],["ACE_RangeCard",1],["HandGrenade",2,1],["SmokeShell",2,1],["1Rnd_HE_Grenade_shell",6,1],["CUP_30Rnd_556x45_Stanag_Mk16_woodland",6,30],["CUP_1Rnd_Smoke_M203",2,1],["CUP_15Rnd_9x19_M9",1,15]]],[],"CUP_H_USArmy_MICH_Headset_M81","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch","ACE_NVG_Gen1"]];
	// };	
}