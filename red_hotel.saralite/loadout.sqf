private _unit = (_this select 0);
//if ((typeOf _unit == "CUP_O_RU_Pilot") || (typeOf _unit == "CUP_O_RU_Crew") || (typeOf _unit == "CUP_O_RU_Commander")) exitWith {};

private _helmet = selectRandom ["CUP_H_RUS_SSH68_cover_vsr93", "CUP_H_RUS_SSH68_cover_vsr98"];
private _uniform = selectRandom ["CUP_U_O_RUS_VSR98_MSV", "CUP_U_O_RUS_VSR98_MSV_rolled_up", "CUP_U_O_RUS_VSR98_worn_MSV", "CUP_U_O_RUS_VSR98_worn_gloves_MSV", "CUP_U_O_RUS_VSR98_worn_MSV_rolled_up"];
private _vest = selectRandom ["V_TacChestrig_grn_F", "V_TacChestrig_oli_F"];

switch (typeOf _unit) do {

	case "CUP_O_RU_Soldier_SL": {
		_unit setUnitLoadout [["CUP_arifle_AK74M","","","",["CUP_30Rnd_545x39_AK74M_M",30],[],""],[],["CUP_hgun_Makarov","","","",["CUP_8Rnd_9x18_Makarov_M",8],[],""],[_uniform,[["FirstAidKit",1],["CUP_30Rnd_545x39_AK74M_M",7,30]]],[_vest,[["CUP_HandGrenade_RGD5",2,1],[["CUP_8Rnd_9x18_Makarov_M",3,8]]]],[],_helmet,"",["Binocular","","","",[],[],""],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	};
	
	case "CUP_O_RU_Soldier": {
		_unit setUnitLoadout [["CUP_arifle_AK74M","","","",["CUP_30Rnd_545x39_AK74M_M",30],[],""],[],[],[_uniform,[["FirstAidKit",1],["CUP_30Rnd_545x39_AK74M_M",7,30]]],[_vest,[["CUP_HandGrenade_RGD5",2,1],["FirstAidKit",2]]],[],_helmet,"",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	};

	case "CUP_O_RU_Soldier_GL": {
		_unit setUnitLoadout [["CUP_arifle_AK74M_GL","","","",["CUP_30Rnd_545x39_AK74M_M",30],["CUP_1Rnd_HE_GP25_M",1],""],[],[],[_uniform,[["FirstAidKit",1],["CUP_30Rnd_545x39_AK74M_M",7,30],["CUP_1Rnd_HE_GP25_M",1,1]]],[_vest,[["CUP_1Rnd_HE_GP25_M",6,1],["CUP_HandGrenade_RGD5",2,1]]],[],_helmet,"",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	};

	case "CUP_O_RU_Soldier_LAT": {
		_unit setUnitLoadout [["CUP_arifle_AK74M","","","",["CUP_30Rnd_545x39_AK74M_M",30],[],""],["CUP_launch_RPG18","","","",[],[],""],[],[_uniform,[["FirstAidKit",1],["CUP_30Rnd_545x39_AK74M_M",7,30]]],[_vest,[["CUP_HandGrenade_RGD5",2,1],["FirstAidKit",2]]],[],_helmet,"CUP_G_RUS_Balaclava_Ratnik",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	};

	case "CUP_O_RU_Soldier_AT": {
		_unit setUnitLoadout [["CUP_arifle_AK74M","","","",["CUP_30Rnd_545x39_AK74M_M",30],[],""],["CUP_launch_RPG7V_PGO7V3","","","CUP_optic_PGO7V3",["CUP_PG7VL_M",1],[],""],[],[_uniform,[["FirstAidKit",1],["CUP_30Rnd_545x39_AK74M_M",7,30]]],[_vest,[["CUP_HandGrenade_RGD5",2,1],["FirstAidKit",2]]],["CUP_B_RUS_Pack_AT",[["CUP_PG7VL_M",1,1],["CUP_PG7VR_M",1,1]]],_helmet,"",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	};

	case "CUP_O_RU_Soldier_Saiga": {
		_unit setUnitLoadout [["CUP_sgun_Saiga12K","","","",["CUP_8Rnd_B_Saiga12_74Slug_M",5],[],""],[],[],[_uniform,[["FirstAidKit",1],["CUP_8Rnd_B_Saiga12_74Pellets_M",4,5],["CUP_8Rnd_B_Saiga12_74Slug_M",3,5],["CUP_HandGrenade_RGD5",1,1]]],[_vest,["CUP_HandGrenade_RGD5",2,1],["FirstAidKit",2]],[],_helmet,"CUP_G_RUS_Balaclava_Ratnik",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	};

	case "CUP_O_RU_Soldier_Marksman": {
		_unit setUnitLoadout [["CUP_srifle_SVD_pso","","","CUP_optic_PSO_1",["CUP_10Rnd_762x54_SVD_M",10],[],""],[],["CUP_hgun_Makarov","","","",["CUP_8Rnd_9x18_Makarov_M",8],[],""],[_uniform,[["FirstAidKit",1],["CUP_10Rnd_762x54_SVD_M",7,10]]],[_vest,[["CUP_10Rnd_762x54_SVD_M",1,10],["CUP_HandGrenade_RGD5",2,1],["CUP_8Rnd_9x18_Makarov_M",3,8]]],[],_helmet,"CUP_G_RUS_Balaclava_Ratnik",["Binocular","","","",[],[],""],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	};

	case "CUP_O_RU_Soldier_AR": {
		_unit setUnitLoadout [["CUP_arifle_RPK74M","","","",["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK74M_M",45],[],""],[],[],[_uniform,[["FirstAidKit",1],["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK74M_M",4,45]]],[_vest,[["CUP_HandGrenade_RGD5",2,1],["FirstAidKit",2]]],["CUP_B_CivPack_WDL",[["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK74M_M",4,45]]],_helmet,"CUP_G_RUS_Balaclava_Ratnik",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	};

	case "CUP_O_RU_Soldier_MG": {
		_unit setUnitLoadout [["CUP_lmg_Pecheneg","","","",["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",100],[],""],[],[],[_uniform,[["FirstAidKit",1],["CUP_HandGrenade_RGD5",1,1]]],[_vest,[["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",1,100],["CUP_HandGrenade_RGD5",1,1]]],["CUP_B_CivPack_WDL",[["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",3,100]]],_helmet,"",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	};

	case "CUP_O_RU_Medic": {
		_unit setUnitLoadout [["CUP_arifle_AKS74U","","","",["CUP_30Rnd_545x39_AK74_plum_M",30],[],""],[],[],[_uniform,[["FirstAidKit",1],["CUP_30Rnd_545x39_AK74_plum_M",7,30]]],[_vest,[["Medikit",2],["FirstAidKit",5]]],[],_helmet,"",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
	};	
}