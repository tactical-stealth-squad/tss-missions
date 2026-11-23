SHK_paraTroops = compile preprocessFileLineNumbers "scr_SHK_paraTroops.sqf";
HWK_spawnAir = compile preprocessFileLineNumbers "scr_HWK_spawnAircraft.sqf";

// Enemy units loadout
GEA_scr_loadout = compile preprocessFileLineNumbers "scr_loadout.sqf";
["CUP_Creatures_Military_RUS_Soldier_Base", "init", {call GEA_scr_loadout}, true, [], true] call CBA_fnc_addClassEventHandler;
["CUP_Creatures_Military_SLA_Soldier_Base", "init", {call GEA_scr_loadout}, true, [], true] call CBA_fnc_addClassEventHandler;

// Ambient helicopters and jets
[] spawn compile preprocessFileLineNumbers "scr_amb_flight.sqf";

veh_tractor limitSpeed 20;
veh_tractor forceSpeed 20;

// Skill
	{	if (side _x isEqualTo east) then {
			_x setSkill ["spotDistance", 1];
			_x setSkill ["spotTime", 1];
			_x setSkill ["courage", 1]
		}
	} forEach allUnits;

sleep 60;

// Dress decorative base protection accordingly
	{	switch (typeOf _x) do {

			case "CUP_B_GER_BW_Fleck_Soldier_MG3": {
			_x setUnitLoadout [["CUP_lmg_MG3","","","",["CUP_120Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",120],[],""],[],[],["CUP_U_B_GER_Fleck_Overalls_Pilot",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2],["CUP_120Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",1,120]]],["CUP_V_O_RUS_RPS_Smersh_AK_ModernOlive",[["ACE_salineIV_500",2],["ACE_splint",2],["HandGrenade",2,1],["SmokeShell",2,1],["CUP_120Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",2,120]]],[],"SP_M88PSMHelmet_Black1","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
			};

			case "CUP_B_GER_BW_Fleck_Soldier_AT": {
			_x setUnitLoadout [["CUP_arifle_G3A3_ris_black","","","",["CUP_20Rnd_762x51_G3",20],[],""],["CUP_launch_HCPF3","","","",[],[],""],[],["CUP_U_B_GER_Fleck_Overalls_Pilot",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2]]],["CUP_V_O_RUS_RPS_Smersh_AK_ModernOlive",[["ACE_salineIV_500",2],["ACE_splint",2],["HandGrenade",2,1],["SmokeShell",2,1],["CUP_20Rnd_762x51_G3",8,20]]],[],"SP_M88PSMHelmet_Black1","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
			};

			default {
			_x setUnitLoadout [["CUP_arifle_G3A3_ris_black","","","",["CUP_20Rnd_762x51_G3",20],[],""],[],[],["CUP_U_B_GER_Fleck_Overalls_Pilot",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2]]],["CUP_V_O_RUS_RPS_Smersh_AK_ModernOlive",[["ACE_salineIV_500",2],["ACE_splint",2],["HandGrenade",2,1],["SmokeShell",2,1],["CUP_20Rnd_762x51_G3",8,20]]],[],"SP_M88PSMHelmet_Black1","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
			};
		};
		
	} forEach units (grp_deko);

// Fill equipment box
	obj_equipment addItemCargoGlobal ["CUP_launch_HCPF3", 5];
	obj_equipment addItemCargoGlobal ["ACE_SpareBarrel", 1];
	obj_equipment addItemCargoGlobal ["ace_dragon_super", 5];
	obj_equipment addItemCargoGlobal ["ace_dragon_sight", 1];

	obj_equipment addItemCargoGlobal ["ACE_M14", 10];
	obj_equipment addItemCargoGlobal ["DemoCharge_Remote_Mag", 5];
	obj_equipment addItemCargoGlobal ["SatchelCharge_Remote_Mag", 5];
	obj_equipment addItemCargoGlobal ["HandGrenadeATMine", 5];
	obj_equipment addItemCargoGlobal ["ATMine_Range_Mag", 5];
	obj_equipment addItemCargoGlobal ["APERSTripMine_Wire_Mag", 5];

	obj_equipment addItemCargoGlobal ["ACE_DefusalKit", 1];
	obj_equipment addItemCargoGlobal ["ACE_M26_Clacker", 1];
	obj_equipment addItemCargoGlobal ["ACE_Clacker", 5];

	obj_equipment addItemCargoGlobal ["HandGrenade", 5];
	obj_equipment addItemCargoGlobal ["SmokeShell", 5];
	obj_equipment addItemCargoGlobal ["SmokeShellRed", 5];
	obj_equipment addItemCargoGlobal ["SmokeShellGreen", 5];
	obj_equipment addItemCargoGlobal ["SmokeShellPurple", 5];
	obj_equipment addItemCargoGlobal ["SmokeShellOrange", 5];
	obj_equipment addItemCargoGlobal ["ACE_CTS9", 5];

	obj_equipment addItemCargoGlobal ["ACE_SpottingScope", 1];
	obj_equipment addItemCargoGlobal ["ACE_EntrenchingTool", 5];
	obj_equipment addItemCargoGlobal ["ACE_wirecutter", 1];
	obj_equipment addItemCargoGlobal ["ACE_key_lockpick", 1];
	obj_equipment addItemCargoGlobal ["ACE_PlottingBoard", 1];
	obj_equipment addItemCargoGlobal ["ACRE_SEM70", 2];


// SRBM Intel
private _id = [
	"Intel",
	{
		private _unit = _this select 0;
		// remove EH
		[_thisType, _thisId] call CBA_fnc_removeEventHandler;
		// Remove action global
		[_unit, 0,["ACE_MainActions", "Search for Intel"]] remoteExecCall ["ace_interact_menu_fnc_removeActionFromObject", 0];
		// Create object
		private _obj_intel = createVehicle ["Intel_File1_F", _unit, [], 0, "CAN_COLLIDE"];
		//Diary heading and text
		[_obj_intel,"RscAttributeDiaryRecord",["Position der SRBM","B лесу к северу от Нестау.<br/><br/>Im Waldstück nördlich Nestau.",""]] call BIS_fnc_setServerVariable;
	}
] call CBA_fnc_addEventHandlerArgs