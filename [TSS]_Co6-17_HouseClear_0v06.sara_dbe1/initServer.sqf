// SKill and EH when unit get`s hit
{
	_x setskill ["spotDistance", 1];
	_x setskill ["spotTime", 1];
	_x setskill ["courage", 1];
	_x unlinkItem "NVGoggles_INDEP";
	_x removeItem "NVGoggles_INDEP";
	_x setUnitPos "UP";
	// Eventhandler for moving when hit
	_x addEventhandler [
		"HIT",
		{
			if (side (_this select 3) isEqualTo independent OR !alive (_this select 0)) exitWith {};
			(_this select 0) removeEventHandler ["HIT", _thisEventHandler];
			if !((_this select 0) checkAIFeature "PATH") then {(_this select 0) enableAI "PATH"};
			(_this select 0) doSuppressiveFire getPosASL (_this select 3);
			[(_this select 0), (_this select 3), 50, true] call CBA_fnc_taskAttack;
		}
	]
} foreach (units independent);

// Loadout Box
call compile preprocessFileLineNumbers "scripts\loadout\box.sqf";

// Loadout Ausrüster
ausruester setUnitLoadout [[],[],[],["CUP_U_I_RACS_Urban_1",[["ACE_adenosine",2],["ACE_packingBandage",5],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_Flashlight_MX991",1],["ACE_MapTools",1],["ACE_morphine",2],["ACE_splint",2],["ACE_tourniquet",2],["ACRE_PRC148",1],["SmokeShell",2,1]]],["CUP_V_B_Interceptor_Rifleman_Grey",[["ACRE_PRC152",1],["SmokeShellPurple",2,1],["SmokeShell",2,1],["ACE_M84",2,1]]],[],"H_Cap_blk","",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
ausruester disableAI "PATH";
ausruester setCaptive true;

// Reveal Mines
{independent revealMine _x} foreach AllMines;

// AI Skill from description.ext
waitUntil {sleep 20; time < 60};

{_x setUnitPos "UP";} foreach (units independent);

private _skillLevel = "AISkill" call BIS_fnc_getParamValue;

//if (_skillLevel isEqualTo 2) exitWith {};

if (_skillLevel isEqualTo 1 or _skillLevel isEqualTo 0) then {

	private _blackList = [defend_1, defend_2, defend_3, search_1, search_2, cqb_1, cqb_2, cqb_3, plane_1, plane_2, plane_3];
	private _EnemyArray = [];

	{
		if (_x inArea trg_1 OR _x inArea trg_2 OR _x inArea trg_nvg) then {
			_EnemyArray pushback _x;
		};
	} foreach (units independent);

	_EnemyArray - _blackList;

	private _shuffledArray = [_EnemyArray] call CBA_fnc_shuffle;
	private _size = count _shuffledArray;

	_shuffledArray deleteRange [0, floor _size / 2];

	private _hmgs = entities [["I_C_HMG_02_high_F", "I_C_Offroad_02_LMG_F"], [], true, true];

	switch (_skillLevel) do {
		case 0: {
			_shuffledArray append _hmgs;
			{deleteVehicle _x} foreach _shuffledArray;
		};
		case 1: {
			{deleteVehicle _x} foreach _shuffledArray;
		};
	};
};