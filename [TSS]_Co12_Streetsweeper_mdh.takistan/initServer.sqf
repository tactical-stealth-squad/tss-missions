/// Skill & Eventhandler///
{
	_x setskill ["spotDistance", 1];
	_x setskill ["spotTime", 1];
	_x setskill ["courage", 1];
	// Eventhandler for moving when hit
	_x addEventhandler [
		"HIT",
		{
			if (side (_this select 3) isEqualTo east OR !alive (_this select 0) OR (vehicle (_this select 0) != (_this select 0))) exitWith {};
			(_this select 0) removeEventHandler ["HIT", _thisEventHandler];
			(_this select 0) doSuppressiveFire getPosASL (_this select 3);
			[(_this select 0), (_this select 3), 50, true] call CBA_fnc_taskAttack
		}
	];
} foreach (units east);

// Loadout west units
{
	private _klasse = typeOf _x;

	switch (_klasse) do {

		case "CUP_B_BAF_Soldier_Rifleman_DDPM": {
			_x setUnitLoadout [["CUP_arifle_L85A2_GL_Elcan_Laser","","","CUP_optic_SUSAT",["CUP_30Rnd_556x45_Stanag_L85",30],["CUP_1Rnd_HEDP_M203",1],""],[],[],["CUP_U_B_BAF_DDPM_UBACSLONGKNEE",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_quikclot",3],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_splint",2],["ACE_tourniquet",4]]],["CUP_V_B_BAF_DDPM_Osprey_Mk3_Grenadier",[["ACRE_PRC343",1],["CUP_30Rnd_556x45_Stanag_L85",10,30],["SmokeShell",2,1],["CUP_1Rnd_HEDP_M203",15,1],["SmokeShellGreen",2,1]]],[],"CUP_H_BAF_DDPM_Mk6_EMPTY","",[],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]]
		};
		case "CUP_B_BAF_Soldier_TeamLeader_DDPM": {
			_x setUnitLoadout [["CUP_arifle_L85A2_GL","","","CUP_optic_SUSAT",["CUP_30Rnd_556x45_Stanag_L85",30],["CUP_1Rnd_HEDP_M203",1],""],[],["CUP_hgun_Browning_HP","","","",["CUP_13Rnd_9x19_Browning_HP",13],[],""],["CUP_U_B_BAF_DDPM_UBACSROLLEDKNEE",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_quikclot",3],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_MapTools",1],["ACE_morphine",2],["ACE_splint",2],["ACE_tourniquet",4]]],["CUP_V_B_BAF_DDPM_Osprey_Mk3_Officer",[["ACRE_PRC343",1],["ACRE_PRC148",1],["CUP_HandGrenade_L109A2_HE",2,1],["SmokeShell",2,1],["SmokeShellGreen",2,1],["CUP_1Rnd_HEDP_M203",10,1],["CUP_30Rnd_556x45_Stanag_L85",10,30],["CUP_13Rnd_9x19_Browning_HP",1,13]]],[],"CUP_H_BAF_DDPM_Mk6_EMPTY_PRR","",["ACE_Vector","","","",[],[],""],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]]
		};
		case "CUP_B_BAF_Soldier_AutoRifleman_DDPM": {
			_x setUnitLoadout [["CUP_lmg_minimipara","","","",["CUP_200Rnd_TE4_Red_Tracer_556x45_L110A1",200],[],""],[],[],["CUP_U_B_BAF_DDPM_UBACSTSHIRTKNEE",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_quikclot",3],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_splint",2],["ACE_tourniquet",4]]],["CUP_V_B_BAF_DDPM_Osprey_Mk3_AutomaticRifleman",[["ACRE_PRC343",1],["CUP_200Rnd_TE4_Red_Tracer_556x45_L110A1",4,200],["CUP_HandGrenade_L109A2_HE",2,1],["SmokeShell",2,1],["SmokeShellGreen",2,1]]],[],"CUP_H_BAF_DDPM_Mk6_EMPTY","",[],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]]
		}
	}
} foreach ((units west) - AllPlayers);

// Tasks
call compile preprocessFileLineNumbers "scripts\tasks.sqf";

// Spare Barrel
{
	_x addmagazinecargoGlobal ["ACE_SpareBarrel",2]
} foreach [b_car_1, b_car_2, b_car_3, b_car_4, ammo_Box_1];

// Attach to weil Arma ...
{
	[_x, ammo_helper] call BIS_fnc_attachToRelative
} foreach [ammo_box_1, ammo_box_2, lap_end, teleport];
{
	[_x, med_tent] call BIS_fnc_attachToRelative
} foreach [med_box_1, med_box_2];

// no AI Mod for friends
{
	_x setVariable ["lambs_danger_disableAI",true];
	_x setVariable ["Vcm_Disable",true]
} foreach (units west);

// load medBox
[med_box_car, med_car, true] call ace_cargo_fnc_loadItem;

// Reveal Mines Civ
{
	civilian revealMine _x
} foreach AllMines;

// Reveal Mines east
{
	east revealMine _x
} foreach AllMines;