call compile preprocessFileLineNumbers "briefing.sqf";

switch (typeOf _player) do {
	//SL
	case "B_Soldier_SL_F": {
		_player setUnitLoadout [["CUP_arifle_M16A4_GL","","CUP_acc_ANPEQ_15_Flashlight_Black_L","CUP_optic_ACOG",["30Rnd_556x45_Stanag_Tracer_Red",30],["1Rnd_HE_Grenade_shell",1],""],[],[],["CUP_U_B_USMC_MCCUU_roll_2_gloves",[["ACE_EarPlugs",1],["ACE_MapTools",1],["ACE_elasticBandage",6],["ACE_splint",4],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_tourniquet",4],["ACRE_PRC343",1],["ACE_packingBandage",6],["ACE_quikclot",2]]],["CUP_V_B_Ciras_Olive2",[["ACE_salineIV_500",2],["ACRE_PRC152",1],["30Rnd_556x45_Stanag_Tracer_Red",14,30],["1Rnd_HE_Grenade_shell",10,1],["1Rnd_SmokeGreen_Grenade_shell",1,1],["1Rnd_SmokeRed_Grenade_shell",1,1],["SmokeShellGreen",1,1],["SmokeShellRed",1,1],["SmokeShell",3,1],["HandGrenade",2,1]]],["ACE_TacticalLadder_Pack",[]],"CUP_H_CZ_Helmet10","CUP_G_Oakleys_Embr",["ACE_VectorDay","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
	};
	//AR
	case "B_soldier_AR_F": {
		_player setUnitLoadout [["CUP_lmg_m249_pip1","","","",["CUP_200Rnd_TE1_Red_Tracer_556x45_M249",200],[],""],[],[],["CUP_U_B_USMC_MCCUU_roll_2_gloves",[["ACE_EarPlugs",1],["ACE_MapTools",1],["ACE_elasticBandage",6],["ACE_splint",4],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_tourniquet",4],["ACRE_PRC343",1],["ACE_packingBandage",6],["ACE_quikclot",2]]],["CUP_V_B_Ciras_Olive2",[["ACE_salineIV_500",2],["CUP_200Rnd_TE1_Red_Tracer_556x45_M249",5,200],["SmokeShell",2,1]]],["B_AssaultPack_rgr",[["CUP_200Rnd_TE1_Red_Tracer_556x45_M249",4,200]]],"CUP_H_CZ_Helmet10","CUP_G_Oakleys_Embr",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
	};
	//LAT
	case "B_soldier_AT_F": {
		_player setUnitLoadout [["CUP_arifle_M4A3_black","","CUP_acc_ANPEQ_15_Flashlight_Black_L","CUP_optic_CompM2_low",["30Rnd_556x45_Stanag_Tracer_Red",30],[],""],["CUP_launch_M136","","","",["CUP_M136_M",1],[],""],[],["CUP_U_B_USMC_MCCUU_pads_gloves",[["ACE_EarPlugs",1],["ACE_MapTools",1],["ACE_elasticBandage",6],["ACE_splint",4],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_tourniquet",4],["ACRE_PRC343",1],["ACE_packingBandage",6],["ACE_quikclot",2]]],["CUP_V_B_Ciras_Olive3",[["ACE_salineIV_500",2],["SmokeShellGreen",1,1],["SmokeShellRed",1,1],["30Rnd_556x45_Stanag_Tracer_Red",12,30],["SmokeShell",2,1],["HandGrenade",2,1]]],[],"CUP_H_CZ_Helmet10","CUP_G_Oakleys_Embr",["ACE_VectorDay","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
	};
	//GRE
	case "B_Soldier_GL_F": {
		_player setUnitLoadout [["CUP_arifle_M16A4_GL","","CUP_acc_ANPEQ_15_Flashlight_Black_L","CUP_optic_ACOG",["30Rnd_556x45_Stanag_Tracer_Red",30],["1Rnd_HE_Grenade_shell",1],""],[],[],["CUP_U_B_USMC_MCCUU_roll_pads_gloves",[["ACE_EarPlugs",1],["ACE_MapTools",1],["ACRE_PRC343",1],["ACE_elasticBandage",6],["ACE_splint",4],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_packingBandage",6],["ACE_quikclot",2]]],["CUP_V_B_Ciras_Olive2",[["ACE_salineIV_500",2],["30Rnd_556x45_Stanag_Tracer_Red",14,30],["1Rnd_HE_Grenade_shell",11,1],["1Rnd_SmokeGreen_Grenade_shell",1,1],["1Rnd_SmokeRed_Grenade_shell",1,1],["SmokeShellGreen",1,1],["SmokeShellRed",1,1],["SmokeShell",3,1],["HandGrenade",2,1]]],[],"CUP_H_CZ_Helmet10","CUP_G_Oakleys_Embr",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
	};
	//CLS
	case "B_medic_F": {
		_player setUnitLoadout [["CUP_arifle_M4A3_black","","CUP_acc_ANPEQ_15_Flashlight_Black_L","CUP_optic_CompM2_low",["30Rnd_556x45_Stanag_Tracer_Red",30],[],""],[],[],["CUP_U_B_USMC_MCCUU_gloves",[["ACE_EarPlugs",1],["ACE_MapTools",1],["ACE_elasticBandage",6],["ACE_splint",4],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_tourniquet",4],["ACRE_PRC343",1],["ACE_packingBandage",6],["ACE_quikclot",2]]],["CUP_V_B_Ciras_Olive",[["ACE_salineIV_500",4],["ACE_personalAidKit",3],["ACE_morphine",10],["ACE_epinephrine",10],["ACE_tourniquet",4],["SmokeShellGreen",1,1],["SmokeShellRed",1,1],["30Rnd_556x45_Stanag_Tracer_Red",12,30],["SmokeShell",3,1],["HandGrenade",2,1]]],["B_AssaultPack_rgr",[["ACE_salineIV",10],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_quikclot",4],["ACE_splint",8],["HandGrenade",2,1]]],"CUP_H_CZ_Helmet10","CUP_G_Oakleys_Embr",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
	};
};

sleep 10;
[["Red Hotel",3,2],
 ["Königreich Sahrani",3,2]]
 spawn BIS_fnc_EXP_camp_SITREP;