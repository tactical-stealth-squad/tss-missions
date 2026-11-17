Params ["_player", "_didJIP"];

doStop _player;
// Terrain
setterraingrid 3.125;
// Briefing
[] call compile preprocessFileLineNumbers "briefing.sqf";

// Para jump
private _action = [	
	"repair", 
	"Fallschirmsprung", 
	"", 
	{
		params ["_target", "_player", "_actionParams"];

		cutText ["Click somewhere on the map to jump from there", "PLAIN"];

		openMap true;

		addMissionEventHandler ["MapSingleClick", {
			params ["_units", "_pos", "_alt", "_shift"];

			{
				_x addBackpack "B_Parachute";
				_x setPosATL [(_pos select 0) + selectRandom [0,10,15,20] , (_pos select 1) + selectRandom [0,10,15,20], 3000  + selectRandom [0,10,15,20] ];
			} forEach units (group player); // player damit es funktioniert

			openMap false;

			// Wait until map is closed, either by ESC/M or map click
			[
				{!visibleMap},
				{removeMissionEventHandler ["MapSingleClick", _this];},
				_thisEventHandler
			] call CBA_fnc_waitUntilAndExecute;

		}];

	},
	{
		true
	}
] call ace_interact_menu_fnc_createAction;

[obj_paraJump, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;


// Start position for crew
private _action = [	
	"repair", 
	"Zu Startposition", 
	"", 
	{
		_pos = selectRandom [lgc_startPos_1, lgc_startPos_2, lgc_startPos_3, lgc_startPos_4, lgc_startPos_5, lgc_startPos_6, lgc_startPos_7, lgc_startPos_8, lgc_startPos_9, lgc_startPos_10];
		_pos = getPosATL _pos;

		{
			// Current result is saved in variable _x
			_x setVehiclePosition [_pos, [], 10, "NONE"];
		} forEach units (group _player);
	},
	{
		true
	}
] call ace_interact_menu_fnc_createAction;

[obj_start_crew, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;


// ---------- Loadout ----------

private _uniform = selectRandom ["milgp_u_g3_field_set_mc", "milgp_u_g3_field_set_rolled_mc", "milgp_u_pcu_mc_g3_field_pants_mc","milgp_u_tshirt_cb_g3_field_pants_mc","milgp_u_fleece_mc_g3_field_pants_mc"];
private _helmet = selectRandom ["milgp_h_opscore_01_khk_hexagon_rgr", "milgp_h_opscore_01_khk_rgr", "milgp_h_opscore_02_cb_hexagon_rgr", "milgp_h_opscore_02_rgr_hexagon_rgr", "milgp_h_opscore_02_rgr_rgr", "milgp_h_opscore_02_khk_rgr", "milgp_h_opscore_03_cb_hexagon_rgr", "milgp_h_opscore_04_cb_hexagon_rgr"];

switch (typeOf _player) do {

	case "B_Soldier_SL_F": {
		_player setUnitLoadout  [["arifle_SPAR_01_snd_F","muzzle_snds_M","ACE_DBAL_A3_Red","ACE_optic_Hamr_2D",["ACE_30Rnd_556x45_Stanag_M995_AP_mag",30],[],""],[],["hgun_Pistol_heavy_01_F","muzzle_snds_acp","","optic_MRD",["11Rnd_45ACP_Mag",15],[],""],[_uniform,[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2]]],["milgp_v_marciras_teamleader_belt_cb_cb_cb",[["ACE_salineIV_500",2],["ACE_splint",2],["ACE_HuntIR_monitor",1],["ACRE_PRC343",1],["HandGrenade",2,1],["SmokeShell",2,1],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",8,30],["11Rnd_45ACP_Mag",2,15]]],[],_helmet,"",["ACE_MX2A","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ACE_Altimeter","ACE_NVG_Wide"]];
	};

	case "B_Soldier_AR_F": {
		_player setUnitLoadout [["LMG_03_F","muzzle_snds_M","ACE_DBAL_A3_Red","ACE_optic_MRCO_2D",["200Rnd_556x45_Box_Tracer_Red_F",200],[],""],[],["hgun_P07_blk_F","muzzle_snds_L","","",["16Rnd_9x21_Mag",17],[],""],[_uniform,[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2],["16Rnd_9x21_Mag",3,17]]],["milgp_v_marciras_hgunner_belt_cb_cb_cb",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["HandGrenade",2,1],["SmokeShell",2,1],["200Rnd_556x45_Box_Tracer_Red_F",3,200]]],["milgp_bp_Pointman_cb",[["200Rnd_556x45_Box_Tracer_Red_F",3,200]]],_helmet,"",[],["ItemMap","ItemGPS","","ItemCompass","ACE_Altimeter","ACE_NVG_Wide"]];
	};

	case "B_Soldier_GL_F": {
		_player setUnitLoadout [["arifle_SPAR_01_GL_snd_F","muzzle_snds_M","ACE_DBAL_A3_Red","optic_Holosight_blk_F",["ACE_30Rnd_556x45_Stanag_M995_AP_mag",30],["1Rnd_HE_Grenade_shell",1],""],[],["hgun_Pistol_heavy_01_F","muzzle_snds_acp","","optic_MRD",["11Rnd_45ACP_Mag",15],[],""],[_uniform,[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2],["11Rnd_45ACP_Mag",2,15]]],["milgp_v_marciras_grenadier_belt_cb_cb_cb",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["HandGrenade",2,1],["SmokeShell",2,1],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",9,30]]],["milgp_bp_Pointman_cb",[["1Rnd_HE_Grenade_shell",15,1],["1Rnd_SmokeRed_Grenade_shell",2,1],["1Rnd_Smoke_Grenade_shell",2,1],["ACE_HuntIR_M203",3,1],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",4,30]]],_helmet,"",[],["ItemMap","ItemGPS","","ItemCompass","ACE_Altimeter","ACE_NVG_Wide"]];
	};

	case "B_medic_F": {
		_player setUnitLoadout [["arifle_SPAR_01_snd_F","muzzle_snds_M","ACE_DBAL_A3_Red","optic_Yorris",["ACE_30Rnd_556x45_Stanag_M995_AP_mag",30],[],""],[],[],["milgp_u_g3_field_set_mc",[["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_tourniquet",4]]],[_uniform,[["ACE_surgicalKit",1],["ACE_personalAidKit",1],["ACRE_PRC343",1],["ACE_plasmaIV_500",4],["ACE_salineIV_250",2],["ACE_salineIV",4],["HandGrenade",2,1],["SmokeShell",2,1],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",9,30]]],["milgp_bp_Pointman_cb",[["ACE_elasticBandage",18],["ACE_packingBandage",5],["ACE_epinephrine",12],["ACE_morphine",8],["ACE_tourniquet",4],["ACE_splint",12]]],_helmet,"",[],["ItemMap","ItemGPS","","ItemCompass","ACE_Altimeter","ACE_NVG_Wide"]];
	};

	case "B_Soldier_LAT_F": {
		_player setUnitLoadout [["arifle_SPAR_01_snd_F","muzzle_snds_M","ACE_DBAL_A3_Red","ACE_optic_Hamr_2D",["ACE_30Rnd_556x45_Stanag_M995_AP_mag",30],[],""],["CUP_launch_M136_Loaded","","","",["CUP_M136_M",1],[],""],["hgun_Pistol_heavy_01_F","muzzle_snds_acp","","optic_MRD",["11Rnd_45ACP_Mag",15],[],""],[_uniform,[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2]]],["milgp_v_marciras_assaulter_belt_cb_cb_cb",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["HandGrenade",2,1],["SmokeShell",2,1],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",9,30],["11Rnd_45ACP_Mag",2,15]]],[],_helmet,"",["Rangefinder","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ACE_Altimeter","ACE_NVG_Wide"]];
	};

	case "B_Helipilot_F": {
		_player setUnitLoadout [["SMG_02_F","","","",["30Rnd_9x21_Mag_SMG_02",30],[],""],[],[],["milgp_u_pcu_rgr_g3_field_pants_m81",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2],["30Rnd_9x21_Mag_SMG_02",1,30]]],["milgp_v_jpc_light_rgr_rgr",[["ACRE_PRC343",1],["ACE_salineIV_500",2],["ACE_splint",2],["30Rnd_9x21_Mag_SMG_02",3,30],["SmokeShell",2,1]]],[],"milgp_h_airframe_01_rgr_rgr","",[],["ItemMap","ItemGPS","","ItemCompass","ACE_Altimeter","ACE_NVG_Wide"]];
	};

	case "B_helicrew_F": {
		_player setUnitLoadout [["SMG_02_F","","","",["30Rnd_9x21_Mag_SMG_02",30],[],""],[],[],["milgp_u_pcu_rgr_g3_field_pants_m81",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2],["30Rnd_9x21_Mag_SMG_02",1,30]]],["milgp_v_jpc_light_rgr_rgr",[["ACRE_PRC343",1],["ACE_salineIV_500",2],["ACE_splint",2],["30Rnd_9x21_Mag_SMG_02",3,30],["SmokeShell",2,1]]],[],"milgp_h_airframe_01_rgr_rgr","",[],["ItemMap","ItemGPS","","ItemCompass","ACE_Altimeter","ACE_NVG_Wide"]];
	};

	default {
		_player setUnitLoadout [["arifle_SPAR_02_snd_F","muzzle_snds_M","ACE_DBAL_A3_Red","ACE_optic_Hamr_2D",["ACE_30Rnd_556x45_Stanag_M995_AP_mag",30],[],""],[],["hgun_Pistol_heavy_01_F","muzzle_snds_acp","","optic_MRD",["11Rnd_45ACP_Mag",15],[],""],["milgp_u_fleece_mc_g3_field_pants_mc",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2]]],["milgp_v_marciras_assaulter_belt_cb_cb_cb",[["ACE_salineIV_500",2],["ACE_splint",2],["ACE_HuntIR_monitor",1],["ACRE_PRC343",1],["HandGrenade",2,1],["SmokeShell",2,1],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",8,30],["11Rnd_45ACP_Mag",2,15]]],[],"milgp_h_opscore_04_cb_hexagon_rgr","",[],["ItemMap","ItemGPS","","ItemCompass","ACE_Altimeter","ACE_NVG_Wide"]];
	};
};


// private _action = [	
// 	"repair", 
// 	"Fallschirmsprung", 
// 	"", 
// 	{
// 		params ["_target", "_player", "_actionParams"];

// 		cutText ["Click somewhere on the map to jump from there", "PLAIN"];

// 		openMap true;

// 		addMissionEventHandler ["MapSingleClick", {
// 			Params ["_units", "_pos", "_alt", "_shift"];
// 			private _playerAdd = _thisArgs select 0;

// 			{
// 				_x addBackpack "B_Parachute";
// 				_x setPosATL [(_pos select 0) + selectRandom [0,10,15,20] , (_pos select 1) + selectRandom [0,10,15,20], 3000  + selectRandom [0,10,15,20] ];
// 			} forEach units (group _playerAdd); // player damit es funktioniert

// 			openMap false;

// 			// Wait until map is closed, either by ESC/M or map click
// 			[
// 				{!visibleMap},
// 				{removeMissionEventHandler ["MapSingleClick",_this];},
// 				_thisEventHandler
// 			] call CBA_fnc_waitUntilAndExecute;
			
// 		},
// 		[_player]
// 		];

// 	},
// 	{
// 		true
// 	}
// ] call ace_interact_menu_fnc_createAction;

// [obj_paraJump, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;