// Spawn Bagango && Obregan
[
	"Spawn_Bagango",
	{
		// Spawn at HC remove EH from Server
		if (_this isEqualTo "RemoveEH_Server") exitWith {[_thistype, _thisId] call CBA_fnc_removeEventHandler};
		// Remove EH
		[_thistype, _thisId] call CBA_fnc_removeEventHandler;
		// Bagango
		[{[["bagango", east, RU_Groups select 0], "CBA_SearchArea", ["bagango", "SAFE", "YELLOW", "LIMITED", "COLUM"]] call zinki_fnc_groupSpawn}, [], random 30] call CBA_fnc_waitAndExecute;
		// Obregan
		[{[["obregan", east, RU_Groups select 2], "CBA_Patrol", [getMarkerPos "obregan", 300, 7, "MOVE", "SAFE", "YELLOW", "LIMITED", "COLUM"]] call zinki_fnc_groupSpawn}, [], 40 + random 30] call CBA_fnc_waitAndExecute
	}
] call CBA_fnc_addEventHandlerArgs;

// Spawn Corazol
[
	"Spawn_Corazol",
	{
		// Spawn at HC remove EH from Server
		if (_this isEqualTo "RemoveEH_Server") exitWith {[_thistype, _thisId] call CBA_fnc_removeEventHandler};
		// Remove EH
		[_thistype, _thisId] call CBA_fnc_removeEventHandler;
		// Spawn
		[{[["corazol_1", east, RU_Groups select 0], "CBA_SearchArea", ["corazol_1", "SAFE", "YELLOW", "LIMITED", "COLUM"]] call zinki_fnc_groupSpawn}, [], random 30] call CBA_fnc_waitAndExecute;
		[{[["corazol_2", east, RU_Groups select 2], "CBA_SearchArea", ["corazol_1", "SAFE", "YELLOW", "LIMITED", "COLUM"]] call zinki_fnc_groupSpawn}, [], 30 + random 30] call CBA_fnc_waitAndExecute;
		[{[["AA_cora_2", east, RU_Groups select 2], "CBA_SearchArea", ["corazol_2", "SAFE", "YELLOW", "LIMITED", "COLUM"]] call zinki_fnc_groupSpawn}, [], 60 + random 30] call CBA_fnc_waitAndExecute;
		[{[["corazol_2", east, RU_Groups select 1], "CBA_SearchArea", ["corazol_3", "SAFE", "RED", "LIMITED", "COLUM"]] call zinki_fnc_groupSpawn}, [], 100 + random 30] call CBA_fnc_waitAndExecute;
	}
] call CBA_fnc_addEventHandlerArgs;

// Spawn fallies #1
[
	"Spawn_fallies_1",
	{
		// Spawn at HC remove EH from Server
		if (_this isEqualTo "RemoveEH_Server") exitWith {[_thistype, _thisId] call CBA_fnc_removeEventHandler};
		// Remove EH
		[_thistype, _thisId] call CBA_fnc_removeEventHandler;
		// Spawn
		["spawn_fallies", "AA_cora_1", "CUP_O_Mi24_V_Dynamic_RU", east, ["CUP_O_RU_Soldier_TL_VDV_EMR", "CUP_O_RU_Soldier_LAT_VDV_EMR", "CUP_O_RU_Medic_VDV_EMR", "CUP_O_RU_Soldier_AR_VDV_EMR", "CUP_O_RU_Soldier_Marksman_VDV_EMR", "CUP_O_RU_Soldier_GL_VDV_EMR"], "AA_cora_1", false] spawn compile preprocessFileLineNumbers "scripts\spawn\fnc_fallies.sqf";
	}
] call CBA_fnc_addEventHandlerArgs;

// LastRun
[
	"LastRun_Corzaol",
	{
		// Remove EH
		[_thistype, _thisId] call CBA_fnc_removeEventHandler;

		private _ArrayArea = [];

		{
			if (local _x && side _x isEqualTo east && _x inArea "area_lastRun") then {
				_ArrayArea pushback _x
			}
		} foreach (AllUNits - AllPlayers);

		private _ArrayRun = (AllUNits - AllPlayers - _ArrayArea);

		{
			if (_x getVariable "Vcm_Disable") then {
				_x setVariable ["Vcm_Disable", false]
			};
			_x enableAI "Path";
			[_x, getMarkerPos "LastRun", 100, true] call CBA_fnc_taskAttack
		} foreach _ArrayRun
	}
] call CBA_fnc_addEventHandlerArgs;

// Spawn fallies #2
[
	"Spawn_fallies_2",
	{
		// Spawn at HC remove EH from Server
		if (_this isEqualTo "RemoveEH_Server") exitWith {[_thistype, _thisId] call CBA_fnc_removeEventHandler};
		// Remove EH
		[_thistype, _thisId] call CBA_fnc_removeEventHandler;
		// Spawn
		["spawn_fallies", "lastRun", "CUP_O_Mi24_V_Dynamic_RU", east, ["CUP_O_RU_Soldier_TL_VDV_EMR", "CUP_O_RU_Soldier_LAT_VDV_EMR", "CUP_O_RU_Medic_VDV_EMR", "CUP_O_RU_Soldier_AR_VDV_EMR", "CUP_O_RU_Soldier_Marksman_VDV_EMR", "CUP_O_RU_Soldier_GL_VDV_EMR"], "lastRun", false] spawn compile preprocessFileLineNumbers "scripts\spawn\fnc_fallies.sqf";
	}
] call CBA_fnc_addEventHandlerArgs;

nil