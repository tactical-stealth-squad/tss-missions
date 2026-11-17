private _facewear = selectRandom ["G_Bandanna_blk", "G_Bandanna_khk", "G_Bandanna_oli", "G_Bandanna_tan", "G_Balaclava_blk", "G_Balaclava_oli"];
private _vest = selectRandom ["V_I_G_resistanceLeader_F", "V_TacVest_oli"];

private _AmmoBear = [["CUP_arifle_AKS74U","","","",["CUP_30Rnd_545x39_AK_M",30],[],""],[],[],["CUP_U_I_GUE_Flecktarn3",[["FirstAidKit",1],["CUP_30Rnd_545x39_AK_M",3,30]]],[],["CUP_B_ACRPara_m95",[["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",1,100],["CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M",1,75],["CUP_30Rnd_762x39_AK47_M",6,30],["CUP_30Rnd_545x39_AK_M",8,30],["CUP_HandGrenade_RGD5",4,1],["SmokeShell",2,1]]],"",_facewear,[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];

private _officer = [["CUP_arifle_AKS74U","","","",["CUP_30Rnd_545x39_AK_M",30],[],""],[],[],["CUP_U_I_GUE_Flecktarn2",[["FirstAidKit",1],["CUP_30Rnd_545x39_AK_M",3,30],["SmokeShell",1,1]]],["CUP_V_C_Police_Holster",[["CUP_30Rnd_545x39_AK_M",2,30],["CUP_HandGrenade_RGD5",2,1],["SmokeShell",1,1]]],[],"H_Cap_oli","G_Bandanna_aviator",["Binocular","","","",[],[],""],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];

private _mg = [["CUP_lmg_PKM","","","",["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",100],[],""],[],[],["CUP_U_I_GUE_Flecktarn",[["FirstAidKit",1]]],[],["CUP_B_ACRPara_m95",[["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",6,100]]],"CUP_H_Ger_Boonie2_Flecktarn",_facewear,[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];

private _medic = [["CUP_arifle_AKS","","","",["CUP_30Rnd_762x39_AK47_M",30],[],""],[],[],["CUP_U_I_GUE_Woodland1",[["FirstAidKit",1],["CUP_30Rnd_762x39_AK47_M",2,30]]],[],["G_FieldPack_Medic",[["Medikit",1],["CUP_30Rnd_762x39_AK47_M",1,30],["CUP_HandGrenade_RGD5",2,1]]],"",_facewear,[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];

private _solAKS = [["CUP_arifle_AKS","","","",["CUP_30Rnd_762x39_AK47_M",30],[],""],[],[],["CUP_U_I_GUE_WorkU_02",[["FirstAidKit",1],["CUP_30Rnd_762x39_AK47_M",2,30]]],[_vest,[["CUP_30Rnd_762x39_AK47_M",3,30],["CUP_HandGrenade_RGD5",2,1]]],[],"",_facewear,[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];

private _solAKSU = [["CUP_arifle_AKS74U","","","",["CUP_30Rnd_545x39_AK74_plum_M",30],[],""],[],[],["CUP_U_I_GUE_Flecktarn",[["FirstAidKit",1],["CUP_30Rnd_545x39_AK74_plum_M",3,30]]],[_vest,[["CUP_30Rnd_545x39_AK74_plum_M",2,30],["CUP_HandGrenade_RGD5",2,1]]],[],"", _facewear,[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];

[
	"CUP_I_GUE_Soldier_AA",
	"init",
	{
		private _klasse = typeOf (_this select 0);
		switch (_klasse) do {
			case "CUP_I_GUE_Ammobearer": {(_this select 0) setUnitLoadout _AmmoBear};
			case "CUP_I_GUE_Officer": {(_this select 0) setUnitLoadout _officer};
			case "CUP_I_GUE_Crew": {removeVest (_this select 0)};
			case "CUP_I_GUE_Soldier_MG": {(_this select 0) setUnitLoadout _mg};
			case "CUP_I_GUE_Medic": {(_this select 0) setUnitLoadout _medic};
			case "CUP_I_GUE_Soldier_AKS74": {(_this select 0) setUnitLoadout _solAKS};
			case "CUP_I_GUE_Soldier_AKSU": {(_this select 0) setUnitLoadout _solAKSU};
		};
	},
	true,
	[],
	true
] call CBA_fnc_addClassEventHandler;

nil