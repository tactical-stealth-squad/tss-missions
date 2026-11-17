if (isNil "start_mortar") then {start_mortar = false; PublicVariable "start_mortar"};

//
Moni_2 setObjectTextureGlobal [0, "image\porn.jpg"];
Moni_3 setObjectTextureGlobal [0, "a3\structures_f\items\electronics\data\electronics_screens_laptop_co.paa"];
intel_1 setObjectTextureGlobal [0, "image\pw.jpg"];

{
	_x allowDamage false
} foreach [LKW, powerline];


// Intel
[1, intel_1] call compile preprocessFileLineNumbers "Scripts\intel.sqf";
[2, intel_2] call compile preprocessFileLineNumbers "Scripts\intel.sqf";

// APC
[
	APC,
	["Indep_02",1],
	["showCamonetHull",1,"showBags",1,"showBags2",1,"showTools",1,"showSLATHull",0]
] call BIS_fnc_initVehicle;
APC addEventhandler ["hitPart", {[(_this select 0), false] call compile preprocessFileLineNumbers "scripts\iV_fnc_oneHitKill.sqf"}];
APC disableTIEquipment true;

//
[lkw] call compile preprocessFileLineNumbers "Scripts\loadout\Loadouts\box.sqf";

// Tasks
call compile preprocessFileLineNumbers "scripts\tasks.sqf";

// Ammo for mortar
arty_1 setVehicleAmmoDef 1;

//
forDelet addEventHandler [
	"Explosion",
	{
		_simpObjs = allSimpleObjects [];
		{
			if (_x inArea "delete") then {deleteVehicle _x}
		} foreach _simpObjs
	}
];

// Reveal mines for AI
{
	independent revealMine _x
} foreach AllMines;

// Lambs
private _BlacklistArray = [];
{
	_BlacklistArray append _x
} foreach [units sup_jeep_1, units sup_jeep_2, units hunt_1, units hunt_2, units snip_1, units guard_end_1, units guard_power_1];

{
	_x setVariable ["lambs_danger_disableAI",true]
} foreach _BlacklistArray;


// SKill and EH when unit get`s hit
private _unitArray = [];
{
	_x setskill ["spotDistance", 1];
	_x setskill ["spotTime", 1];
	_x setskill ["courage", 1];
	// Eventhandler for moving when hit
	if (_x inArea "for_mortar" && vehicle _x != _x) then {
		_x addEventHandler [
			"HIT",
			{
				if !(side (_this select 3) isEqualTo east) exitWith {};
				(_this select 0) removeEventHandler ["HIT", _thisEventHandler];
				if !(start_mortar or "task2" call BIS_fnc_taskState isEqualTo "SUCCEEDED") exitWith {
					start_mortar = true; PublicVariable "start_mortar";
					[arty_1, [(_this select 3), (_this select 1)], 0, 45, 2, 250, true] call compile preprocessFileLineNumbers "scripts\fn_mortar_pfh.sqf"
				}
			}
		]
	} else {
		_x addEventhandler [
			"HIT",
			{
				if !(side (_this select 3) isEqualTo east) exitWith {};
				(_this select 0) removeEventHandler ["HIT", _thisEventHandler];
				if !((_this select 0) checkAIFeature "PATH") then {(_this select 0) enableAI "PATH"};
				(_this select 0) doSuppressiveFire getPosASL (_this select 3);
				[(_this select 0), (_this select 3), 50, true] call CBA_fnc_taskAttack
			}
		]
	};

	// Special loadout for sniper
	if (_x isKindOf "I_C_Soldier_base_unarmed_F") then {
		_x setUnitLoadout [["arifle_AK12_lush_F","muzzle_snds_B_lush_F","acc_pointer_IR","optic_NVS",["30rnd_762x39_AK12_Lush_Mag_F",30],[],"bipod_03_F_oli"],[],[],["U_I_G_resistanceLeader_F",[["ACE_elasticBandage",2],["ACE_quikclot",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_MapTools",1],["ACE_morphine",2],["ACE_packingBandage",2],["ACE_tourniquet",1],["ACE_RangeCard",1],["ACE_CableTie",1],["ACRE_PRC343",1],["ACE_Kestrel4500",1],["30rnd_762x39_AK12_Lush_Mag_Tracer_F",1,30]]],["V_TacVest_oli",[["ACRE_PRC148",1],["SmokeShell",2,1],["HandGrenade",2,1],["30rnd_762x39_AK12_Lush_Mag_Tracer_F",5,30]]],[],"H_Cap_grn","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
		_x addItem "NVGoggles_INDEP";
		_x assignItem "NVGoggles_INDEP";
		_unitArray pushBack _x
	}
} foreach (units independent);

// Random NVGs
private _UnitArrayNew = (units independent) - _unitArray;
private _unitArrayHalf = [_UnitArrayNew, ((count _UnitArrayNew) / 2)] call CBA_fnc_selectRandomArray;
{
	_x addItem "NVGoggles_INDEP";
	_x assignItem "NVGoggles_INDEP"
} foreach _unitArrayHalf