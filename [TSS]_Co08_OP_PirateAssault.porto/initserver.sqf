/// Skill & Eventhandler///
{
	_x setskill ["spotDistance", 1];
	_x setskill ["spotTime", 1];
	_x setskill ["courage", 1];
	// Eventhandler for moving when hit
	_x addEventhandler [
		"HIT",
		{
			if (side (_this select 3) isEqualTo independent OR !alive (_this select 0) OR (vehicle (_this select 0) != (_this select 0))) exitWith {};
			(_this select 0) removeEventHandler ["HIT", _thisEventHandler];
			if !((_this select 0) checkAIFeature "PATH") then {(_this select 0) enableAI "PATH"};
			(_this select 0) doSuppressiveFire getPosASL (_this select 3);
			[(_this select 0), (_this select 3), 50, true] call CBA_fnc_taskAttack;
		}
	];

	if !(_x checkAIFeature "PATH") then {
		_x setVariable ["lambs_danger_disableAI",true];
	};
} foreach (units independent);

// Tasks
call compile preprocessFileLineNumbers "scripts\tasks.sqf";

// loadout box
call compile preprocessFileLineNumbers "scripts\box_loadout.sqf";

// Array for task "destroy"
Destroy_Array = [box_1, box_2, box_3, box_4, box_5, ship_1, ship_2, ship_3, ship_4, ship_5];

// Loadout Sniper
sniper setUnitLoadout [["arifle_AK12_lush_F","muzzle_snds_B_lush_F","acc_pointer_IR","optic_NVS",["30rnd_762x39_AK12_Lush_Mag_F",30],[],"bipod_03_F_oli"],[],[],["U_I_G_resistanceLeader_F",[["ACE_elasticBandage",2],["ACE_quikclot",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_MapTools",1],["ACE_morphine",2],["ACE_packingBandage",2],["ACE_tourniquet",1],["ACE_RangeCard",1],["ACE_CableTie",1],["ACRE_PRC343_ID_1",1],["ACE_Kestrel4500",1],["30rnd_762x39_AK12_Lush_Mag_Tracer_F",1,30]]],["V_TacVest_oli",[["ACRE_PRC148_ID_1",1],["SmokeShell",2,1],["HandGrenade",2,1],["30rnd_762x39_AK12_Lush_Mag_Tracer_F",5,30]]],[],"H_Cap_grn","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
sniper addItem "NVGoggles_INDEP";
sniper assignItem "NVGoggles_INDEP";

private _id = [
	"Intel",
	{
		private _unit = _this select 0;
		// remove EH
		[_thisType, _thisId] call CBA_fnc_removeEventHandler;
		// Remove action global
		[_unit, 0,["ACE_MainActions", "Search for Intel"]] remoteExecCall ["ace_interact_menu_fnc_removeActionFromObject", 0];
		// setTaskstate
		["task0", "SUCCEEDED", false] call BIS_fnc_taskSetState;
		// Create object
		private _obj = createVehicle ["Intel_File1_F", _unit, [], 0, "CAN_COLLIDE"];
		//Diary picture
		_obj setVariable ["RscAttributeDiaryRecord_texture","images\Colonel.paa", true];
		//Diary heading and text
		[_obj,"RscAttributeDiaryRecord",["Foto vom Colonel","Die erbeutete Ausrüstung der Piraten wird am Hafen von Porto gelagert. Der Typ, den ihr sucht, hält sich vermutlich in einer der Häuser ganz in der Nähe auf. Ich konnte mal ein Foto von ihm machen, hätte mich beinahe den Kopf gekostet. Ich hoffe, ihr bekommt ihn vor die Flinte.<br/><br/>",""]] call BIS_fnc_setServerVariable;
	}
] call CBA_fnc_addEventHandlerArgs