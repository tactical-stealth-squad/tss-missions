Params ["_player", "_didJIP"];

doStop _player;

[] call compile preprocessFileLineNumbers "scr_briefing.sqf";

if (!_didJIP) then {
	[_player] spawn compile preprocessFileLineNumbers "scr_introClient.sqf";
} else {
	cutText ["","BLACK IN",15];
	sleep 5;
	[["Grenzjäger",3,2], ["Deutschland",3,2], ["15.08.1989",3,2,7]] call BIS_fnc_EXP_camp_SITREP;
};

// Teleport
[obj_teleport] call compile preprocessFileLineNumbers "fnc_addTeleporter.sqf";


// ---------- Loadouts ----------

private _uniform = selectRandom ["U_C_man_sport_3_F", "U_C_man_sport_2_F", "CFP_75th_Under_Wear", "CFP_75th_Under_Wear", "CFP_75th_Under_Wear", "CFP_75th_Under_Wear", "CFP_75th_Under_Wear", "CFP_75th_Under_Wear", "CFP_75th_Under_Wear", "CFP_75th_Under_Wear", "CFP_75th_Under_Wear", "CFP_75th_Under_Wear"];
_player setUnitLoadout [[],[],[],[_uniform,[]],[],[],"","",[],["","","","","",""]];

private _action = [	
	"eqp_lead",     // 0: Action name <STRING>
	"Führung",      // 1: Name of the action shown in the menu <STRING>
	"",             // 2: Icon file path or Array of icon file path and hex color ("" for default icon) <STRING|ARRAY>
	{               // 3: Statement <CODE>
		_player setUnitLoadout [["CUP_arifle_G3A3_ris_black","","","",["CUP_20Rnd_762x51_G3",20],[],""],[],["CUP_hgun_Glock17_blk","muzzle_snds_L","","",["CUP_17Rnd_9x19_glock17",17],[],""],["CUP_U_I_GUE_Flecktarn",[["ACE_tourniquet",4],["ACE_morphine",2],["ACE_MapTools",1],["ACE_epinephrine",3],["ACE_EarPlugs",1],["ACE_quikclot",2],["ACE_packingBandage",5],["ACE_elasticBandage",12],["CUP_17Rnd_9x19_glock17",3,17],["ACE_painkillers",1,10]]],["CUP_V_B_GER_Vest_1",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_SEM52SL",1],["HandGrenade",2,1],["SmokeShell",2,1]]],["CUP_B_AlicePack_OD",[["CUP_20Rnd_762x51_G3",9,20]]],"CUP_H_Ger_M92_RGR","CUP_G_PMC_RadioHeadset",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];
	},
	{               // 4: Condition <CODE>
		true
	}, {}, [], [0, 0, 0], 10
] call ace_interact_menu_fnc_createAction;
[obj_equipment, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;


private _action = [	
	"eqp_mg3",       // 0: Action name <STRING>
	"MG3",      // 1: Name of the action shown in the menu <STRING>
	"",             // 2: Icon file path or Array of icon file path and hex color ("" for default icon) <STRING|ARRAY>
	{               // 3: Statement <CODE>
		_player setUnitLoadout [["CUP_lmg_MG3","","","",["CUP_120Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",120],[],""],[],["CUP_hgun_Glock17_blk","muzzle_snds_L","","",["CUP_17Rnd_9x19_glock17",17],[],""],["CUP_U_I_GUE_Flecktarn",[["ACE_tourniquet",4],["ACE_morphine",2],["ACE_MapTools",1],["ACE_epinephrine",3],["ACE_EarPlugs",1],["ACE_quikclot",2],["ACE_packingBandage",5],["ACE_elasticBandage",12],["CUP_17Rnd_9x19_glock17",3,17],["ACE_painkillers",1,10]]],["CUP_V_B_GER_Vest_1",[["ACE_splint",2],["ACE_salineIV_500",2],["ACRE_SEM52SL",1],["HandGrenade",2,1],["SmokeShell",2,1]]],["CUP_B_AlicePack_OD",[["CUP_120Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",6,120]]],"CUP_H_Ger_M92_RGR","CUP_G_PMC_RadioHeadset",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];
	},
	{               // 4: Condition <CODE>
		true
	}, {}, [], [0, 0, 0], 10
] call ace_interact_menu_fnc_createAction;
[obj_equipment, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;


private _action = [	
	"eqp_psg",       // 0: Action name <STRING>
	"PSG",      // 1: Name of the action shown in the menu <STRING>
	"",             // 2: Icon file path or Array of icon file path and hex color ("" for default icon) <STRING|ARRAY>
	{               // 3: Statement <CODE>
		_player setUnitLoadout [["CUP_arifle_G3A3_modern_ris_black","CUP_muzzle_snds_socom762rc","","ACE_optic_SOS_2D",["CUP_20Rnd_762x51_G3",20],[],"CUP_bipod_G3SG1"],[],["CUP_hgun_Glock17_blk","muzzle_snds_L","","",["CUP_17Rnd_9x19_glock17",17],[],""],["CUP_U_I_GUE_Flecktarn",[["ACE_tourniquet",4],["ACE_morphine",2],["ACE_MapTools",1],["ACE_epinephrine",3],["ACE_EarPlugs",1],["ACE_quikclot",2],["ACE_packingBandage",5],["ACE_elasticBandage",12],["ACE_RangeCard",1],["CUP_17Rnd_9x19_glock17",2,17],["ACE_painkillers",1,10]]],["CUP_V_B_GER_Vest_1",[["ACE_splint",2],["ACE_salineIV_500",2],["ACRE_SEM52SL",1],["HandGrenade",2,1],["SmokeShell",2,1]]],["CUP_B_AlicePack_OD",[["CUP_20Rnd_762x51_G3",9,20]]],"CUP_H_Ger_M92_RGR","CUP_G_PMC_RadioHeadset",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];
	},
	{               // 4: Condition <CODE>
		true
	}, {}, [], [0, 0, 0], 10
] call ace_interact_menu_fnc_createAction;
[obj_equipment, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;


private _action = [	
	"eqp_maaws",       // 0: Action name <STRING>
	"AT MAAWS",      // 1: Name of the action shown in the menu <STRING>
	"",             // 2: Icon file path or Array of icon file path and hex color ("" for default icon) <STRING|ARRAY>
	{               // 3: Statement <CODE>
		_player setUnitLoadout [["CUP_arifle_G3A3_ris_black","","","",["CUP_20Rnd_762x51_G3",20],[],""],["CUP_launch_MAAWS","","","",["CUP_MAAWS_HEAT_M",1],[],""],[],["CUP_U_I_GUE_Flecktarn",[["ACE_tourniquet",4],["ACE_morphine",2],["ACE_MapTools",1],["ACE_epinephrine",3],["ACE_EarPlugs",1],["ACE_quikclot",2],["ACE_packingBandage",5],["ACE_elasticBandage",12],["CUP_20Rnd_762x51_G3",1,20],["ACE_painkillers",1,10]]],["CUP_V_B_GER_Vest_1",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_SEM52SL",1],["HandGrenade",2,1],["SmokeShell",2,1]]],["CUP_B_AlicePack_OD",[["CUP_MAAWS_HEAT_M",3,1],["CUP_20Rnd_762x51_G3",8,20]]],"CUP_H_Ger_M92_RGR","CUP_G_PMC_RadioHeadset",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];
	},
	{               // 4: Condition <CODE>
		true
	}, {}, [], [0, 0, 0], 10
] call ace_interact_menu_fnc_createAction;
[obj_equipment, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

private _action = [	
	"eqp_m47",       // 0: Action name <STRING>
	"AT Dragon",      // 1: Name of the action shown in the menu <STRING>
	"",             // 2: Icon file path or Array of icon file path and hex color ("" for default icon) <STRING|ARRAY>
	{               // 3: Statement <CODE>
		_player setUnitLoadout [["CUP_arifle_G3A3_ris_black","","","",["CUP_20Rnd_762x51_G3",20],[],""],["CUP_launch_M47","","","",["CUP_Dragon_EP1_M",1],[],""],[],["CUP_U_I_GUE_Flecktarn",[["ACE_tourniquet",4],["ACE_morphine",2],["ACE_MapTools",1],["ACE_epinephrine",3],["ACE_EarPlugs",1],["ACE_quikclot",2],["ACE_packingBandage",5],["ACE_elasticBandage",12],["CUP_20Rnd_762x51_G3",1,20],["ACE_painkillers",1,10]]],["CUP_V_B_GER_Vest_1",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_SEM52SL",1],["HandGrenade",2,1],["SmokeShell",2,1]]],["CUP_B_AlicePack_OD",[["CUP_20Rnd_762x51_G3",5,20],["CUP_Dragon_EP1_M",1,1]]],"CUP_H_Ger_M92_RGR","CUP_G_PMC_RadioHeadset",["ace_dragon_sight","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];
	},
	{               // 4: Condition <CODE>
		true
	}, {}, [], [0, 0, 0], 10
] call ace_interact_menu_fnc_createAction;
[obj_equipment, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

private _action = [	
	"eqp_pzf3",       // 0: Action name <STRING>
	"AT Pzf3",      // 1: Name of the action shown in the menu <STRING>
	"",             // 2: Icon file path or Array of icon file path and hex color ("" for default icon) <STRING|ARRAY>
	{               // 3: Statement <CODE>
		_player setUnitLoadout [["CUP_arifle_G3A3_ris_black","","","",["CUP_20Rnd_762x51_G3",20],[],""],["CUP_launch_HCPF3","","","",[],[],""],[],["CUP_U_I_GUE_Flecktarn",[["ACE_tourniquet",4],["ACE_morphine",2],["ACE_MapTools",1],["ACE_epinephrine",3],["ACE_EarPlugs",1],["ACE_quikclot",2],["ACE_packingBandage",5],["ACE_elasticBandage",12],["CUP_20Rnd_762x51_G3",1,20],["ACE_painkillers",1,10]]],["CUP_V_B_GER_Vest_1",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_SEM52SL",1],["HandGrenade",2,1],["SmokeShell",2,1]]],["CUP_B_AlicePack_OD",[["CUP_20Rnd_762x51_G3",8,20],[["CUP_launch_HCPF3_Loaded","","","",["CUP_PTFHC_M",1],[],""],1]]],"CUP_H_Ger_M92_RGR","CUP_G_PMC_RadioHeadset",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];
	},
	{               // 4: Condition <CODE>
		true
	}, {}, [], [0, 0, 0], 10
] call ace_interact_menu_fnc_createAction;
[obj_equipment, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;


private _action = [	
	"eqp_g3",       // 0: Action name <STRING>
	"G3",      // 1: Name of the action shown in the menu <STRING>
	"",             // 2: Icon file path or Array of icon file path and hex color ("" for default icon) <STRING|ARRAY>
	{               // 3: Statement <CODE>
		_player setUnitLoadout [["CUP_arifle_G3A3_ris_black","","","",["CUP_20Rnd_762x51_G3",20],[],""],[],["CUP_hgun_Glock17_blk","muzzle_snds_L","","",["CUP_17Rnd_9x19_glock17",17],[],""],["CUP_U_I_GUE_Flecktarn",[["ACE_tourniquet",4],["ACE_morphine",2],["ACE_MapTools",1],["ACE_epinephrine",3],["ACE_EarPlugs",1],["ACE_quikclot",2],["ACE_packingBandage",5],["ACE_elasticBandage",12],["CUP_17Rnd_9x19_glock17",3,17],["ACE_painkillers",1,10]]],["CUP_V_B_GER_Vest_1",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_SEM52SL",1],["HandGrenade",2,1],["SmokeShell",2,1]]],["CUP_B_AlicePack_OD",[["CUP_20Rnd_762x51_G3",9,20]]],"CUP_H_Ger_M92_RGR","CUP_G_PMC_RadioHeadset",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];
	},
	{               // 4: Condition <CODE>
		true
	}, {}, [], [0, 0, 0], 10
] call ace_interact_menu_fnc_createAction;
[obj_equipment, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;


private _action = [	
	"eqp_medic",       // 0: Action name <STRING>
	"Sanitäter",      // 1: Name of the action shown in the menu <STRING>
	"",             // 2: Icon file path or Array of icon file path and hex color ("" for default icon) <STRING|ARRAY>
	{               // 3: Statement <CODE>
		_player setUnitLoadout [["CUP_smg_MP5SD6","","","",["CUP_30Rnd_Subsonic_9x19_MP5",30],[],""],[],[],["CUP_U_I_GUE_Flecktarn",[["ACE_tourniquet",4],["ACE_morphine",2],["ACE_MapTools",1],["ACE_epinephrine",3],["ACE_EarPlugs",1],["ACE_quikclot",2],["ACE_packingBandage",5],["ACE_elasticBandage",12],["ACRE_SEM52SL",1],["ACE_painkillers",1,10]]],["CUP_V_B_GER_Vest_1",[["ACE_salineIV_500",2],["ACE_splint",2],["ACE_salineIV_250",2],["HandGrenade",2,1],["SmokeShell",2,1]]],["CUP_B_AlicePack_OD",[["ACE_personalAidKit",1],["ACE_surgicalKit",1],["ACE_elasticBandage",18],["ACE_plasmaIV_500",4],["ACE_salineIV",4],["ACE_splint",12],["ACE_tourniquet",4],["ACE_morphine",8],["ACE_packingBandage",5],["ACE_epinephrine",12],["CUP_30Rnd_Subsonic_9x19_MP5",9,30]]],"CUP_H_Ger_M92_RGR","CUP_G_PMC_RadioHeadset",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];
	},
	{               // 4: Condition <CODE>
		true
	}, {}, [], [0, 0, 0], 10
] call ace_interact_menu_fnc_createAction;
[obj_equipment, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;


private _action = [	
	"eqp_mp5",       // 0: Action name <STRING>
	"MP5SD",      // 1: Name of the action shown in the menu <STRING>
	"",             // 2: Icon file path or Array of icon file path and hex color ("" for default icon) <STRING|ARRAY>
	{               // 3: Statement <CODE>
		_player setUnitLoadout [["CUP_smg_MP5SD6","","","",["CUP_30Rnd_Subsonic_9x19_MP5",30],[],""],[],[],["CUP_U_I_GUE_Flecktarn",[["ACE_tourniquet",4],["ACE_morphine",2],["ACE_MapTools",1],["ACE_epinephrine",3],["ACE_EarPlugs",1],["ACE_quikclot",2],["ACE_packingBandage",5],["ACE_elasticBandage",12],["ACE_painkillers",1,10]]],["CUP_V_B_GER_Vest_1",[["ACE_salineIV_500",2],["ACE_splint",2],["HandGrenade",2,1],["SmokeShell",2,1]]],["CUP_B_AlicePack_OD",[["CUP_30Rnd_Subsonic_9x19_MP5",9,30]]],"CUP_H_Ger_M92_RGR","CUP_G_PMC_RadioHeadset",["Binocular","","","",[],[],""],["ItemMap","","","ItemCompass","ItemWatch",""]];
	},
	{               // 4: Condition <CODE>
		true
	}, {}, [], [0, 0, 0], 10
] call ace_interact_menu_fnc_createAction;
[obj_equipment, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;


private _action = [	
	"teleport_lager",       // 0: Action name <STRING>
	"Zum Lager",      // 1: Name of the action shown in the menu <STRING>
	"",             // 2: Icon file path or Array of icon file path and hex color ("" for default icon) <STRING|ARRAY>
	{               // 3: Statement <CODE>
		[_player, "mrk_lager", 4] call CBA_fnc_setPos;
	},
	{               // 4: Condition <CODE>
		true
	}, {}, [], [0, 0, 0], 5
] call ace_interact_menu_fnc_createAction;
[obj_port_lager, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;


_action = [
	"search_intel",
	"Nach Informationen durchsuchen",
	"",
	{
		Params ["_target", "_player", "_actionParams"];
		["Intel", [_target]] call CBA_fnc_serverEvent;
	},
	{
		true
	},
	{},
	[],
	[0,0,0],
	300
] call ace_interact_menu_fnc_createAction;
[unt_target_1, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;
[unt_target_2, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;