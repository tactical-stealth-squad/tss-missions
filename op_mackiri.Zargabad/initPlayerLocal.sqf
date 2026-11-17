Params ["_player", "_didJIP"];
// HC
if (!hasinterface) exitWith {
	[
		"Amb_Civ",
		{
			[_thisType, _thisId] call CBA_fnc_removeEventHandler;
			diag_log "### Civi Spawn auf HC ###";
			for "_i" from 1 to 16 do {
				[
					[spawn_zarg_1, spawn_zarg_2, spawn_zarg_3],
					[spawn_zarg_4, "Area7", "Area0"],
					["CUP_C_TK_Man_08_Waist", "CUP_C_TK_Man_07_Waist", "CUP_C_TK_Man_03_Waist", "CUP_C_TK_Man_01_Waist", "CUP_C_TK_Man_01_Coat", "CUP_C_TK_Man_04", "CUP_C_TK_Man_02"],
					3,
					true
				] call zinki_fnc_CivSpawn
			};

			for "_i" from 1 to 4 do {
				[
					[spawn_zarg_5, spawn_zarg_6],
					["Area1"],
					["CUP_C_TK_Man_08_Waist", "CUP_C_TK_Man_07_Waist", "CUP_C_TK_Man_03_Waist", "CUP_C_TK_Man_01_Waist", "CUP_C_TK_Man_01_Coat", "CUP_C_TK_Man_04", "CUP_C_TK_Man_02"],
					3,
					true
				] call zinki_fnc_CivSpawn
			}
		}
	] call CBA_fnc_addEventHandlerArgs;

	[
		"AI_Base",
		{
			[_thisType, _thisId] call CBA_fnc_removeEventHandler;
			diag_log "### Spawn AI Base auf HC ###";
			call compile preprocessFileLineNumbers "scripts\base\HCSpawn.sqf";
			_this spawn compile preprocessFileLineNumbers "scripts\base\AI_Spawn.sqf"
		}
	] call CBA_fnc_addEventHandlerArgs;
};

// Tarrain
setTerrainGrid 3.125;

// Briefing
call compile preprocessFileLineNumbers "scripts\briefing.sqf";

// Loadouts
[_player] call compile preprocessFileLineNumbers "scripts\loadout\loadout_init.sqf";

/// Teleport
[Dixi] call compile preprocessFileLineNumbers "scripts\fn_addTeleporter.sqf";

// Begrüßungstext für Non JIPler
if (!_didJIP) then {
	cutText ["","BLACK IN",15];
	sleep 5;
	waitUntil {_player == ACE_player};
	private _introHandler = [_player] spawn compile preprocessFileLineNumbers "scripts\introClient.sqf";
};

// Addaction für Optional Auftrag
waitUntil {!isNil "task_OP"};
if (!task_OP && alive b_target_1) then {
	b_target_1 addAction ["<t color='#FF0000'>Verträge nehmenRED</t>", "scripts\taskop\taskop.sqf", nil, 1.5, true, true, "", "", 5]
}