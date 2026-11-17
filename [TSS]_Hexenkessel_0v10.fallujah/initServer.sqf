// unsichtbare Marker
{
	_x setMarkerAlpha 0;
} foreach ["mrk_del_1", "mrk_del_2", "mrk_del_3", "mrk_del_4", "mrk_del_5", "mrk_del_6", "mrk_del_7", "mrk_del_8", "mrk_del_9", "mrk_del_10", "mrk_del_11", "mrk_del_12", "mrk_del_13", "mrk_del_14", "mrk_del_15", "mrk_del_16", "mrk_del_17", "mrk_del_18", "mrk_del_19","mrk_ziel_4_1", "mrk_ziel_4_2", "mrk_conv", "mrk_conv_end"];

// Karte entschlacken (split für mehr Performance?!)
{
	[_x] call compile preprocessFileLineNumbers "scripts\fn_hideObjects.sqf";
} foreach ["mrk_del_5", "mrk_del_6", "mrk_del_7", "mrk_del_8", "mrk_del_9", "mrk_del_10", "mrk_del_11", "mrk_del_12"];

{
	[_x] call compile preprocessFileLineNumbers "scripts\fn_hideObjects.sqf";
} foreach ["mrk_del_13", "mrk_del_14", "mrk_del_15", "mrk_del_16", "mrk_del_17", "mrk_del_18", "mrk_del_19", "mrk_del_20", "mrk_del_21", "mrk_del_22", "mrk_del_23", "mrk_del_24"];

// Mörser
mort_bau setVariable ["ace_mk6mortar_exclude", true];
mort_bau addEventHandler ["FiredMan", {
	params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_vehicle"];
		if !(isPlayer gunner _vehicle) then {
			_vehicle setVehicleAmmo 1;
		};
	}
];

// Reveal Mines
{east revealMine _x} foreach AllMines;

// SKill
{
	// SKill
	_x setskill ["spotDistance", 1];
	_x setskill ["spotTime", 1];
	_x setskill ["courage", 1];

	// no LAMBS and VCOM for editor units
	_x setVariable ["lambs_danger_disableAI", true];
	_x setVariable ["Vcm_Disable", true];

	// grr CFP and Alive ...
	_x setVariable ["CFP_DisableRandom", true];
	_x setVariable ["ALiVE_OverrideLoadout", true];

	// Eventhandler for moving when hit
	_x addEventhandler [
		"HIT",
		{
			if (side (_this select 1) isEqualTo east OR !alive (_this select 0)) exitWith {};
			(_this select 0) removeEventHandler ["HIT", _thisEventHandler];
			if !((_this select 0) checkAIFeature "PATH") then {(_this select 0) enableAI "PATH"};
			(_this select 0) doSuppressiveFire getPosASL (_this select 1);
		}
	]
} foreach (units east);

// Keine Bewegung
private _static_groups = [];
{
	_static_groups append _x;
} foreach [units bau_stat, units bomb_stat_1, units bomb_stat_2, units AA_1, units AA_2, units reg_stat_1, units reg_stat_2, units reg_stat_3, units reg_snip, [warlord], units mort_bau];

{
	dostop _x;
	_x disableAI "PATH";
	_x removeMagazines "smokeshell";
} foreach _static_groups;

// Tasksystem
call compile preprocessFileLineNumbers "scripts\tasks.sqf";

//
if (isNil "routine_Spawn_Begin") then {routine_Spawn_Begin = false;};
if (isNil "routine_Del_Begin") then {routine_Del_Begin = false;};

// Loadouts
warlord setUnitLoadout [[],[],["CUP_hgun_TaurusTracker455_gold","","","",["CUP_6Rnd_45ACP_M",6],[],""],["CUP_U_O_TK_Officer",[["FirstAidKit",1],["CUP_6Rnd_45ACP_M",3,6]]],["CUP_V_O_TK_OfficerBelt",[["CUP_6Rnd_45ACP_M",2,6]]],[],"CUP_H_TK_Beret","G_Aviator",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
// warlord untersuchen/erkennen
{warlord addaction ["Leiche untersuchen", {hintsilent "Das scheint Kalil zu sein.";}, nil, 1.5, true, true, "", "!alive warlord", 2];} remoteExec ["call", west];

geisel_1 setUnitLoadout [[],[],[],["U_C_FormalSuit_01_khaki_F",[]],[],[],"H_HeadBandage_bloody_F","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];

geisel_2 setUnitLoadout [[],[],[],["U_Marshal",[]],[],[],"H_HeadBandage_bloody_F","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];

{
	_x setUnitLoadout [["CUP_srifle_SVD","","","CUP_optic_PSO_1_AK",["CUP_10Rnd_762x54_SVD_M",10],[],""],[],[],["CUP_O_TKI_Khet_Partug_04",[["FirstAidKit",1],["SmokeShell",1,1],["10Rnd_762x54_Mag",4,10]]],["CUP_V_OI_TKI_Jacket2_02",[["SmokeShellBlue",1,1],["10Rnd_762x54_Mag",9,10],["SmokeShell",1,1]]],[],"","CUP_FR_NeckScarf4",["Binocular","","","",[],[],""],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
} foreach (units reg_snip);

box_LMG addmagazinecargoGlobal ["CUP_100Rnd_TE4_Red_Tracer_556x45_M249", 20];

// Konvoi
{
	dostop _x;
	_x allowDamage false;

	// no LAMBS and VCOM for editor units
	_x setVariable ["lambs_danger_disableAI", true];
	_x setVariable ["Vcm_Disable", true];

	// grr CFP and Alive ...
	_x setVariable ["CFP_DisableRandom", true];
	_x setVariable ["ALiVE_OverrideLoadout", true];

} foreach [conv_1, conv_2, conv_3, helper];

helper disableAI "PATH";