// SKill and EH when unit get`s hit
[
	"CAManBase",
	"init",
	{
		if !(side (_this select 0) isEqualTo independent) exitWith {};
		(_this select 0) setskill ["spotDistance", 1];
		(_this select 0) setskill ["spotTime", 1];
		(_this select 0) setskill ["courage", 1];
		// Eventhandler for moving when hit
		(_this select 0) addEventhandler [
			"HIT",
			{
				if (side (_this select 3) isEqualTo independent OR !alive (_this select 0)) exitWith {};
				(_this select 0) removeEventHandler ["HIT", _thisEventHandler];
				(_this select 0) enableAI "PATH";
				(_this select 0) doSuppressiveFire getPosASL (_this select 3);
				[(_this select 0), (_this select 3), 50, true] call CBA_fnc_taskAttack;
			}
		]
	},
	true,
	[],
	true
] call CBA_fnc_addClassEventHandler;

// Loadout Box
call compile preprocessFileLineNumbers "scripts\loadout\box.sqf";

// Loadout and disableAI
{
	_x disableAI "PATH";
	_x setUnitLoadout [["arifle_SPAR_02_blk_F","muzzle_snds_M","acc_flashlight","optic_Holosight_blk_F",["30Rnd_556x45_Stanag",30],[],""],[],["hgun_ACPC2_F","muzzle_snds_acp","acc_flashlight_pistol","",["9Rnd_45ACP_Mag",8],[],""],["U_B_GEN_Commander_F",[["ACE_adenosine",1],["ACRE_PRC148",1],["ACE_elasticBandage",2],["ACE_packingBandage",2],["ACE_quikclot",2],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",1],["ACE_Flashlight_XL50",1],["ACE_morphine",1],["ACE_splint",2],["ACE_tourniquet",2]]],["V_TacVest_gen_F",[["9Rnd_45ACP_Mag",1,8],["SmokeShellPurple",2,1],["SmokeShell",2,1],["ACE_M84",2,1],["30Rnd_556x45_Stanag_red",8,30]]],[],"H_PASGT_basic_blue_F","G_Balaclava_blk",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch","NVGoggles_OPFOR"]]
} foreach units group dummy;

// Reveal Mines
{
	independent revealMine _x
} foreach AllMines