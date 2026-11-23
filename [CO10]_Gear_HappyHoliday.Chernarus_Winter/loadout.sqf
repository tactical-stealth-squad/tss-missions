private _unit = (_this select 0);

private _helmet = selectRandom ["CUP_H_PASGTv2_ERDL_highland", "CUP_H_PASGTv2_WDL_CF", "CUP_H_PASGTv2_WDL_GG", "CUP_H_PASGTv2_WDL","CUP_H_PASGTv2_winter"];
private _uniform = selectRandom ["CUP_U_B_BDUv2_gloves_M81_Winter", "CUP_U_B_BDUv2_gloves_dirty_M81_Winter", "CUP_U_B_BDUv2_gloves_Winter", "CUP_U_B_BDUv2_gloves_dirty_Winter", "CUP_U_B_BDUv2_gloves_Winter_M81", "CUP_U_B_BDUv2_gloves_dirty_Winter_M81"];
//private _vest = selectRandom ["CUP_V_B_PASGT", "CUP_V_B_PASGT_OD", "CUP_V_B_PASGT_winter"];

switch (typeOf _unit) do {

	//Rfl
	case "B_Soldier_F": {
		_unit setUnitLoadout [["CUP_arifle_M16A2","","","",["CUP_30Rnd_556x45_Stanag",30],[],""],[],[],[_uniform,[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2]]],["CUP_V_B_PASGT",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["HandGrenade",2,1],["SmokeShell",2,1],["CUP_30Rnd_556x45_Stanag",6,30]]],[],_helmet,"",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
	};
	
	//AR
	case "B_soldier_AR_F": {
		_unit setUnitLoadout [["CUP_lmg_M249_E2","","","",["CUP_200Rnd_TE4_Green_Tracer_556x45_M249",200],[],""],[],[],[_uniform,[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2]]],["CUP_V_B_PASGT",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["HandGrenade",2,1],["SmokeShell",2,1],["CUP_200Rnd_TE4_Red_Tracer_556x45_M249",1,200]]],["CUP_B_AlicePack_OD",[["CUP_200Rnd_TE4_Red_Tracer_556x45_M249",4,200]]],_helmet,"",[],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
	};

	//GRE
	case "B_Soldier_GL_F": {
		_unit setUnitLoadout [["CUP_arifle_M16A2_GL","","","",["CUP_30Rnd_556x45_Stanag",30],["CUP_1Rnd_HE_M203",1],""],[],[],[_uniform,[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["CUP_30Rnd_556x45_Stanag",1,30]]],["CUP_V_B_PASGT",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["SmokeShell",2,1],["CUP_30Rnd_556x45_Stanag",6,30],["CUP_1Rnd_HE_M203",5,1]]],[],_helmet,"",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
	};

	//AT
	case "B_soldier_LAT_F": {
		_unit setUnitLoadout [["CUP_arifle_Colt727","","","",["CUP_30Rnd_556x45_Stanag",30],[],""],["CUP_launch_Mk153Mod0","","","CUP_optic_SMAW_Scope",["CUP_SMAW_HEAA_M",1],[],""],["CUP_hgun_M9","","","",["CUP_15Rnd_9x19_M9",15],[],""],[_uniform,[["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_tourniquet",4],["CUP_15Rnd_9x19_M9",1,15]]],["CUP_V_B_PASGT",[["ACE_personalAidKit",1],["ACE_surgicalKit",1],["ACRE_PRC343",1],["CUP_30Rnd_556x45_Stanag",8,30]]],[],_helmet,"",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
	};

	//CLS
	case "B_medic_F": {
		_unit setUnitLoadout [["CUP_arifle_Colt727","","","",["CUP_30Rnd_556x45_Stanag",30],[],""],[],[],[_uniform,[["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_tourniquet",4]]],["CUP_V_B_PASGT",[["ACE_personalAidKit",1],["ACE_surgicalKit",1],["ACRE_PRC343",1],["HandGrenade",2,1],["SmokeShell",2,1],["CUP_30Rnd_556x45_Stanag",4,30]]],["CUP_B_AlicePack_OD",[["ACE_elasticBandage",18],["ACE_packingBandage",5],["ACE_epinephrine",12],["ACE_morphine",8],["ACE_salineIV",4],["ACE_salineIV_250",8],["ACE_tourniquet",4],["ACE_splint",12],["CUP_30Rnd_556x45_Stanag",5,30]]],_helmet,"",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
	};

	//Marksman
	case "B_soldier_M_F": {
		_unit setUnitLoadout [["CUP_srifle_M24_blk","","","ACE_optic_SOS_2D",["CUP_5Rnd_762x51_M24",5],[],"CUP_bipod_Harris_1A2_L_BLK"],[],["CUP_hgun_M9","","","",["CUP_15Rnd_9x19_M9",15],[],""],[_uniform,[["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_tourniquet",4],["CUP_5Rnd_762x51_M24",1,5]]],["CUP_V_B_PASGT",[["ACE_personalAidKit",1],["ACE_surgicalKit",1],["ACRE_PRC343",1],["CUP_15Rnd_9x19_M9",1,15],["CUP_5Rnd_762x51_M24",7,5]]],[],"CUP_H_US_patrol_cap_winter","",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
	};

	//Officer
	case "B_officer_F": {
		_unit setUnitLoadout [["CUP_arifle_Colt727","","","",["CUP_30Rnd_556x45_Stanag",30],[],""],[],["CUP_hgun_M9","","","",["CUP_15Rnd_9x19_M9",15],[],""],[_uniform,[["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_tourniquet",4],["CUP_15Rnd_9x19_M9",1,15]]],["CUP_V_B_PASGT",[["ACE_personalAidKit",1],["ACE_surgicalKit",1],["ACRE_PRC343",1],["CUP_30Rnd_556x45_Stanag",8,30]]],[],"CUP_H_US_patrol_cap_OD","",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
	};

	//Crew
	case "B_crew_F": {
		_unit setUnitLoadout [["CUP_smg_MP5A5","","","",["CUP_30Rnd_9x19_MP5",30],[],""],[],[],["CUP_U_B_USArmy_PilotOverall",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["CUP_30Rnd_9x19_MP5",1,30]]],["CUP_V_B_PASGT_no_bags",[["ACRE_PRC343_ID_1",1],["CUP_30Rnd_9x19_MP5",3,30]]],[],"H_HelmetCrew_I","",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
	};
};

nil