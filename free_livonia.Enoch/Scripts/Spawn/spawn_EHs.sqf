// Spawn Glinska
[
	"Spawn_Glinska",
	{
		// Spawn at HC remove EH from Server
		if (_this isEqualTo "RemoveEH_Server") exitWith {[_thistype, _thisId] call CBA_fnc_removeEventHandler};
		// Remove EH
		[_thistype, _thisId] call CBA_fnc_removeEventHandler;
		// Spawn
		[["area_glinsk_1", east, RU_Groups select 0], "CBA_SearchArea", ["area_glinsk_1", "SAFE", "YELLOW", "LIMITED", "COLUM"]] call zinki_fnc_groupSpawn
	}
] call CBA_fnc_addEventHandlerArgs;

// Spawn tankpatrol
[
	"Spawn_TankPatrol",
	{
		// Spawn at HC remove EH from Server
		if (_this isEqualTo "RemoveEH_Server") exitWith {[_thistype, _thisId] call CBA_fnc_removeEventHandler};
		// Remove EH
		[_thistype, _thisId] call CBA_fnc_removeEventHandler;
		// Spawn
		call compile preprocessFileLineNumbers "scripts\spawn\tank_patrol.sqf"
	}
] call CBA_fnc_addEventHandlerArgs;

// Spawn Toplin
[
	"Spawn_toplin",
	{
		// Spawn at HC remove EH from Server
		if (_this isEqualTo "RemoveEH_Server") exitWith {[_thistype, _thisId] call CBA_fnc_removeEventHandler};
		// Remove EH
		[_thistype, _thisId] call CBA_fnc_removeEventHandler;
		// Spawn
		[["spawn_top_2", east, RU_Groups select 0], "CBA_SearchArea", ["area_top_2", "SAFE", "RED", "LIMITED", "COLUM"]] call zinki_fnc_groupSpawn;
		[["spawn_top_1", east, RU_Groups select 0], "CBA_SearchArea", ["area_top_1", "SAFE", "YELLOW", "LIMITED", "COLUM"]] call zinki_fnc_groupSpawn
	}
] call CBA_fnc_addEventHandlerArgs;

// Spawn rail
[
	"Spawn_Rail",
	{
		// Spawn at HC remove EH from Server
		if (_this isEqualTo "RemoveEH_Server") exitWith {[_thistype, _thisId] call CBA_fnc_removeEventHandler};
		// Remove EH
		[_thistype, _thisId] call CBA_fnc_removeEventHandler;
		// Spawn
		[["spawn_rail", east, RU_Groups select 0], "CBA_SearchArea", ["area_maintance", "SAFE", "YELLOW", "LIMITED", "COLUM"]] call zinki_fnc_groupSpawn;
		[["marker_7", east, RU_Groups select 2], "CBA_SearchArea", ["area_maintance", "SAFE", "RED", "LIMITED", "COLUM"]] call zinki_fnc_groupSpawn
	}
] call CBA_fnc_addEventHandlerArgs;

// Spawn patrol
[
	"Spawn_patrol",
	{
		// Spawn at HC remove EH from Server
		if (_this isEqualTo "RemoveEH_Server") exitWith {[_thistype, _thisId] call CBA_fnc_removeEventHandler};
		// Remove EH
		[_thistype, _thisId] call CBA_fnc_removeEventHandler;
		// Spawn
		[RU_Groups select 1, ["spawn_airport_2", "spawn_random_2", "spawn_random_3", "spawn_airport_2"]] call zinki_fnc_infPatrol;
		[RU_Groups select 2, ["spawn_random_2", "spawn_random_3", "spawn_airport_2", "spawn_random_1"]] call zinki_fnc_infPatrol;
		[RU_Groups select 3, ["spawn_random_3", "spawn_airport_2", "spawn_random_1", "spawn_random_2"]] call zinki_fnc_infPatrol
	}
] call CBA_fnc_addEventHandlerArgs;

// Spawn airport
[
	"Spawn_airport",
	{
		// Spawn at HC remove EH from Server
		if (_this isEqualTo "RemoveEH_Server") exitWith {[_thistype, _thisId] call CBA_fnc_removeEventHandler};
		// Remove EH
		[_thistype, _thisId] call CBA_fnc_removeEventHandler;
		// Spawn
		[[trigger_airport, 0, "O_T_APC_Tracked_02_cannon_ghex_F", east], "CBA_SearchArea", ["area_air_1", "SAFE", "RED", "LIMITED", "COLUM"]] call compile preprocessFileLineNumbers "scripts\spawn\fnc_VehicleSpawn.sqf";
		[[[o_aa_3, 50] call CBA_fnc_randPos, east, RU_Groups select 1], "CBA_SearchArea", ["area_air_1", "SAFE", "RED", "LIMITED", "COLUM"]] call zinki_fnc_groupSpawn;
		[[[o_aa_3, 25] call CBA_fnc_randPos, east, RU_Groups select 0], "CBA_SearchArea", ["area_air_1", "SAFE", "YELLOW", "LIMITED", "COLUM"]] call zinki_fnc_groupSpawn;
		[[o_aa_3, east, RU_Groups select 3], "CBA_SearchArea", ["area_air_1", "COMBAT", "RED", "LIMITED", "COLUM"]] call zinki_fnc_groupSpawn
	}
] call CBA_fnc_addEventHandlerArgs;
//*************************************************************************************************************************************//
// Spawn Quarry
[
	"Spawn_Quarry",
	{
		// Spawn at HC remove EH from Server
		if (_this isEqualTo "RemoveEH_Server") exitWith {[_thistype, _thisId] call CBA_fnc_removeEventHandler};
		// Remove EH
		[_thistype, _thisId] call CBA_fnc_removeEventHandler;
		// Spawn
		[["spawn_quarry", east, RU_Groups select 1], "CBA_SearchArea", ["area_quarry", "SAFE", "YELLOW", "LIMITED", "COLUM"]] call zinki_fnc_groupSpawn;
		[{[["spawn_quarry", east, RU_Groups select 0], "CBA_Patrol", [_grp, 75, 7, "MOVE", "SAFE", "YELLOW", "LIMITED", "COLUM"]] call zinki_fnc_groupSpawn}, [], 15] call CBA_fnc_waitAndExecute
	}
] call CBA_fnc_addEventHandlerArgs;

// Spawn airport support #1
[
	"Spawn_airport_support_1",
	{
		// Spawn at HC remove EH from Server
		if (_this isEqualTo "RemoveEH_Server") exitWith {[_thistype, _thisId] call CBA_fnc_removeEventHandler};
		// Remove EH
		[_thistype, _thisId] call CBA_fnc_removeEventHandler;
		// Spawn
		[{[["spawn_random_1", east, RU_Groups select 1], "CBA_Attack", [trigger_airport, 150]] call zinki_fnc_groupSpawn}, [], random 30] call CBA_fnc_waitAndExecute;
		[{[["spawn_random_2", east, RU_Groups select 2], "CBA_Attack", [getMarkerPos "spawn_airport_1", 250]] call zinki_fnc_groupSpawn}, [], 5 + random 30] call CBA_fnc_waitAndExecute;
		[{[["spawn_random_3", east, RU_Groups select 3], "CBA_Attack", [trigger_airport, 50]] call zinki_fnc_groupSpawn}, [], 10 + random 30] call CBA_fnc_waitAndExecute;
		{
			_x enAbleAI "path";
			[_x, getMarkerPos "marker_3", 100, true] call CBA_fnc_taskAttack
		} foreach [group tank_1, group tank_2]
	}
] call CBA_fnc_addEventHandlerArgs;

// Spawn airport support #2
[
	"Spawn_airport_support_2",
	{
		// Spawn at HC remove EH from Server
		if (_this isEqualTo "RemoveEH_Server") exitWith {[_thistype, _thisId] call CBA_fnc_removeEventHandler};
		// Remove EH
		[_thistype, _thisId] call CBA_fnc_removeEventHandler;
		// Spawn
		[{[["spawn_random_1", east, RU_Groups select 1], "CBA_Attack", [trigger_airport, 150]] call zinki_fnc_groupSpawn}, [], random 30] call CBA_fnc_waitAndExecute;
		[{[["spawn_random_2", east, RU_Groups select 2], "CBA_Attack", [getMarkerPos "spawn_airport_1", 250]] call zinki_fnc_groupSpawn}, [], 5 + random 30] call CBA_fnc_waitAndExecute;
		[{[["spawn_random_3", east, RU_Groups select 3], "CBA_Attack", [trigger_airport, 50]] call zinki_fnc_groupSpawn}, [], 10 + random 30] call CBA_fnc_waitAndExecute
	}
] call CBA_fnc_addEventHandlerArgs;

// Spawn HQ
[
	"Spawn_HQ",
	{
		// Spawn at HC remove EH from Server
		if (_this isEqualTo "RemoveEH_Server") exitWith {[_thistype, _thisId] call CBA_fnc_removeEventHandler};
		// Remove EH
		[_thistype, _thisId] call CBA_fnc_removeEventHandler;
		// Spawn
		[{[["area_hq", east, RU_Groups select 1], "CBA_SearchArea", ["area_hq", "SAFE", "YELLOW", "LIMITED", "COLUM"]] call zinki_fnc_groupSpawn}, [], random 30] call CBA_fnc_waitAndExecute;
		[{[["spawn_hq", east, RU_Groups select 0], "CBA_SearchArea", ["area_hq", "SAFE", "RED", "LIMITED", "COLUM"]] call zinki_fnc_groupSpawn}, [], 5 + random 30] call CBA_fnc_waitAndExecute;
		[{[["marker_5", east, RU_Groups select 3], "CBA_SearchArea", ["area_hq", "COMBAT", "RED", "LIMITED", "COLUM"]] call zinki_fnc_groupSpawn}, [], 10 + random 30] call CBA_fnc_waitAndExecute;
		[{[[arty_1, east, RU_Groups select 0], "CBA_Patrol", [arty_1, 75, 7, "MOVE", "SAFE", "YELLOW", "LIMITED", "COLUM"]] call zinki_fnc_groupSpawn}, [], 15 + random 30] call CBA_fnc_waitAndExecute
	}
] call CBA_fnc_addEventHandlerArgs;

// HQ Support
[
	"spawn_hq_support",
	{
		// Remove EH
		[_thistype, _thisId] call CBA_fnc_removeEventHandler;
		// Spawn
		{
			if (local _x && alive _x && _x distance [4526.53,10488,0] < 1500) then {
				_x enableAI "PATH";
				[_x,getMarkerPos "marker_5", 100, true] call CBA_fnc_taskAttack
			}
		} foreach units east;
	}
] call CBA_fnc_addEventHandlerArgs;

// Spawn toplin support #1
[
	"Spawn_toplin_support_1",
	{
		// Spawn at HC remove EH from Server
		if (_this isEqualTo "RemoveEH_Server") exitWith {[_thistype, _thisId] call CBA_fnc_removeEventHandler};
		// Remove EH
		[_thistype, _thisId] call CBA_fnc_removeEventHandler;
		// Spawn
		[["spawn_toplin_sup", 0, "O_T_APC_Tracked_02_cannon_ghex_F", east], "CBA_Attack", [getMarkerPos "spawn_rail", 250]] call compile preprocessFileLineNumbers "scripts\spawn\fnc_VehicleSpawn.sqf";
		[{[["spawn_toplin_sup", east, RU_Groups select 0], "CBA_Attack", [getMarkerPos "marker_7", 150]] call zinki_fnc_groupSpawn}, [], random 30] call CBA_fnc_waitAndExecute;
		[{[[["spawn_toplin_sup", random 25] call CBA_fnc_randPos, east, RU_Groups select 1], "CBA_Attack", [getMarkerPos "area_top_1", 250]] call zinki_fnc_groupSpawn}, [], 5 + random 30] call CBA_fnc_waitAndExecute;
		[{[[["spawn_toplin_sup", random 25] call CBA_fnc_randPos, east, RU_Groups select 3], "CBA_Attack", [getMarkerPos "spawn_top_2", 250]] call zinki_fnc_groupSpawn}, [], 10 + random 30] call CBA_fnc_waitAndExecute

	}
] call CBA_fnc_addEventHandlerArgs;

// Spawn toplin support #2
[
	"Spawn_toplin_support_2",
	{
		// Spawn at HC remove EH from Server
		if (_this isEqualTo "RemoveEH_Server") exitWith {[_thistype, _thisId] call CBA_fnc_removeEventHandler};
		// Remove EH
		[_thistype, _thisId] call CBA_fnc_removeEventHandler;
		// Spawn
		[[["spawn_toplin_sup", random 25] call CBA_fnc_randPos, 0, "O_T_APC_Tracked_02_cannon_ghex_F", east], "CBA_Attack", [getMarkerPos "spawn_rail", 150]] call compile preprocessFileLineNumbers "scripts\spawn\fnc_VehicleSpawn.sqf";
		[{[[["spawn_toplin_sup", random 25] call CBA_fnc_randPos, east, RU_Groups select 1], "CBA_Attack", [getMarkerPos "marker_7", 150]] call zinki_fnc_groupSpawn}, [], random 30] call CBA_fnc_waitAndExecute
	}
] call CBA_fnc_addEventHandlerArgs;

nil