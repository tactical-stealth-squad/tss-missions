SHK_paraTroops = compile preprocessFileLineNumbers "scr_SHK_paraTroops.sqf";
HWK_spawnAir = compile preprocessFileLineNumbers "scr_HWK_spawnAircraft.sqf";

// Enemy units loadout
GEA_scr_loadout = compile preprocessFileLineNumbers "scr_loadout.sqf";
["CUP_Creatures_Military_RUS_Soldier_Base", "init", {call GEA_scr_loadout}, true, [], true] call CBA_fnc_addClassEventHandler;
["CUP_Creatures_Military_SLA_Soldier_Base", "init", {call GEA_scr_loadout}, true, [], true] call CBA_fnc_addClassEventHandler;

// Ambient helicopters and jets
[] spawn compile preprocessFileLineNumbers "scr_amb_flight.sqf";

veh_leo_1 limitSpeed 30;
veh_bmp_1 limitSpeed 30;

veh_leo_1 forceSpeed 30;
veh_bmp_1 forceSpeed 30;

// Skill
	{	if (side _x isEqualTo east) then {
			_x setSkill ["spotDistance", 1];
			_x setSkill ["spotTime", 1];
			_x setSkill ["courage", 1]
		}
	} forEach allUnits;

GEA_radioFreq = ([46, 57] call BIS_fnc_randomInt);
publicVariable "GEA_radioFreq";

sleep 90;

// Random starting position for BGS units
	private _pos = selectRandom [lgc_startPos_1, lgc_startPos_2, lgc_startPos_3, lgc_startPos_4, lgc_startPos_5, lgc_startPos_6, lgc_startPos_7, lgc_startPos_8, lgc_startPos_9, lgc_startPos_10];

	while { count (_pos nearEntities ["Man", 50]) > 0 } do
	{
		_pos = selectRandom [lgc_startPos_1, lgc_startPos_2, lgc_startPos_3, lgc_startPos_4, lgc_startPos_5, lgc_startPos_6, lgc_startPos_7, lgc_startPos_8, lgc_startPos_9, lgc_startPos_10];
	};

	_pos = getPosATL _pos;

	{	_x setVehiclePosition [_pos, [], 10, "NONE"];
	} forEach units grp_bgs;

	// Set marker
	"mrk_pos_bgs" setMarkerPos [(_pos select 0) + ([-100, 100] call BIS_fnc_randomNum), (_pos select 1) + ([-100, 100] call BIS_fnc_randomNum)];
	"mrk_pos_bgs" setMarkerAlpha 1;


// Dress decorative base protection accordingly
	private _units_deko = (units grp_deko_1) + (units grp_deko_2) + (units grp_deko_3) + (units grp_deko_4) ;

	{	switch (typeOf _x) do {

			case "CUP_B_GER_BW_Fleck_Soldier_MG3": {
			_x setUnitLoadout [["CUP_lmg_MG3","","","",["CUP_120Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",120],[],""],[],[],["CUP_U_B_GER_Fleck_Overalls_Pilot",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2],["CUP_120Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",1,120]]],["CUP_V_O_RUS_RPS_Smersh_AK_ModernOlive",[["ACE_salineIV_500",2],["ACE_splint",2],["HandGrenade",2,1],["SmokeShell",2,1],["CUP_120Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",2,120]]],[],"SP_M88PSMHelmet_Black1","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
			};

			case "CUP_B_GER_BW_Fleck_Soldier_AT": {
			_x setUnitLoadout [["CUP_arifle_G3A3_ris_black","","","",["CUP_20Rnd_762x51_G3",20],[],""],["CUP_launch_HCPF3","","","",[],[],""],[],["CUP_U_B_GER_Fleck_Overalls_Pilot",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2]]],["CUP_V_O_RUS_RPS_Smersh_AK_ModernOlive",[["ACE_salineIV_500",2],["ACE_splint",2],["HandGrenade",2,1],["SmokeShell",2,1],["CUP_20Rnd_762x51_G3",8,20]]],[],"SP_M88PSMHelmet_Black1","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
			};

			default {
			_x setUnitLoadout [["CUP_arifle_G3A3_ris_black","","","",["CUP_20Rnd_762x51_G3",20],[],""],[],[],["CUP_U_B_GER_Fleck_Overalls_Pilot",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2]]],["CUP_V_O_RUS_RPS_Smersh_AK_ModernOlive",[["ACE_salineIV_500",2],["ACE_splint",2],["HandGrenade",2,1],["SmokeShell",2,1],["CUP_20Rnd_762x51_G3",8,20]]],[],"SP_M88PSMHelmet_Black1","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
			};
		};
		
	} forEach _units_deko;