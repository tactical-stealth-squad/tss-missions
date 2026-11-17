// Custom look for russian MBT
[
	"O_T_MBT_02_cannon_ghex_F",
	"init",
	{
		[(_this select 0), ["GreenHex",1], ["showCamonetHull",1,"showCamonetTurret",1,"showLog",1], true] call BIS_fnc_initVehicle;
		(_this select 0) addEventhandler [
			"HIT",
			{
				if (side (_this select 3) isEqualTo EAST OR !alive (_this select 0)) exitWith {};
				(_this select 0) removeEventHandler ["HIT", _thisEventHandler];

				private _grpTank = (_this select 0) call CBA_fnc_getGroup;

				{_x enableAI "PATH"} foreach units _grpTank;
				(gunner (_this select 0)) doSuppressiveFire getPosASL (_this select 3);

			}
		]
	},
	true,
	[],
	true
] call CBA_fnc_addClassEventHandler;

// Custom look for russian APC
[
	"O_T_APC_Tracked_02_cannon_ghex_F",
	"init",
	{
		[(_this select 0), ["GreenHex",1], ["showTracks",1,"showCamonetHull",1,"showBags",1,"showSLATHull",0], true] call BIS_fnc_initVehicle;
		(_this select 0) addEventhandler [
			"HIT",
			{
				if (side (_this select 3) isEqualTo EAST OR !alive (_this select 0)) exitWith {};
				(_this select 0) removeEventHandler ["HIT", _thisEventHandler];

				private _grpTank = (_this select 0) call CBA_fnc_getGroup;

				{_x enableAI "PATH"} foreach units _grpTank;
				(gunner (_this select 0)) doSuppressiveFire getPosASL (_this select 3);

			}
		]
	},
	true,
	[],
	true
] call CBA_fnc_addClassEventHandler;

// Custom loadout for "ausrüster"
[
	"B_Soldier_unarmed_F",
	"init",
	{
		(_this select 0)setUnitLoadout [[],[],[],["U_B_CombatUniform_vest_mcam_wdl_f",[["ACE_adenosine",1],["ACE_elasticBandage",5],["ACE_quikclot",5],["ACE_CableTie",1],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_Flashlight_MX991",1],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",2],["ACRE_PRC148",1]]],["V_BandollierB_rgr",[]],[],"H_Cap_blk","",["","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
		(_this select 0) disAbleAI "PATH";
		(_this select 0) setVariable ["Vcm_Disable",true];
		(_this select 0) allowDammage false
	},
	true,
	[],
	true
] call CBA_fnc_addClassEventHandler;