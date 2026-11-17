private _unit = (_this select 0);

switch (typeOf _unit) do {
	case "O_G_Soldier_SL_F": { //SL
		_unit setUnitLoadout [["CUP_sgun_CZ584","","","",["CUP_1Rnd_12Gauge_Pellets_No00_Buck",1],["CUP_1Rnd_762x51_CZ584",1],""],[],[],["CUP_U_C_Pilot_01",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["CUP_1Rnd_12Gauge_Pellets_No00_Buck",2,1],["CUP_1Rnd_762x51_CZ584",4,1]]],[],[],"CUP_H_NAPA_Fedora","",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];
	};
	
	case "O_G_Soldier_AR_F": { //AR
		_unit setUnitLoadout [["CUP_srifle_M14","","","",["CUP_20Rnd_762x51_DMR",20],[],""],[],["ACE_Flashlight_Maglite_ML300L","","","",[],[],""],["U_I_C_Soldier_Bandit_2_F",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2]]],["CUP_V_OI_TKI_Jacket1_05",[["CUP_20Rnd_762x51_DMR",2,20]]],[],"H_Hat_tan","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
	};

	case "O_G_Soldier_GL_F": { //GRE
		_unit setUnitLoadout [[],[],["CUP_hgun_TT","","","",["CUP_8Rnd_762x25_TT",8],[],""],["CUP_U_O_CHDKZ_Lopotev",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["CUP_8Rnd_762x25_TT",2,8],["MiniGrenade",1,1]]],[],[],"","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
	};

	case "O_G_Soldier_LAT_F": { //AT
		_unit setUnitLoadout [["CUP_srifle_Remington700","","","",["CUP_6Rnd_762x51_R700",6],[],""],[],["ACE_Flashlight_Maglite_ML300L","","","",[],[],""],["CUP_U_C_Profiteer_02",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["CUP_6Rnd_762x51_R700",1,6]]],[],[],"CUP_H_C_Ushanka_04","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
	};

	case "O_G_Soldier_A_F": { //Ammo Bearer
		_unit setUnitLoadout [[],[],["hgun_Pistol_01_F","","","",["10Rnd_9x21_Mag",10],[],""],["CUP_U_C_Worker_02",[["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_tourniquet",4],["10Rnd_9x21_Mag",2,10]]],[],["CUP_B_AssaultPack_Coyote",[["CUP_5x_22_LR_17_HMR_M",2,5],["CUP_20Rnd_762x51_DMR",1,20],["CUP_6Rnd_762x51_R700",2,6],["CUP_5Rnd_762x54_Mosin_M",4,5]]],"H_Bandanna_khk","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
	};

	case "O_G_Soldier_M_F": { //Marksman
		_unit setUnitLoadout [["CUP_srifle_CZ550","","","",["CUP_5x_22_LR_17_HMR_M",5],[],""],[],[],["CUP_U_C_Woodlander_04",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["CUP_5x_22_LR_17_HMR_M",1,5]]],[],[],"H_Booniehat_khk","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
	};

	case "O_G_medic_F": { // CLS
		_unit setUnitLoadout [[],[],["hgun_Pistol_01_F","","","",["10Rnd_9x21_Mag",10],[],""],["CUP_U_C_Woodlander_02",[["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_tourniquet",4]]],["CUP_V_C_Police_Holster",[["10Rnd_9x21_Mag",2,10]]],["B_CivilianBackpack_01_Everyday_Black_F",[["ACE_elasticBandage",18],["ACE_packingBandage",5],["ACE_epinephrine",12],["ACE_morphine",8],["ACE_salineIV",4],["ACE_salineIV_250",8],["ACE_tourniquet",4],["ACE_splint",12],["ACE_personalAidKit",1],["ACE_surgicalKit",1]]],"CUP_H_PMC_Beanie_Khaki","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
	};
	
	case "O_G_Soldier_F": { //Rfl
		_unit setUnitLoadout [["CUP_srifle_Mosin_Nagant","","","",["CUP_5Rnd_762x54_Mosin_M",5],[],""],[],[],["CUP_U_C_Profiteer_03",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["CUP_5Rnd_762x54_Mosin_M",2,5]]],[],[],"CUP_H_C_Beanie_01","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
	};

	case "O_G_Soldier_exp_F": { //Explo
		_unit setUnitLoadout [["CUP_srifle_LeeEnfield","","","",["CUP_10x_303_M",10],[],""],[],[],["U_I_L_Uniform_01_tshirt_skull_F",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["CUP_10x_303_M",1,10]]],["CUP_V_OI_TKI_Jacket1_06",[["CUP_10x_303_M",2,10],["DemoCharge_Remote_Mag",1,1]]],[],"CUP_H_C_Ushanka_03","",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];
	};
};

nil