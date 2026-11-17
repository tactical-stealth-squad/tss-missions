// unsichtbare Marker
{
	_x setMarkerAlpha 0;
} foreach ["mrk_devilsCastle", "mrk_Khelm", "mrk_rog", "mrk_pusta", "mrk_pulkovo", "mrk_Vyshnoye", "mrk_reinf_pustaGrad", "mrk_del_khelm", "mrk_del_Konvoi", "mrk_del_devilsCastle"];

// Keine Bewegung
private _static_groups = [];
{
	_static_groups append _x;
} foreach [units static_khelm, units static_rog, units static_pusta, units static_pulkovo, units static_hq, units static_devilsCastle, units static_konvoi, units static_Vyshnoye, units static_pustaGrad, [ausruester], [questMaster]];

{
	_x disableAI "PATH";
	_x removeMagazines "smokeshell";
} foreach _static_groups;

// Keine Waffe für u. s. Einheiten
intel_konvoi_helper setUnitLoadout [["","","","",["CUP_30Rnd_9x39_SP5_VIKHR_M",30],[],""],["","","","",["RPG7_F",1],[],""],[],["CUP_U_I_GUE_WorkU_01",[["ACE_quikclot",3],["ACE_elasticBandage",12],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",4],["ACE_splint",2]]],["V_I_G_resistanceLeader_F",[["ACRE_PRC148",1],["CUP_muzzle_snds_SR3M",1],["SmokeShell",2,1],["CUP_30Rnd_9x39_SP5_VIKHR_M",6,30],["CUP_HandGrenade_RGD5",1,1]]],[], "CUP_H_NAPA_Fedora","CUP_G_Bandanna_aviator",[],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
{_x setUnitLoadout [["","","","",["CUP_30Rnd_9x39_SP5_VIKHR_M",30],[],""],["CUP_hgun_Makarov","","","",["RPG7_F",1],[],""],[],["CUP_U_B_CDF_SNW_2",[["ACE_quikclot",3],["ACE_elasticBandage",12],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",4],["ACE_splint",2]]],["CUP_V_CDF_OfficerBelt",[["ACRE_PRC148",1],["CUP_muzzle_snds_SR3M",1],["SmokeShell",2,1],["CUP_30Rnd_9x39_SP5_VIKHR_M",6,30],["CUP_HandGrenade_RGD5",1,1]]],[], "CUP_H_CDF_OfficerCap_SNW","",[],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];} foreach [Ausruester, QuestMaster];

// Terrain
setterraingrid 3.125;

// Intialisierung Funktionen
spawn_reinf_group = compile preprocessFile "scripts\spawn\spawn_reinf_group.sqf";
objects_delete = compile preprocessFile "scripts\fn_objects_delete.sqf";

{
	// SKill
	_x setskill ["spotDistance", 1];
	_x setskill ["spotTime", 1];
	_x setskill ["courage", 1];

	// no LAMBS for editor units
	_x setVariable ["lambs_danger_disableAI", true];

	// grr CFP and Alive ...
	_x setVariable ["CFP_DisableRandom", true];
	_x setVariable ["ALiVE_OverrideLoadout", true];

	// Eventhandler for moving when hit
	_x addEventhandler [
		"HIT",
		{
			if (side (_this select 1) isEqualTo independent OR !alive (_this select 0)) exitWith {};
			(_this select 0) removeEventHandler ["HIT", _thisEventHandler];
			if !((_this select 0) checkAIFeature "PATH") then {(_this select 0) enableAI "PATH"};
			(_this select 0) doSuppressiveFire getPosASL (_this select 1);
		}
	]
} foreach (units independent);


{
	_x setVariable ["ace_mk6mortar_exclude", true];
} foreach [o_hide_Motar, mortar_rog];

// Skill Bluefore
{_x setskill 0;} foreach (units static_hq) + [Ausruester, QuestMaster];

// Tasksystem
call compile preprocessFileLineNumbers "scripts\tasks.sqf";
call compile preprocessFileLineNumbers "scripts\taskUpdate.sqf";

//
call compile preprocessFileLineNumbers "scripts\hintspos.sqf";

// Box/Heli/APC Loadout + Feind
call compile preprocessFileLineNumbers "scripts\loadout_box.sqf";
call compile preprocessFileLineNumbers "scripts\loadout_feind.sqf";

// Reveal Mines
{independent revealMine _x} foreach AllMines;

// Random delete
private _Grads = [Grad_Pusta, Grad_rog, Grad_khelm, Grad_pulkovo, Grad_Vyshnoye];
_Grads = [_Grads] call CBA_fnc_shuffle;
_Grads deleteRange [0,2];
{deleteVehicle _x} foreach _Grads;

// Intel Konvoi Anfang
//Diary picture
intel_Konvoi setVariable [
	"RscAttributeDiaryRecord_texture",
	//Path to picture
	"img\intel_konvoi.jpg",
	true
];
//Diary Title and Description
[
	intel_Konvoi,
	"RscAttributeDiaryRecord",
	//[ Title, Description, "" ]
	[
		"Mögliche Standorte",
		"In der Akte sind Aufzeichnungen über verschiedene Rebellenstandorte zu finden.<br/><br/>Ein Standort befindet sich in Pusta - wohl die ehemalige Polizeistation 'Mitten' in Pusta.<br/><br/>Ein anderer Standort ist Devils Castle.<br/><br/>Vielleicht finden Sie dort die gesuchten BM-21!?<br/><br/>Fangen Sie am Besten mit Devils Castle an!<br/>Kehren Sie anschließend zum HQ zurück und erstatten Sie IVAN Bericht!<br/><br/>",
		""
	]
] call BIS_fnc_setServerVariable;

//Sides that can interact with intelObject
intel_Konvoi setVariable ["RscAttributeOwners", [west], true];
// Intel Konvoi Ende

//
containerguy setpos [getPos containerguy select 0, getPos containerguy select 1, (getPos containerguy select 2) +3.47];

[attach1_wood_car1, wood_car_1] call BIS_fnc_attachToRelative;
[attach2_wood_car1, wood_car_1] call BIS_fnc_attachToRelative;
[attach1_wood_car2, wood_car_2] call BIS_fnc_attachToRelative;
[attach1_pusta_car, pusta_car] call BIS_fnc_attachToRelative;
[attach2_pusta_car, pusta_car] call BIS_fnc_attachToRelative;