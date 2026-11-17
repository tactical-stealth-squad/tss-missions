private _unit = (_this select 0);

private _weapon = selectRandom ["CUP_arifle_AK74_Early", "CUP_arifle_AKS74_Early","CUP_arifle_AKS74U"];
private _weapon_gre = selectRandom ["CUP_arifle_AK74_GL_Early", "CUP_arifle_AKS74_GL_Early"];
private _helmet = selectRandom ["", "CUP_H_TKI_Pakol_1_01", "CUP_H_TKI_Pakol_2_03", "CUP_H_TKI_SkullCap_06", "H_ShemagOpen_khk", "CUP_H_TKI_Lungee_05","CUP_H_PMC_Cap_Tan"];
private _uniform = selectRandom ["U_C_Poor_1", "U_I_C_Soldier_Para_5_F", "U_I_C_Soldier_Para_3_F","U_C_Mechanic_01_F","U_I_L_Uniform_01_tshirt_sport_F","U_I_L_Uniform_01_tshirt_olive_F","U_C_Poloshirt_tricolour","U_C_Poloshirt_salmon","U_C_Poloshirt_blue","U_I_C_Soldier_Bandit_5_F","U_I_C_Soldier_Bandit_3_F","U_I_C_Soldier_Bandit_1_F","U_I_C_Soldier_Bandit_4_F"];
private _uniform_light = selectRandom ["U_C_Poloshirt_tricolour","U_C_Poloshirt_salmon","U_C_Poloshirt_blue","U_I_C_Soldier_Bandit_5_F","U_I_C_Soldier_Bandit_1_F"];
private _vest = selectRandom ["CUP_V_OI_TKI_Jacket2_04", "CUP_V_OI_TKI_Jacket2_06","CUP_V_OI_TKI_Jacket2_03","CUP_V_OI_TKI_Jacket2_02","CUP_V_OI_TKI_Jacket2_05","CUP_V_OI_TKI_Jacket2_01"];

switch (typeOf _unit) do {

	//Rfl1
	case "CUP_I_TK_GUE_Soldier": {
		_unit setUnitLoadout [[_weapon,"","","",["CUP_30Rnd_545x39_AK_M",30],[],""],[],[],[_uniform_light,[["ACE_fieldDressing",2],["ACE_packingBandage",2],["ACE_morphine",2],["ACE_tourniquet",2],["CUP_30Rnd_545x39_AK_M",2,30]]],[_vest,[["CUP_30Rnd_545x39_AK_M",6,30]]],[],_helmet,"",[],["","","","","",""]];
	};

	//GRE
	case "CUP_I_TK_GUE_Soldier_GL": {
		_unit setUnitLoadout [[_weapon_gre,"","","",["CUP_30Rnd_545x39_AK_M",30],[],""],[],[],[_uniform_light,[["ACE_fieldDressing",2],["ACE_packingBandage",2],["ACE_morphine",2],["ACE_tourniquet",2],["CUP_1Rnd_HE_GP25_M",5,1]]],["CUP_V_OI_TKI_Jacket2_06",[["CUP_30Rnd_545x39_AK_M",8,30],["CUP_1Rnd_HE_GP25_M",4,1]]],[],_helmet,"",[],["","","","","",""]];
	};
	
	//AR
	case "CUP_I_TK_GUE_Soldier_AR": {
		_unit setUnitLoadout [["CUP_arifle_RPK74_45","","","",["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",45],[],""],[],[],[_uniform_light,[["ACE_fieldDressing",2],["ACE_packingBandage",2],["ACE_morphine",2],["ACE_tourniquet",2],["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",2,45]]],[_vest,[["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",8,45]]],[],_helmet,"",[],["","","","","",""]];
	};

	//Rfl2
	case "CUP_I_TK_GUE_Soldier_AK_47S": {
		_unit setUnitLoadout [[_weapon,"","","",["CUP_30Rnd_545x39_AK_M",30],[],""],[],[],[_uniform,[["ACE_fieldDressing",2],["ACE_packingBandage",2],["ACE_morphine",2],["ACE_tourniquet",2],["CUP_30Rnd_545x39_AK_M",4,30]]],[],[],_helmet,"",[],["","","","","",""]];
	};

	//MMG
	case "CUP_I_TK_GUE_Soldier_MG": {
		_unit setUnitLoadout [["CUP_lmg_PKM","","","",["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",100],[],""],[],[],[_uniform,[["ACE_fieldDressing",2],["ACE_packingBandage",2],["ACE_morphine",2],["ACE_tourniquet",2]]],["V_TacChestrig_grn_F",[["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",3,100]]],[],_helmet,"",[],["","","ItemRadioAcreFlagged","","",""]];
	};

	//AT
	case "CUP_I_TK_GUE_Soldier_AT": {
		_unit setUnitLoadout [["CUP_arifle_AK74_Early","","","",["CUP_30Rnd_545x39_AK_M",30],[],""],["launch_RPG7_F","","","",["RPG7_F",1],[],""],[],[_uniform,[["ACE_fieldDressing",2],["ACE_packingBandage",2],["ACE_morphine",2],["ACE_tourniquet",2],["CUP_30Rnd_545x39_AK_M",4,30]]],[],["B_AssaultPack_khk",[["RPG7_F",4,1]]],_helmet,"",[],["","","","","",""]];
	};

	//SVD
	case "CUP_I_TK_GUE_Sniper": {
		_unit setUnitLoadout [["CUP_srifle_SVD","","","cup_optic_pso_1_open",["CUP_10Rnd_762x54_SVD_M",10],[],""],[],[],[_uniform,[["ACE_fieldDressing",2],["ACE_packingBandage",2],["ACE_morphine",2],["ACE_tourniquet",2],["CUP_10Rnd_762x54_SVD_M",4,10]]],[],[],_helmet,"",[],["","","","","",""]];
	};

	//Lee-Enfield
	case "CUP_I_TK_GUE_Guerilla_Enfield": {
		_unit setUnitLoadout [["CUP_srifle_LeeEnfield","","","",["CUP_10x_303_M",10],[],""],[],[],[_uniform,[["ACE_fieldDressing",2],["ACE_packingBandage",2],["ACE_morphine",2],["ACE_tourniquet",2],["CUP_10x_303_M",4,10]]],[],[],_helmet,"",[],["","","","","",""]];
	};
};

nil