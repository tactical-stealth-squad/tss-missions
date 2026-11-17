private _helmet = selectRandom ["CUP_H_SLA_Helmet", "CUP_H_RUS_SSH68_cover_vsr84_dubok", "CUP_H_RUS_SSH68_green", "CUP_H_RUS_SSH68_olive", "CUP_H_ChDKZ_Cap", ""];
private _facewear = selectRandom ["CUP_G_TK_RoundGlasses_blk", "G_Squares", "G_Aviator", "","","","","",""];
private _uniform = selectRandom ["CUP_U_O_Partisan_VSR_Mixed1","CUP_U_O_Partisan_VSR_Mixed2"];
private _vest = "V_TacChestrig_grn_F";
private _satchel = "V_TacChestrig_grn_F";
private _assRifle = selectRandom ["CUP_arifle_AK74", "CUP_arifle_AKS74_Early"];
private _lat = selectRandom ["CUP_launch_RPG18", "CUP_launch_RPG26"];
private _aa = selectRandom ["CUP_launch_9K32Strela", "CUP_launch_Igla"];

//Check if CFP is loaded
	private _loadedCFP = false;

	{
		if ("cfp\addons" in (toLower(_x select 0))) exitWith {_loadedCFP = true};
	} forEach allAddonsInfo;

	if (_loadedCFP) then {
		_helmet = selectRandom ["CUP_H_SLA_Helmet", "SP_SSh68NetHelmet_Green1", "SP_SSh68CoverHelmet_Green1", "SP_SSh68Helmet_Green1", "CUP_H_RUS_SSH68_cover_vsr84_dubok",
			"CUP_H_RUS_SSH68_green", "CUP_H_RUS_SSH68_olive", "SP_BaseballCap_Green", "CUP_H_ChDKZ_Cap", "SP_PatrolCap_Green", ""];
		_facewear = selectRandom ["CFP_Neck_Plain_Atacs", "CFP_Neck_Plain2", "CFP_Neck_Plain3", "CUP_G_TK_RoundGlasses_blk", "G_Squares", "G_Aviator", "","","","","",""];
		_vest = "CFP_Smersh_Brown";
		_satchel = "CFP_Field_Satchel";
	};


private _unit = _this select 0;

switch (typeOf _unit) do {

	case "CUP_O_RU_Commander": {
		_unit setUnitLoadout [["CUP_arifle_AKS74U","","","",["CUP_30Rnd_545x39_AK_M",30],[],""],[],["CUP_hgun_Makarov","","","",["CUP_8Rnd_9x18_Makarov_M",8],[],""],["CUP_U_O_Partisan_TTsKO",[["ACE_elasticBandage",12],["ACE_tourniquet",4],["ACE_morphine",2],["ACE_MapTools",1],["ACE_epinephrine",3],["ACE_EarPlugs",1],["ACE_quikclot",2],["ACE_packingBandage",5],["CUP_30Rnd_545x39_AK_M",2,30]]],["CUP_V_CDF_OfficerBelt2",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC148",1],["CUP_30Rnd_545x39_AK_M",3,30],["CUP_8Rnd_9x18_Makarov_M",2,8]]],[],"CUP_H_SLA_OfficerCap","G_Aviator",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];
	};

	case "CUP_O_RU_Officer": {
		_unit setUnitLoadout [["CUP_arifle_AKS74U","","","",["CUP_30Rnd_545x39_AK_M",30],[],""],[],[],[_uniform,[["ACE_elasticBandage",12],["ACE_tourniquet",4],["ACE_morphine",2],["ACE_MapTools",1],["ACE_epinephrine",3],["ACE_EarPlugs",1],["ACE_quikclot",2],["ACE_packingBandage",5]]],[_vest,[["ACE_salineIV_500",2],["ACE_splint",2],["CUP_HandGrenade_RGD5",1,1],["CUP_HandGrenade_RGO",1,1],["SmokeShell",2,1],["CUP_30Rnd_545x39_AK_M",8,30],["SmokeShellBlue",1,1],["SmokeShellGreen",1,1],["SmokeShellOrange",1,1],["SmokeShellPurple",1,1],["SmokeShellRed",1,1],["SmokeShellYellow",1,1],["ACE_HandFlare_Green",1,1],["ACE_HandFlare_Red",1,1]]],["CUP_B_Kombat_Radio_Olive",[["ACRE_PRC117F",1]]],"CUP_H_PMC_PRR_Headset","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
	};
	
	case "CUP_O_RU_Soldier_SL": {
		_unit setUnitLoadout [[_assRifle,"","","",["CUP_30Rnd_545x39_AK_M",30],[],""],[],["CUP_hgun_Makarov","","","",["CUP_8Rnd_9x18_Makarov_M",8],[],""],[_uniform,[["ACE_elasticBandage",12],["ACE_tourniquet",4],["ACE_morphine",2],["ACE_MapTools",1],["ACE_epinephrine",3],["ACE_EarPlugs",1],["ACE_quikclot",2],["ACE_packingBandage",5],["CUP_8Rnd_9x18_Makarov_M",2,8]]],[_vest,[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC148",1],["CUP_HandGrenade_RGD5",1,1],["CUP_HandGrenade_RGO",1,1],["SmokeShell",2,1],["CUP_30Rnd_545x39_AK_M",8,30]]],[],_helmet,_facewear,["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];
	};

	case "CUP_O_RU_Soldier_TL": {
		_unit setUnitLoadout [[_assRifle,"","","",["CUP_30Rnd_545x39_AK_M",30],[],""],[],["CUP_hgun_Makarov","","","",["CUP_8Rnd_9x18_Makarov_M",8],[],""],[_uniform,[["ACE_elasticBandage",12],["ACE_tourniquet",4],["ACE_morphine",2],["ACE_MapTools",1],["ACE_epinephrine",3],["ACE_EarPlugs",1],["ACE_quikclot",2],["ACE_packingBandage",5],["CUP_8Rnd_9x18_Makarov_M",2,8]]],[_vest,[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC148",1],["CUP_HandGrenade_RGD5",1,1],["CUP_HandGrenade_RGO",1,1],["SmokeShell",2,1],["CUP_30Rnd_545x39_AK_M",8,30]]],[],_helmet,_facewear,["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];
	};

	case "CUP_O_RU_Soldier_AR": {
		_unit setUnitLoadout [["CUP_arifle_RPK74_45","","","",["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",45],[],""],[],[],["CUP_U_O_Partisan_VSR_Mixed1",[["ACE_elasticBandage",12],["ACE_tourniquet",4],["ACE_morphine",2],["ACE_MapTools",1],["ACE_epinephrine",3],["ACE_EarPlugs",1],["ACE_quikclot",2],["ACE_packingBandage",5]]],[_vest,[["ACE_salineIV_500",2],["ACE_splint",2],["CUP_HandGrenade_RGD5",1,1],["CUP_HandGrenade_RGO",1,1],["SmokeShell",2,1],["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",9,45]]],[],_helmet,_facewear,[],["ItemMap","","","ItemCompass","ItemWatch",""]];
	};

	case "CUP_O_RU_Soldier_MG": {
		_unit setUnitLoadout [["CUP_lmg_PKM","","","",["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",100],[],""],[],["CUP_hgun_Makarov","","","",["CUP_8Rnd_9x18_Makarov_M",8],[],""],["CUP_U_O_Partisan_VSR_Mixed1",[["ACE_elasticBandage",12],["ACE_tourniquet",4],["ACE_morphine",2],["ACE_MapTools",1],["ACE_epinephrine",3],["ACE_EarPlugs",1],["ACE_quikclot",2],["ACE_packingBandage",5],["ACE_salineIV_500",2],["ACE_splint",2]]],["CUP_V_CDF_CrewBelt",[["SmokeShell",2,1],["CUP_HandGrenade_RGD5",1,1],["CUP_HandGrenade_RGO",1,1],["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",1,100]]],["B_FieldPack_khk",[["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",4,100],["CUP_8Rnd_9x18_Makarov_M",2,8]]],_helmet,_facewear,[],["ItemMap","","","ItemCompass","ItemWatch",""]];
	};

	case "CUP_O_RU_Soldier_GL": {
		_unit setUnitLoadout [["CUP_arifle_AK74_GL_Early","","","",["CUP_30Rnd_545x39_AK_M",30],[],""],[],[],[_uniform,[["ACE_elasticBandage",12],["ACE_tourniquet",4],["ACE_morphine",2],["ACE_MapTools",1],["ACE_epinephrine",3],["ACE_EarPlugs",1],["ACE_quikclot",2],["ACE_packingBandage",5]]],[_vest,[["ACE_salineIV_500",2],["ACE_splint",2],["CUP_HandGrenade_RGD5",1,1],["CUP_HandGrenade_RGO",1,1],["SmokeShell",2,1],["CUP_30Rnd_545x39_AK_M",8,30],["CUP_1Rnd_HE_GP25_M",6,1],["CUP_IlumFlareWhite_GP25_M",2,1]]],[],_helmet,_facewear,[],["ItemMap","","","ItemCompass","ItemWatch",""]];
	};

	case "CUP_O_RU_Soldier_LAT": {
		_unit setUnitLoadout [[_assRifle,"","","",["CUP_30Rnd_545x39_AK_M",30],[],""],[_lat,"","","",[],[],""],[],[_uniform,[["ACE_elasticBandage",12],["ACE_tourniquet",4],["ACE_morphine",2],["ACE_MapTools",1],["ACE_epinephrine",3],["ACE_EarPlugs",1],["ACE_quikclot",2],["ACE_packingBandage",5]]],[_vest,[["ACE_salineIV_500",2],["ACE_splint",2],["CUP_HandGrenade_RGD5",1,1],["CUP_HandGrenade_RGO",1,1],["SmokeShell",2,1],["CUP_30Rnd_545x39_AK_M",8,30]]],[],_helmet,_facewear,[],["ItemMap","","","ItemCompass","ItemWatch",""]];
	};

	case "CUP_O_RU_Soldier_AT": {
		_unit setUnitLoadout [["CUP_arifle_AKS74U","","","",["CUP_30Rnd_545x39_AK74_plum_M",30],[],""],["CUP_launch_RPG7V","","","",["CUP_PG7VL_M",1],[],""],[],[_uniform,[["ACE_elasticBandage",12],["ACE_tourniquet",4],["ACE_morphine",2],["ACE_MapTools",1],["ACE_epinephrine",3],["ACE_EarPlugs",1],["ACE_quikclot",2],["ACE_packingBandage",5]]],[_satchel,[["ACE_salineIV_500",2],["ACE_splint",2],["CUP_30Rnd_545x39_AK_M",8,30]]],["B_FieldPack_khk",[["CUP_PG7VL_M",2,1],["CUP_OG7_M",1,1]]],_helmet,_facewear,[],["ItemMap","","","ItemCompass","ItemWatch",""]];
	};

	case "CUP_O_RU_Soldier_HAT": {
		_unit setUnitLoadout [["CUP_arifle_AKS74U","","","",["CUP_30Rnd_545x39_AK_M",30],[],""],["CUP_launch_Metis","","","",["CUP_AT13_M",1],[],""],[],[_uniform,[["ACE_elasticBandage",12],["ACE_tourniquet",4],["ACE_morphine",2],["ACE_MapTools",1],["ACE_epinephrine",3],["ACE_EarPlugs",1],["ACE_quikclot",2],["ACE_packingBandage",5],["ACE_salineIV_500",2]]],[_satchel,[["ACE_splint",2],["CUP_30Rnd_545x39_AK_M",8,30],["SmokeShell",2,1],["CUP_HandGrenade_RGD5",1,1],["CUP_HandGrenade_RGO",1,1]]],["B_FieldPack_khk",[["CUP_AT13_M",2,1]]],_helmet,_facewear,[],["ItemMap","","","ItemCompass","ItemWatch",""]];
	};
	
	case "CUP_O_RU_Soldier_AA": {
		_unit setUnitLoadout [["CUP_arifle_AK74_Early","","","",["CUP_30Rnd_545x39_AK_M",30],[],""],[_aa,"","","",[],[],""],[],[_uniform,[["ACE_elasticBandage",12],["ACE_tourniquet",4],["ACE_morphine",2],["ACE_MapTools",1],["ACE_epinephrine",3],["ACE_EarPlugs",1],["ACE_quikclot",2],["ACE_packingBandage",5]]],[_vest,[["ACE_salineIV_500",2],["ACE_splint",2],["CUP_HandGrenade_RGD5",1,1],["CUP_HandGrenade_RGO",1,1],["SmokeShell",2,1],["CUP_30Rnd_545x39_AK_M",8,30]]],[],_helmet,_facewear,[],["ItemMap","","","ItemCompass","ItemWatch",""]];
	};

	case "CUP_O_RU_Medic": {
		_unit setUnitLoadout [["CUP_arifle_AKS74U","","","",["CUP_30Rnd_545x39_AK_M",30],[],""],[],[],[_uniform,[["ACE_elasticBandage",12],["ACE_tourniquet",4],["ACE_morphine",2],["ACE_MapTools",1],["ACE_epinephrine",3],["ACE_EarPlugs",1],["ACE_quikclot",2],["ACE_packingBandage",5]]],[_vest,[["ACE_salineIV_500",2],["ACE_splint",2],["CUP_HandGrenade_RGD5",1,1],["CUP_HandGrenade_RGO",1,1],["SmokeShell",2,1],["CUP_30Rnd_545x39_AK_M",8,30]]],["CUP_B_CivPack_WDL",[["ACE_elasticBandage",18],["ACE_packingBandage",5],["ACE_epinephrine",12],["ACE_morphine",8],["ACE_salineIV",4],["ACE_salineIV_250",2],["ACE_tourniquet",4],["ACE_splint",12],["ACE_plasmaIV_500",4],["ACE_surgicalKit",1],["ACE_personalAidKit",1]]],_helmet,_facewear,[],["ItemMap","","","ItemCompass","ItemWatch",""]];
	};

	case "CUP_O_RU_Soldier_Marksman": {
		_unit setUnitLoadout [["CUP_srifle_SVD","","","CUP_optic_PSO_3_open",["CUP_10Rnd_762x54_SVD_M",10],[],""],[],["CUP_hgun_Makarov","","","",["CUP_8Rnd_9x18_Makarov_M",8],[],""],[_uniform,[["ACE_elasticBandage",12],["ACE_tourniquet",4],["ACE_morphine",2],["ACE_MapTools",1],["ACE_epinephrine",3],["ACE_EarPlugs",1],["ACE_quikclot",2],["ACE_packingBandage",5],["CUP_8Rnd_9x18_Makarov_M",3,8]]],["CUP_V_CDF_CrewBelt",[["ACE_salineIV_500",2],["ACE_splint",2],["CUP_10Rnd_762x54_SVD_M",8,10]]],[],_helmet,_facewear,[],["ItemMap","","","ItemCompass","ItemWatch",""]];
	};

	case "CUP_O_RU_Spotter": {
		_unit setUnitLoadout [["CUP_arifle_AK74","","","CUP_optic_PSO_1_1_open",["CUP_30Rnd_545x39_AK_M",30],[],""],[],[],[_uniform,[["ACE_elasticBandage",12],["ACE_tourniquet",4],["ACE_morphine",2],["ACE_MapTools",1],["ACE_epinephrine",3],["ACE_EarPlugs",1],["ACE_quikclot",2],["ACE_packingBandage",5]]],[_vest,[["ACE_salineIV_500",2],["ACE_splint",2],["CUP_HandGrenade_RGD5",1,1],["CUP_HandGrenade_RGO",1,1],["SmokeShell",2,1],["CUP_30Rnd_545x39_AK_M",8,30]]],[],_helmet,_facewear,["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch","CUP_NVG_1PN138"]];
	};

	case "CUP_O_RU_Sniper": {
		_unit setUnitLoadout [["CUP_srifle_Mosin_Nagant","","","CUP_optic_PEM",["CUP_5Rnd_762x54_Mosin_M",5],[],""],[],["CUP_hgun_Makarov","","","",["CUP_8Rnd_9x18_Makarov_M",8],[],""],[_uniform,[["ACE_elasticBandage",12],["ACE_tourniquet",4],["ACE_morphine",2],["ACE_MapTools",1],["ACE_epinephrine",3],["ACE_EarPlugs",1],["ACE_quikclot",2],["ACE_packingBandage",5],["CUP_8Rnd_9x18_Makarov_M",3,8]]],["CUP_V_CDF_CrewBelt",[["ACE_salineIV_500",2],["ACE_splint",2],["CUP_8Rnd_9x18_Makarov_M",3,8],["CUP_5Rnd_762x54_Mosin_M",12,5]]],[],_helmet,_facewear,[],["ItemMap","","","ItemCompass","ItemWatch",""]]
	};

	case "CUP_O_RU_Soldier_Saiga": {
		_unit setUnitLoadout [["sgun_HunterShotgun_01_F","","","",["2Rnd_12Gauge_Pellets",2],[],""],[],[],[_uniform,[["ACE_elasticBandage",12],["ACE_tourniquet",4],["ACE_morphine",2],["ACE_MapTools",1],["ACE_epinephrine",3],["ACE_EarPlugs",1],["ACE_quikclot",2],["ACE_packingBandage",5]]],[_vest,[["ACE_salineIV_500",2],["ACE_splint",2],["CUP_HandGrenade_RGD5",1,1],["CUP_HandGrenade_RGO",1,1],["SmokeShell",2,1],["2Rnd_12Gauge_Pellets",8,2],["2Rnd_12Gauge_Slug",8,2]]],[],_helmet,_facewear,[],["ItemMap","","","ItemCompass","ItemWatch",""]];
	};

	case "CUP_O_SLA_Crew": {
		_unit setUnitLoadout [["CUP_arifle_AKS74U","","","",["CUP_30Rnd_545x39_AK_M",30],[],""],[],[],["CUP_U_O_SLA_Green",[["ACE_elasticBandage",12],["ACE_tourniquet",4],["ACE_morphine",2],["ACE_MapTools",1],["ACE_epinephrine",3],["ACE_EarPlugs",1],["ACE_quikclot",2],["ACE_packingBandage",5]]],[_satchel,[["ACE_salineIV_500",2],["ACE_splint",2],["SmokeShell",2,1],["CUP_HandGrenade_RGD5",1,1],["CUP_HandGrenade_RGO",1,1],["CUP_30Rnd_545x39_AK_M",7,30]]],[],"CUP_H_SLA_TankerHelmet","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
	};

	case "CUP_O_RU_Crew": {
		_unit setUnitLoadout [["CUP_arifle_AKS74U","","","",["CUP_30Rnd_545x39_AK_M",30],[],""],[],[],["CUP_U_O_SLA_Green",[["ACE_elasticBandage",12],["ACE_tourniquet",4],["ACE_morphine",2],["ACE_MapTools",1],["ACE_epinephrine",3],["ACE_EarPlugs",1],["ACE_quikclot",2],["ACE_packingBandage",5]]],[_satchel,[["ACE_salineIV_500",2],["ACE_splint",2],["SmokeShell",2,1],["CUP_HandGrenade_RGD5",1,1],["CUP_HandGrenade_RGO",1,1],["CUP_30Rnd_545x39_AK_M",7,30]]],[],"CUP_H_SLA_TankerHelmet","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
	};

	case "CUP_O_RU_Pilot": {
		_unit setUnitLoadout [[],[],["CUP_hgun_Makarov","","","",["CUP_8Rnd_9x18_Makarov_M",8],[],""],["CUP_U_O_SLA_Overalls_Pilot",[["ACE_elasticBandage",12],["ACE_tourniquet",4],["ACE_morphine",2],["ACE_MapTools",1],["ACE_epinephrine",3],["ACE_EarPlugs",1],["ACE_quikclot",2],["ACE_packingBandage",5],["ACE_salineIV_500",2],["ACE_splint",2]]],["CUP_V_C_Police_Holster",[["ACRE_PRC148",1],["SmokeShell",2,1],["CUP_HandGrenade_RGD5",1,1],["CUP_HandGrenade_RGO",1,1],["CUP_8Rnd_9x18_Makarov_M",4,8]]],[],"CUP_H_RUS_ZSH_Shield_Up","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
	};

	default {
		_unit setUnitLoadout [[_assRifle,"","","",["CUP_30Rnd_545x39_AK_M",30],[],""],[],[],[_uniform,[["ACE_elasticBandage",12],["ACE_tourniquet",4],["ACE_morphine",2],["ACE_MapTools",1],["ACE_epinephrine",3],["ACE_EarPlugs",1],["ACE_quikclot",2],["ACE_packingBandage",5]]],[_vest,[["ACE_salineIV_500",2],["ACE_splint",2],["CUP_HandGrenade_RGD5",1,1],["CUP_HandGrenade_RGO",1,1],["SmokeShell",2,1],["CUP_30Rnd_545x39_AK_M",8,30]]],[],_helmet,_facewear,[],["ItemMap","","","ItemCompass","ItemWatch",""]];
	};
};

nil