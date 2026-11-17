//Check if CUP is loaded
_loadedCUP = false;

{
	if ("cup\weapons" in (toLower(_x select 0))) exitWith {_loadedCUP = true};
} forEach allAddonsInfo;

if (_loadedCUP) then {

	switch (typeOf (_this select 0)) do {

		_helmet = selectRandom ["CUP_H_RUS_6B27", "CUP_H_RUS_6B27_goggles", "CUP_H_RUS_6B27_headset_goggles", "CUP_H_RUS_6B27_headset", "CUP_H_RUS_6B27_NVG"];
		_facewear = selectRandom ["CFP_Neck_Plain_Atacs", "CFP_Neck_Plain_Atacs2", "CFP_Neck_Plain2", "CUP_G_Scarf_Face_Grn", "CUP_FR_NeckScarf","","",""];

		case "O_Soldier_TL_F": {
			(_this select 0) setUnitLoadout	[[["CUP_arifle_AK103","","","CUP_optic_PSO_1_AK_open",["CUP_30Rnd_762x39_AK103_bakelite_M",30],[],""],[],["CUP_hgun_Colt1911","","","",["CUP_7Rnd_45ACP_1911",7],[],""],["CFP_U_O_RUMVD_SURPAT",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2],["CUP_30Rnd_762x39_AK103_bakelite_M",2,30],["CUP_7Rnd_45ACP_1911",1,7]]],["CUP_V_CPC_communicationsbelt_rngr",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_BF888S",1],["HandGrenade",2,1],["SmokeShell",2,1],["CUP_30Rnd_762x39_AK103_bakelite_M",5,30]]],[], _helmet, _facewear,["Binocular","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]],[]];
		};

		case "O_officer_F": {
			(_this select 0) setUnitLoadout	[["CUP_arifle_M4A1","","","",["CUP_30Rnd_556x45_Stanag",30],[],""],[],["CUP_hgun_Colt1911","","","",["CUP_7Rnd_45ACP_1911",7],[],""],["CFP_U_O_RUMVD_SURPAT",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2],["CUP_7Rnd_45ACP_1911",1,7],["CUP_30Rnd_556x45_Stanag",3,30]]],["CUP_V_O_TK_OfficerBelt2",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_BF888S",1],["HandGrenade",2,1],["SmokeShell",2,1],["CUP_30Rnd_556x45_Stanag",1,30]]],[],"CUP_H_TK_Beret",_facewear,["Binocular","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
		};

		case "O_Soldier_AR_F": {
			(_this select 0) setUnitLoadout	[["CUP_arifle_RPK74","","","",["CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M",75],[],""],[],[],["CFP_U_O_RUMVD_SURPAT",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2],["CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M",1,75]]],["CUP_V_CPC_Fastbelt_rngr",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_BF888S",1],["HandGrenade",2,1],["SmokeShell",2,1],["CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M",1,75]]],["B_AssaultPack_rgr",[["CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M",4,75]]], _helmet, _facewear,[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
		};

		case "O_Soldier_GL_F": {
			(_this select 0) setUnitLoadout	[["CUP_arifle_AK103_GL","","","",["CUP_30Rnd_762x39_AK103_bakelite_M",30],["CUP_1Rnd_HE_GP25_M",1],""],[],[],["CFP_U_O_RUMVD_SURPAT",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2],["CUP_30Rnd_762x39_AK103_bakelite_M",1,30],["CUP_1Rnd_HE_GP25_M",5,1]]],["CUP_V_CPC_tlbelt_rngr",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_BF888S",1],["HandGrenade",2,1],["SmokeShell",2,1],["CUP_30Rnd_762x39_AK103_bakelite_M",5,30]]],[], _helmet, _facewear,[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
		};

		case "O_Soldier_LAT_F": {
			(_this select 0) setUnitLoadout	[["CUP_arifle_AK104","","","",["CUP_30Rnd_762x39_AK103_bakelite_M",30],[],""],["launch_RPG7_F","","","",["RPG7_F",1],[],""],["CUP_hgun_Colt1911","","","",["CUP_7Rnd_45ACP_1911",7],[],""],["CFP_U_O_RUMVD_SURPAT",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2],["CUP_7Rnd_45ACP_1911",1,7],["CUP_30Rnd_762x39_AK103_bakelite_M",2,30]]],["CUP_V_CPC_Fastbelt_rngr",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_BF888S",1],["HandGrenade",2,1],["SmokeShell",2,1],["CUP_30Rnd_762x39_AK103_bakelite_M",5,30]]],["B_AssaultPack_rgr",[["RPG7_F",4,1]]], _helmet, _facewear,[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
		};

		case "O_medic_F": {
			(_this select 0) setUnitLoadout	[["CUP_arifle_AK103","","","",["CUP_30Rnd_762x39_AK103_bakelite_M",30],[],""],[],["CUP_hgun_Colt1911","","","",["CUP_7Rnd_45ACP_1911",7],[],""],["CFP_U_O_RUMVD_SURPAT",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",8],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2],["CUP_30Rnd_762x39_AK103_bakelite_M",2,30],["CUP_7Rnd_45ACP_1911",1,7]]],["CUP_V_CPC_medicalbelt_rngr",[["ACE_splint",2],["ACRE_BF888S",1],["ACE_personalAidKit",1],["HandGrenade",2,1],["SmokeShell",2,1],["CUP_30Rnd_762x39_AK103_bakelite_M",5,30]]],["B_AssaultPack_rgr",[["ACE_elasticBandage",18],["ACE_epinephrine",12],["ACE_morphine",8],["ACE_salineIV_250",2],["ACE_splint",12],["ACE_salineIV",4],["ACE_plasmaIV_500",4],["ACE_packingBandage",5],["ACE_surgicalKit",1],["ACE_salineIV_500",2]]], _helmet, _facewear,[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
		};

		case "O_soldier_M_F": {
			(_this select 0) setUnitLoadout	[["CUP_srifle_SVD","","","CUP_optic_PSO_3_open",["CUP_10Rnd_762x54_SVD_M",10],[],""],[],["CUP_hgun_Colt1911","","","",["CUP_7Rnd_45ACP_1911",7],[],""],["CFP_U_O_RUMVD_SURPAT",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2],["CUP_7Rnd_45ACP_1911",1,7],["CUP_10Rnd_762x54_SVD_M",3,10]]],["CUP_V_CPC_lightbelt_rngr",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_BF888S",1],["HandGrenade",2,1],["SmokeShell",2,1],["CUP_10Rnd_762x54_SVD_M",6,10]]],[], _helmet, _facewear,[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
		};

		case "O_crew_F": {
			(_this select 0) setUnitLoadout	[["CUP_arifle_M4A1","","","",["CUP_30Rnd_556x45_Stanag",30],[],""],[],["CUP_hgun_Colt1911","","","",["CUP_7Rnd_45ACP_1911",7],[],""],["CFP_U_O_RUMVD_SURPAT",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2],["CUP_7Rnd_45ACP_1911",1,7]]],["CUP_V_CPC_lightbelt_rngr",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_BF888S",1],["HandGrenade",2,1],["SmokeShell",2,1],["CUP_30Rnd_556x45_Stanag",6,30]]],[],"H_Tank_black_F","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
		};

		case "O_Pilot_F": {
			(_this select 0) setUnitLoadout	[["CUP_arifle_M4A1","","","",["CUP_30Rnd_556x45_Stanag",30],[],""],[],[],["CUP_U_B_USArmy_PilotOverall",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2]]],["CUP_V_CZ_vest20",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_BF888S",1],["HandGrenade",2,1],["SmokeShell",2,1],["CUP_30Rnd_556x45_Stanag",6,30]]],[],"CUP_H_RUS_ZSH_Shield_Up","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
		};

		case "O_helipilot_F": {
			(_this select 0) setUnitLoadout	[["CUP_arifle_M4A1","","","",["CUP_30Rnd_556x45_Stanag",30],[],""],[],[],["CUP_U_B_USArmy_PilotOverall",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2]]],["CUP_V_CZ_vest20",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_BF888S",1],["HandGrenade",2,1],["SmokeShell",2,1],["CUP_30Rnd_556x45_Stanag",6,30]]],[],"CUP_H_RUS_ZSH_Shield_Up","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
		};

		default {
			[["CUP_arifle_AK103","","","",["CUP_30Rnd_762x39_AK103_bakelite_M",30],[],""],[],["CUP_hgun_Colt1911","","","",["CUP_7Rnd_45ACP_1911",7],[],""],["CFP_U_O_RUMVD_SURPAT",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2],["CUP_30Rnd_762x39_AK103_bakelite_M",2,30],["CUP_7Rnd_45ACP_1911",1,7]]],["CUP_V_CPC_tlbelt_rngr",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_BF888S",1],["HandGrenade",2,1],["SmokeShell",2,1],["CUP_30Rnd_762x39_AK103_bakelite_M",5,30]]],[], _helmet, _facewear,[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]]
		};
	}

} else {

	switch (typeOf (_this select 0)) do {

		case "O_Soldier_lite_F": {
			(_this select 0) setUnitLoadout	[["arifle_TRG20_F","","ACE_acc_pointer_green","optic_Yorris",["30Rnd_556x45_Stanag_Sand",30],[],""],[],[],["U_O_T_Officer_F",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["30Rnd_556x45_Stanag",1,30]]],["V_TacVest_oli",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_BF888S",1],["MiniGrenade",4,1],["30Rnd_556x45_Stanag_Sand_Tracer_Yellow",6,30]]],[],"H_PASGT_basic_olive_F","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
		};

		case "O_Soldier_TL_F": {
			(_this select 0) setUnitLoadout	[["arifle_TRG20_F","","ACE_acc_pointer_green","optic_Yorris",["30Rnd_556x45_Stanag_Sand",30],[],""],[],[],["U_O_T_Officer_F",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["30Rnd_556x45_Stanag",1,30]]],["V_TacVest_oli",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_BF888S",1],["MiniGrenade",4,1],["30Rnd_556x45_Stanag_Sand_Tracer_Yellow",6,30]]],[],"H_PASGT_basic_olive_F","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
		};

		case "O_officer_F": {
			(_this select 0) setUnitLoadout	[["SMG_02_F","","","optic_Yorris",["30Rnd_9x21_Mag_SMG_02",30],[],""],[],[],["U_O_T_Officer_F",[["ACE_elasticBandage",5],["ACE_packingBandage",5],["ACE_epinephrine",1],["ACE_MapTools",1],["30Rnd_9x21_Mag_SMG_02",2,30]]],[],[],"H_ParadeDressCap_01_US_F","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
		};

		case "O_Soldier_AR_F": {
			(_this select 0) setUnitLoadout	[["LMG_Zafir_F","","","optic_Arco_blk_F",["150Rnd_762x54_Box_Tracer",150],[],""],[],[],["U_O_T_Officer_F",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACRE_BF888S",1]]],[],["B_FieldPack_ghex_F",[["150Rnd_762x54_Box_Tracer",4,150]]],"H_PASGT_basic_olive_F","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
		};

		case "O_Soldier_GL_F": {
			(_this select 0) setUnitLoadout	[["arifle_TRG21_GL_F","","","optic_Arco_blk_F",["30Rnd_556x45_Stanag_Sand",30],["1Rnd_HE_Grenade_shell",1],""],[],[],["U_O_T_Officer_F",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["30Rnd_556x45_Stanag_Sand",1,30]]],["V_HarnessOGL_ghex_F",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_BF888S",1],["MiniGrenade",4,1],["30Rnd_556x45_Stanag_Sand_Tracer_Yellow",5,30],["1Rnd_HE_Grenade_shell",8,1]]],[],"H_PASGT_basic_olive_F","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
		};

		case "O_Soldier_LAT_F": {
			(_this select 0) setUnitLoadout	[["arifle_TRG20_F","","ACE_acc_pointer_green","optic_Yorris",["30Rnd_556x45_Stanag_Sand",30],[],""],["launch_RPG32_green_F","","","",["RPG32_HE_F",1],[],""],[],["U_O_T_Officer_F",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2]]],["V_TacChestrig_grn_F",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_BF888S",1],["MiniGrenade",4,1],["30Rnd_556x45_Stanag_Sand",8,30]]],["B_AssaultPack_wdl_F",[["RPG32_F",2,1],["RPG32_HE_F",1,1]]],"H_PASGT_basic_olive_F","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
		};

		case "O_medic_F": {
			(_this select 0) setUnitLoadout	[["arifle_TRG20_F","","","optic_Yorris",["30Rnd_556x45_Stanag_Sand",30],[],""],[],[],["U_O_T_Officer_F",[["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_tourniquet",4],["ACRE_BF888S",1]]],[],["B_FieldPack_ghex_F",[["ACE_elasticBandage",18],["ACE_packingBandage",5],["ACE_epinephrine",12],["ACE_morphine",8],["ACE_salineIV",4],["ACE_salineIV_250",8],["ACE_tourniquet",4],["ACE_splint",12],["30Rnd_556x45_Stanag_Sand",8,30]]],"H_PASGT_basic_olive_F","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
		};

		case "O_soldier_M_F": {
			(_this select 0) setUnitLoadout	[["srifle_DMR_03_F","","","optic_SOS",["20Rnd_762x51_Mag",20],[],"bipod_02_F_blk"],[],[],["U_O_T_Officer_F",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2]]],["V_HarnessO_ghex_F",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_BF888S",1],["MiniGrenade",4,1],["20Rnd_762x51_Mag",9,20]]],[],"H_PASGT_basic_olive_F","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch","ACE_NVG_Gen1_Green"]];
		};

		case "O_crew_F": {
			(_this select 0) setUnitLoadout	[["SMG_02_F","","","",["30Rnd_9x21_Mag_SMG_02",30],[],""],[],[],["U_O_R_Gorka_01_black_F",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["30Rnd_9x21_Mag_SMG_02",1,30]]],["V_LegStrapBag_black_F",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC148",1],["SmokeShell",4,1],["30Rnd_9x21_Mag_SMG_02",4,30]]],[],"H_Tank_black_F","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
		};

		case "O_Pilot_F": {
			(_this select 0) setUnitLoadout	[[],[],["hgun_Rook40_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_O_PilotCoveralls",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACRE_PRC148",1],["16Rnd_9x21_Mag",3,17]]],[],[],"H_PilotHelmetFighter_O","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
		};

		case "O_helipilot_F": {
			(_this select 0) setUnitLoadout	[[],[],["hgun_Rook40_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_O_PilotCoveralls",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACRE_PRC148",1],["16Rnd_9x21_Mag",3,17]]],[],[],"H_PilotHelmetHeli_O","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
		};

		default {
			[["arifle_TRG20_F","","ACE_acc_pointer_green","optic_Yorris",["30Rnd_556x45_Stanag_Sand",30],[],""],[],[],["U_O_T_Officer_F",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["30Rnd_556x45_Stanag",1,30]]],["V_TacVest_oli",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_BF888S",1],["MiniGrenade",4,1],["30Rnd_556x45_Stanag_Sand_Tracer_Yellow",6,30]]],[],"H_PASGT_basic_olive_F","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]]
		};
	}
};