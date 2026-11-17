Params ["_player", "_didJIP"];

doStop _player;

[] call compile preprocessFileLineNumbers "scr_briefing.sqf";

// ---------- Loadouts ----------
switch (typeOf _player) do {

	case "B_Soldier_SL_F": {
		_player setUnitLoadout [["CUP_smg_MP5SD6","","","",["CUP_30Rnd_Subsonic_9x19_MP5",30],[],""],["CUP_launch_M72A6","","","",[],[],""],[],["CUP_U_I_GUE_Flecktarn",[["ACE_tourniquet",4],["ACE_morphine",2],["ACE_MapTools",1],["ACE_epinephrine",3],["ACE_EarPlugs",1],["ACE_quikclot",2],["ACE_packingBandage",5],["ACE_elasticBandage",12]]],["CUP_V_B_GER_Vest_1",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_SEM52SL",1],["HandGrenade",2,1],["SmokeShell",2,1]]],["B_TacticalPack_blk",[["ACRE_SEM70",1],["CUP_30Rnd_Subsonic_9x19_MP5",9,30]]],"CUP_H_Ger_M92_RGR","CUP_G_PMC_RadioHeadset",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch","CUP_NVG_PVS14_Hide"]];
	};

	case "B_soldier_AR_F": {
		_player setUnitLoadout [["CUP_lmg_MG3","","","",["CUP_120Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",120],[],""],[],["CUP_hgun_Glock17_blk","muzzle_snds_L","","",["CUP_17Rnd_9x19_glock17",17],[],""],["CUP_U_I_GUE_Flecktarn",[["ACE_tourniquet",4],["ACE_morphine",2],["ACE_MapTools",1],["ACE_epinephrine",3],["ACE_EarPlugs",1],["ACE_quikclot",2],["ACE_packingBandage",5],["ACE_elasticBandage",12],["CUP_17Rnd_9x19_glock17",2,17]]],["CUP_V_B_GER_Vest_1",[["ACE_splint",2],["ACE_salineIV_500",2],["ACRE_SEM52SL",1],["HandGrenade",2,1],["SmokeShell",2,1]]],["B_TacticalPack_blk",[["CUP_120Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",5,120]]],"CUP_H_Ger_M92_RGR","CUP_G_PMC_RadioHeadset",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch","CUP_NVG_PVS14_Hide"]];
	};

	case "B_soldier_M_F": {
		_player setUnitLoadout [["CUP_arifle_G3A3_modern_ris_black","CUP_muzzle_snds_socom762rc","","ACE_optic_SOS_2D",["CUP_20Rnd_762x51_G3",20],[],"CUP_bipod_G3SG1"],[],["CUP_hgun_Glock17_blk","muzzle_snds_L","","",["CUP_17Rnd_9x19_glock17",17],[],""],["CUP_U_I_GUE_Flecktarn",[["ACE_tourniquet",4],["ACE_morphine",2],["ACE_MapTools",1],["ACE_epinephrine",3],["ACE_EarPlugs",1],["ACE_quikclot",2],["ACE_packingBandage",5],["ACE_elasticBandage",12],["CUP_17Rnd_9x19_glock17",2,17]]],["CUP_V_B_GER_Vest_1",[["ACE_splint",2],["ACE_salineIV_500",2],["ACRE_SEM52SL",1],["HandGrenade",2,1],["SmokeShell",2,1]]],["B_TacticalPack_blk",[["CUP_20Rnd_762x51_G3",9,20]]],"CUP_H_Ger_M92_RGR","CUP_G_PMC_RadioHeadset",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch","CUP_NVG_PVS14_Hide"]];
	};

	case "B_soldier_LAT_F": {
		_player setUnitLoadout [["CUP_smg_MP5SD6","","","",["CUP_30Rnd_Subsonic_9x19_MP5",30],[],""],["CUP_launch_MAAWS","","","",["CUP_MAAWS_HEAT_M",1],[],""],[],["CUP_U_I_GUE_Flecktarn",[["ACE_tourniquet",4],["ACE_morphine",2],["ACE_MapTools",1],["ACE_epinephrine",3],["ACE_EarPlugs",1],["ACE_quikclot",2],["ACE_packingBandage",5],["ACE_elasticBandage",12]]],["CUP_V_B_GER_Vest_1",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_SEM52SL",1],["HandGrenade",2,1],["SmokeShell",2,1]]],["B_TacticalPack_blk",[["CUP_30Rnd_Subsonic_9x19_MP5",9,30],["CUP_MAAWS_HEAT_M",2,1]]],"CUP_H_Ger_M92_RGR","CUP_G_PMC_RadioHeadset",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch","CUP_NVG_PVS14_Hide"]];
	};

	case "B_Soldier_F": {
		_player setUnitLoadout [["CUP_arifle_G3A3_ris_black","CUP_muzzle_snds_socom762rc","","",["CUP_20Rnd_762x51_G3",20],[],""],[],[],["CUP_U_I_GUE_Flecktarn",[["ACE_tourniquet",4],["ACE_morphine",2],["ACE_MapTools",1],["ACE_epinephrine",3],["ACE_EarPlugs",1],["ACE_quikclot",2],["ACE_packingBandage",5],["ACE_elasticBandage",12]]],["CUP_V_B_GER_Vest_1",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_SEM52SL",1],["HandGrenade",2,1],["SmokeShell",2,1]]],["B_TacticalPack_blk",[["CUP_20Rnd_762x51_G3",9,20]]],"CUP_H_Ger_M92_RGR","CUP_G_PMC_RadioHeadset",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch","CUP_NVG_PVS14_Hide"]];
	};

	case "B_medic_F": {
		_player setUnitLoadout [["CUP_smg_MP5SD6","","","",["CUP_30Rnd_Subsonic_9x19_MP5",30],[],""],[],[],["CUP_U_I_GUE_Flecktarn",[["ACE_tourniquet",4],["ACE_morphine",2],["ACE_MapTools",1],["ACE_epinephrine",3],["ACE_EarPlugs",1],["ACE_quikclot",2],["ACE_packingBandage",5],["ACE_elasticBandage",12],["ACRE_SEM52SL",1]]],["CUP_V_B_GER_Vest_1",[["ACE_salineIV_500",2],["ACE_splint",2],["ACE_salineIV_250",2],["HandGrenade",2,1],["SmokeShell",2,1]]],["B_TacticalPack_blk",[["ACE_personalAidKit",1],["ACE_surgicalKit",1],["ACE_elasticBandage",18],["ACE_plasmaIV_500",4],["ACE_salineIV",4],["ACE_splint",12],["ACE_tourniquet",4],["ACE_morphine",8],["ACE_packingBandage",5],["ACE_epinephrine",12],["CUP_30Rnd_Subsonic_9x19_MP5",9,30]]],"CUP_H_Ger_M92_RGR","CUP_G_PMC_RadioHeadset",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch","CUP_NVG_PVS14_Hide"]];
	};

	case "B_RangeMaster_F": {
		_player setUnitLoadout [["CUP_arifle_AKS74U","","","",["CUP_30Rnd_545x39_AK74_plum_M",30],[],""],["CUP_launch_RPG18","","","",[],[],""],["ACE_Flashlight_Maglite_ML300L","","","",[],[],""],["CFP_BDU_Green",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2],["CUP_30Rnd_545x39_AK74_plum_M",2,30]]],["CUP_V_B_Interceptor_Base_Olive",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_SEM52SL",1],["HandGrenade",2,1],["SmokeShell",2,1],["CUP_30Rnd_545x39_AK74_plum_M",6,30]]],[],"SP_M88PSMHelmet_Green1","",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch","CUP_NVG_1PN138_Hide"]];
	};

	case "B_Competitor_F": {
		_player setUnitLoadout [["CUP_arifle_AK74_Early","","","",[],[],""],[],["ACE_Flashlight_Maglite_ML300L","","","",[],[],""],["CFP_BDU_Green",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2]]],["CUP_V_B_Interceptor_Base_Olive",[["ACE_salineIV_500",2],["ACE_splint",2],["HandGrenade",2,1],["SmokeShell",2,1],["CUP_30Rnd_545x39_AK_M",7,30]]],["CUP_B_CivPack_WDL",[["ACE_elasticBandage",18],["ACE_packingBandage",5],["ACE_epinephrine",12],["ACE_morphine",8],["ACE_salineIV",4],["ACE_salineIV_250",2],["ACE_tourniquet",4],["ACE_splint",12],["ACE_plasmaIV_500",4]]],"SP_M88PSMHelmet_Green1","",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];
	};

	default {
		_player setUnitLoadout [["CUP_smg_MP5SD6","","","",["CUP_30Rnd_Subsonic_9x19_MP5",30],[],""],[],[],["CUP_U_I_GUE_Flecktarn",[["ACE_tourniquet",4],["ACE_morphine",2],["ACE_MapTools",1],["ACE_epinephrine",3],["ACE_EarPlugs",1],["ACE_quikclot",2],["ACE_packingBandage",5],["ACE_elasticBandage",12]]],["CUP_V_B_GER_Vest_1",[["ACE_salineIV_500",2],["ACE_splint",2],["HandGrenade",2,1],["SmokeShell",2,1]]],["B_TacticalPack_blk",[["CUP_30Rnd_Subsonic_9x19_MP5",9,30]]],"CUP_H_Ger_M92_RGR","CUP_G_PMC_RadioHeadset",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch","CUP_NVG_1PN138_Hide"]];
	};
};

if (!_didJIP) then {
	[_player] spawn compile preprocessFileLineNumbers "scr_introClient.sqf";
} else {
	cutText ["","BLACK IN",15];
	_player setPos (getMarkerPos ["respawn_west", true]);
	sleep 5;
	["Grenzgänger", "08.08.1989", "Deutschland"] spawn BIS_fnc_infoText;
};

// Teleport
[obj_teleport] call compile preprocessFileLineNumbers "fnc_addTeleporter.sqf";

// Additonal Loadouts for BGS
/*	case "B_Competitor_F": {
		_player setUnitLoadout [["CUP_srifle_SVD","","","CUP_optic_PSO_1_open",["CUP_10Rnd_762x54_SVD_M",10],[],""],[],[],["CFP_BDU_Green",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2],["CUP_10Rnd_762x54_SVD_M",2,10]]],["CUP_V_B_Interceptor_Base_Olive",[["ACE_salineIV_500",2],["ACE_splint",2],["HandGrenade",2,1],["SmokeShell",2,1],["CUP_10Rnd_762x54_SVD_M",6,10]]],[],"SP_M88PSMHelmet_Green1","",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];
	};

	case "B_Competitor_F": {
		_player setUnitLoadout [["CUP_arifle_RPK74_45","","","",["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",45],[],""],[],[],["CFP_BDU_Green",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2]]],["CUP_V_B_Interceptor_Base_Olive",[["ACE_salineIV_500",2],["ACE_splint",2],["HandGrenade",2,1],["SmokeShell",2,1],["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",5,45]]],[],"SP_M88PSMHelmet_Green1","",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];
	}; 
*/

sleep 120;

_player createDiaryRecord ["Diary", ["Funkfrequenz", str(GEA_radioFreq) + " MHz"]];