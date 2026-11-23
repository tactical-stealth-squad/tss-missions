// Tasks
call compile preprocessFileLineNumbers "scripts\tasks.sqf";

// Variable
if (isNil "base_init") then {Base_init = false; PublicVariable "Base_init"};
if (isNil "task_OP") then {task_OP = true; PublicVariable "task_OP"};

// Loadout Box
call compile preprocessFileLineNumbers "scripts\loadout\box.sqf";

// Loadout Mackiri
b_target_1 setUnitLoadout [[],[],["CUP_hgun_TaurusTracker455_gold","","","",["CUP_6Rnd_45ACP_M",6],[],""],["CUP_U_O_TK_Officer",[["FirstAidKit",1],["CUP_6Rnd_45ACP_M",3,6]]],["CUP_V_O_TK_OfficerBelt",[["CUP_6Rnd_45ACP_M",2,6]]],[],"CUP_H_TK_Beret","G_Aviator",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];

// Loadout Davis
b_target_2 setUnitLoadout [["CUP_arifle_M4A3_desert","","","CUP_optic_HensoldtZO_RDS_coyote",["CUP_30Rnd_556x45_Stanag",30],[],""],[],["CUP_hgun_M9","","","",["CUP_15Rnd_9x19_M9",15],[],""],["CUP_U_B_USArmy_TwoKnee",[["FirstAidKit",1]]],["CUP_V_B_IOTV_tl",[["CUP_HandGrenade_M67",1,1],["CUP_1Rnd_HEDP_M203",2,1],["CUP_1Rnd_SmokeRed_M203",3,1],["SmokeShellGreen",2,1]]],[],"H_MilCap_grn","CUP_G_Oakleys_Embr",["CUP_Vector21Nite","","","",[],[],""],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];

// Gruppeninitalisierung
call compile preprocessFileLineNumbers "scripts\BluforeGroup.sqf";

// Civis
call compile preprocessFileLineNumbers "scripts\spawn\ZargaCiv_init.sqf";

// Reveal Mines
{
	west revealMine _x
} foreach AllMines;


{
	// Skill
	_x setskill ["spotDistance", 1];
	_x setskill ["spotTime", 1];
	_x setskill ["courage", 1];

	// Eventhandler for moving when hit
	_x addEventhandler [
	"HIT",
		{
			if (side (_this select 3) isEqualTo West OR !alive (_this select 0)) exitWith {};
			(_this select 0) removeEventHandler ["HIT", _thisEventHandler];
			if !((_this select 0) checkAIFeature "PATH") then {(_this select 0) enableAI "PATH"};
			(_this select 0) doSuppressiveFire getPosASL (_this select 3)
		}
	]
} foreach (units west);

//
{
	_x addmagazinecargoGlobal ["16Rnd_9x21_Mag",5];
	_x addmagazinecargoGlobal ["CUP_30Rnd_762x39_AKM_bakelite_desert_M",10];
	_x addmagazinecargoGlobal ["CUP_30Rnd_762x39_AK103_bakelite_M",10];
	_x addmagazinecargoGlobal ["CUP_10Rnd_762x54_SVD_M",5];
	_x addmagazinecargoGlobal ["150Rnd_762x54_Box",5];
	_x addmagazinecargoGlobal ["CUP_HandGrenade_RGD5",8];
	_x addmagazinecargoGlobal ["SmokeShell",8];
	_x addmagazinecargoGlobal ["CUP_PG7V_M",2];
	_x additemcargoGlobal ["ACE_packingBandage", 20];
	_x additemcargoGlobal ["ACE_elasticBandage", 20];
	_x additemcargoGlobal ["ACE_wirecutter", 1];
	_x additemcargoGlobal ["ACE_morphine", 15];
	_x additemcargoGlobal ["ACE_epinephrine", 15];
	_x additemcargoGlobal ["ACE_key_lockpick", 2];
	_x additemcargoGlobal ["ACE_salineIV", 10]
} foreach [b_veh_spw_1, b_veh_spw];

// Intro
/// Kram für intro #1
helper_1 hideObjectGlobal true;

waitUNtil {sleep 2; plane distance2D helper_1 < 750};
// Reveal Mines Civ
{
	civilian revealMine _x
} foreach AllMines;

// Intro Kram #2
{deleteVehicle _x} foreach crew plane;
deleteVehicle plane;
helper_1 hideObjectGlobal false