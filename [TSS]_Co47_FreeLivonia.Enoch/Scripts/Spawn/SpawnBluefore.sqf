// Creates group
private _grpBlue = createGroup west;
// Array for unit creating
private _UnitsArray = [
	["B_Soldier_A_F", [7982.87,9496.37,135.663], [[0.62185,-0.783136,0],[0,0,1]]],
	["B_Soldier_A_F", [8087.2,9666.77,136.621], [[0.998711,-0.0507503,0],[0,0,1]]],
	["B_Soldier_A_F", [7960.85,9827.61,153.779], [[0.998711,-0.0507503,0],[0,0,1]]],
	["B_Soldier_A_F", [7952.48,9897.38,156.213], [[0.345908,0.938268,0],[0,0,1]]],
	["B_Soldier_A_F", [7809.08,9941.51,157.116], [[-0.841389,0.540429,0],[0,0,1]]],
	["B_Soldier_A_F", [7792.78,9736.42,154.665], [[-0.991701,-0.128564,0],[0,0,1]]],
	["B_Soldier_A_F", [7758.93,9507.16,149.047], [[-0.515465,-0.85691,0],[0,0,1]]]
];
// Creates units on towers
{
	private _unit = _grpBlue createUnit [(_x select 0), [0,0,0], [], 0, "none"];
	_unit setPosASL (_x select 1);
	_unit setVectorDirAndUp (_x select 2);
	// Custom loadout
	_unit setUnitLoadOut [["arifle_SPAR_01_GL_blk_F","","","",["30Rnd_556x45_Stanag",30],[],""],[],["hgun_Pistol_heavy_01_green_F","muzzle_snds_acp","acc_flashlight_pistol","",["11Rnd_45ACP_Mag",11],[],""],["U_B_CombatUniform_vest_mcam_wdl_f",[["ACE_adenosine",1],["ACE_elasticBandage",5],["ACE_quikclot",5],["ACE_CableTie",1],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_Flashlight_MX991",1],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",1],["ACRE_PRC148",1]]],["V_PlateCarrierGL_wdl",[["SmokeShell",5,1],["11Rnd_45ACP_Mag",2,11],["30Rnd_556x45_Stanag",6,30],["1Rnd_HE_Grenade_shell",5,1]]],["B_AssaultPack_wdl_F",[["1Rnd_HE_Grenade_shell",10,1],["30Rnd_556x45_Stanag",10,30]]],"H_HelmetB_plain_wdl","G_Balaclava_blk",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","NVGoggles_OPFOR"]];
} forEach _UnitsArray;

// Creates AA
private _tankArray = [[0,0,0], 0, "B_T_APC_Tracked_01_AA_F", west] call BIS_fnc_spawnVehicle;
[_tankArray select 0, ["Olive",1],	["showCamonetTurret",1,"showCamonetHull",1,"showBags",1], true] call BIS_fnc_initVehicle;
(_tankArray select 0) setPosASL [7855.27,9624.09,148.085];
(_tankArray select 0) setVectorDirAndUp [[-0.0294064,-0.999568,0],[0,0,1]];
{
	_x disableAI "Path";
	_x setVariable ["Vcm_Disable",true];
	_x setVariable ["lambs_danger_disableAI",true];
} foreach units (_tankArray select 2);

// Disable path && skill settings for each units
{
	_x disAbleAI "ALL";
	_x setskill ["spotDistance", 0];
	_x setskill ["spotTime", 0];
	_x setskill ["courage", 0];
	_x setVariable ["Vcm_Disable",true];
	_x setVariable ["lambs_danger_disableAI",true];
} foreach units _grpBlue;

// Returnvalue
_grpBlue