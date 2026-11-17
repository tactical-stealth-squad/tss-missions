// unsichtbare Marker
{
	_x setMarkerAlpha 0;
} foreach ["mrk_del1_", "mrk_del_2", "mrk_del_3", "mrk_del_4", "mrk_ziel_4_1", "mrk_ziel_4_2"];

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
} foreach [units bau_stat, units bomb_stat_1, units bomb_stat_2, units bomb_stat_3, units AA_1, units AA_2, units AA_Stat, units reg_stat_1, units reg_stat_2, units reg_stat_3, units reg_snip, [warlord], units mort_bau];

{
	dostop _x;
	_x disableAI "PATH";
	_x removeMagazines "smokeshell";
} foreach _static_groups;

// Tasksystem
call compile preprocessFileLineNumbers "scripts\tasks.sqf";

//
spawn_reinf_group = compile preprocessFile "scripts\fn_spawn_reinf_group.sqf";
if (isNil "routineBegin") then {routineBegin = false;};

// Karte entschlacken
{
	[_x] spawn compile preprocessFileLineNumbers "scripts\fn_hideObjects.sqf";
};

// Loadout für warlord
warlord setUnitLoadout [[],[],["CUP_hgun_TaurusTracker455_gold","","","",["CUP_6Rnd_45ACP_M",6],[],""],["CUP_U_O_TK_Officer",[["FirstAidKit",1],["CUP_6Rnd_45ACP_M",3,6]]],["CUP_V_O_TK_OfficerBelt",[["CUP_6Rnd_45ACP_M",2,6]]],[],"CUP_H_TK_Beret","G_Aviator",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];

geisel_1 setUnitLoadout [[],[],[],["U_C_FormalSuit_01_khaki_F",[]],[],[],"H_HeadBandage_bloody_F","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];

geisel_2 setUnitLoadout [[],[],[],["U_Marshal",[]],[],[],"H_HeadBandage_bloody_F","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];