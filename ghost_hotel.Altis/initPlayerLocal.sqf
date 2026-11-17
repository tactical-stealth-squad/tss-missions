params ["_player", "_didJIP"];

call compile preprocessFileLineNumbers "briefing.sqf";

//--------------------Loadout-------------------------
private _helmet = selectRandom ["CUP_H_LWHv2_desert_comms", "CUP_H_LWHv2_desert_ess_comms"];
private _uniform = selectRandom ["CUP_U_B_BDUv2_gloves_DCU_US", "CUP_U_B_BDUv2_roll2_gloves_DCU_US", "CUP_U_B_BDUv2_roll_gloves_DCU_US"];

switch (typeOf _player) do {
	//TL
	case "B_Soldier_TL_F": {
		_player setUnitLoadout [["CUP_arifle_Colt727","","CUP_acc_Flashlight","CUP_optic_CompM2_low",["CUP_30Rnd_556x45_Stanag",30],[],""],[],["CUP_hgun_Colt1911","","","",["CUP_7Rnd_45ACP_1911",7],[],""],[_uniform,[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_epinephrine",2],["ACE_morphine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",3],["ACRE_PRC152",1]]],["CUP_V_B_Ciras_Black3",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["ACRE_PRC148",1],["HandGrenade",2,1],["SmokeShell",2,1],["CUP_30Rnd_556x45_Stanag",10,30],["CUP_7Rnd_45ACP_1911",3,7],["SmokeShellPurple",1,1],["SmokeShellRed",1,1],["SmokeShellGreen",1,1]]],[],_helmet,"",["ACE_Vector","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
	};
	//Rfl
	case "B_Soldier_F": {
		_player setUnitLoadout [["CUP_arifle_Colt727","","CUP_acc_Flashlight","CUP_optic_CompM2_low",["CUP_30Rnd_556x45_Stanag",30],[],""],[],["CUP_hgun_Colt1911","","","",["CUP_7Rnd_45ACP_1911",7],[],""],[_uniform,[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_epinephrine",2],["ACE_morphine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",3]]],["CUP_V_B_Ciras_Black3",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["HandGrenade",2,1],["SmokeShell",2,1],["CUP_30Rnd_556x45_Stanag",10,30],["CUP_7Rnd_45ACP_1911",3,7]]],[],_helmet,"",[],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
	};
	//AR
	case "B_soldier_AR_F": {
		_player setUnitLoadout [["CUP_lmg_m249_para","","","",["CUP_200Rnd_TE4_Red_Tracer_556x45_M249",200],[],""],[],["CUP_hgun_Colt1911","","","",["CUP_7Rnd_45ACP_1911",7],[],""],[_uniform,[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_epinephrine",2],["ACE_morphine",3],["ACE_quikclot",3],["ACE_tourniquet",4],["CUP_7Rnd_45ACP_1911",1,7]]],["CUP_V_B_Ciras_Black2",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["ACE_MapTools",1],["HandGrenade",2,1],["SmokeShell",2,1],["CUP_200Rnd_TE4_Red_Tracer_556x45_M249",4,200],["CUP_7Rnd_45ACP_1911",1,7]]],[],_helmet,"",[],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
	};
	//GRE
	case "B_Soldier_GL_F": {
		_player setUnitLoadout [["CUP_arifle_Colt727_M203","","","CUP_optic_CompM2_low",["CUP_30Rnd_556x45_Stanag",30],[],""],[],["CUP_hgun_Colt1911","","","",["CUP_7Rnd_45ACP_1911",7],[],""],[_uniform,[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_epinephrine",2],["ACE_morphine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",3],["1Rnd_HE_Grenade_shell",2,1]]],["CUP_V_B_Ciras_Black3",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["HandGrenade",2,1],["SmokeShell",2,1],["CUP_7Rnd_45ACP_1911",3,7],["CUP_30Rnd_556x45_Stanag",10,30],["1Rnd_HE_Grenade_shell",8,1]]],[],_helmet,"",[],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
	};
	//AT
	case "B_soldier_LAT_F": {
		_player setUnitLoadout [["CUP_arifle_Colt727","","CUP_acc_Flashlight","CUP_optic_CompM2_low",["CUP_30Rnd_556x45_Stanag",30],[],""],["CUP_launch_M72A6_Loaded","","","",["CUP_M72A6_M",1],[],""],["CUP_hgun_Colt1911","","","",["CUP_7Rnd_45ACP_1911",7],[],""],[_uniform,[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_epinephrine",2],["ACE_morphine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",3],["CUP_7Rnd_45ACP_1911",1,7]]],["CUP_V_PMC_CIRAS_Black_Patrol",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["HandGrenade",1,1],["SmokeShell",1,1],["CUP_30Rnd_556x45_Stanag",9,30],["CUP_7Rnd_45ACP_1911",1,7]]],[],_helmet,"",[],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
	};
	//Marksman
	case "B_soldier_LAT_F": {
		_player setUnitLoadout [["CUP_srifle_M21_ris","CUP_muzzle_snds_M14","","CUP_optic_AIMM_M68_BLK",["CUP_20Rnd_762x51_DMR",20],[],"bipod_02_F_blk"],[],["CUP_hgun_Colt1911","","","",["CUP_7Rnd_45ACP_1911",7],[],""],[_uniform,[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_epinephrine",2],["ACE_morphine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",3]]],["CUP_V_B_Ciras_Black3",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["HandGrenade",2,1],["SmokeShell",2,1],["CUP_7Rnd_45ACP_1911",3,7],["CUP_20Rnd_762x51_DMR",8,20]]],[],_helmet,"",[],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
	};
	//CLS
	case "B_medic_F": {
		_player setUnitLoadout [["CUP_arifle_Colt727","","CUP_acc_Flashlight","CUP_optic_CompM2_low",["CUP_30Rnd_556x45_Stanag",30],[],""],[],["CUP_hgun_Colt1911","","","",["CUP_7Rnd_45ACP_1911",7],[],""],[_uniform,[["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_tourniquet",4]]],["CUP_V_B_Ciras_Black",[["ACE_surgicalKit",1],["ACRE_PRC343",1],["HandGrenade",2,1],["SmokeShell",2,1],["CUP_30Rnd_556x45_Stanag",12,30],["CUP_7Rnd_45ACP_1911",3,7]]],["CUP_B_AssaultPack_Black",[["ACE_elasticBandage",18],["ACE_packingBandage",5],["ACE_epinephrine",12],["ACE_morphine",8],["ACE_salineIV",4],["ACE_salineIV_250",8],["ACE_tourniquet",4],["ACE_splint",12]]],_helmet,"",[],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
	};
	//Pilot
	case "B_Helipilot_F": {
		_player setUnitLoadout [["CUP_smg_MP5A5","","","",["CUP_30Rnd_9x19_MP5",30],[],""],[],["CUP_hgun_Colt1911","","","",["CUP_7Rnd_45ACP_1911",7],[],""],["CUP_U_B_USMC_PilotOverall",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_epinephrine",2],["ACE_morphine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",3],["ACE_DAGR",1]]],["CUP_V_PMC_CIRAS_Black_Empty",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["ACRE_PRC148",1],["CUP_30Rnd_9x19_MP5",3,30]]],[],"CUP_H_SPH4","",[],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
	};
};

_player action ["SwitchWeapon", player, player, -1];
sleep 10;
[["Combat Outpost Double Bird"],
 ["3. Oktober 1993"],
 ["15:15 Uhr",2,1,4]]
 spawn BIS_fnc_EXP_camp_SITREP;

//--------------------ACE Action-------------------------
private _action = [	
	"teleport_boat", "Ausgangsstellung bei den Booten", "", 
	{	Params ["_target", "_player", "_actionParams"];
		_player setVehiclePosition [getMarkerPos "start_boat", [], 15];
    }, {true}
] call ace_interact_menu_fnc_createAction;
[model, 0,["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

private _action = [	
	"teleport_south", "Ausgangsstellung Süd", "", 
	{	Params ["_target", "_player", "_actionParams"];
		_player setVehiclePosition [getMarkerPos "start_south", [], 15];
    }, {true}
] call ace_interact_menu_fnc_createAction;
[model, 0,["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

private _action = [	
	"teleport_north", "Ausgangsstellung Nord", "", 
	{	Params ["_target", "_player", "_actionParams"];
		_player setVehiclePosition [getMarkerPos "start_north", [], 15];
    }, {true}
] call ace_interact_menu_fnc_createAction;
[model, 0,["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

[model] call compile preprocessFileLineNumbers "fn_addTeleporter.sqf";