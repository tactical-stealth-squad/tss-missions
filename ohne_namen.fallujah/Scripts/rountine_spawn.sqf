private _handle = [
	{
		// Delete Empty Groups
		{
			if (count units _x isEqualTo 0) then {
				deletegroup _x;
			};
		} foreach AllGroups;

		// Count alive Player
		private _alivePlayer = [];
		{
			if ([_x] call ace_common_fnc_isAwake) then {_alivePlayer pushBack _x};
		} foreach (units west);

		private _alivePlayerCount = count _alivePlayer;

		// Count alive Enemy (without Editor placed)
		private _aliveEnemy = [];
		{
			if ([_x] call ace_common_fnc_isAwake && !(_x getVariable "lambs_danger_disableAI")) then {_aliveEnemy pushBack _x};
		} foreach (units east);

		private _aliveEnemyCount = count _aliveEnemy;

		// How many groups should spawn
		if (_aliveEnemyCount < 15 && _alivePlayerCount > 15) exitWith {[4, 1] spawn spawn_reinf_group; [{[3, 0] spawn spawn_reinf_group}, [], 35] call CBA_fnc_waitAndExecute;};
		if (_aliveEnemyCount < 10 && _alivePlayerCount > 10) exitWith {[3, 1] spawn spawn_reinf_group; [{[2, 0] spawn spawn_reinf_group}, [], 35] call CBA_fnc_waitAndExecute;};
		if (_aliveEnemyCount < 5 && _alivePlayerCount > 5) exitWith {[2, 1] spawn spawn_reinf_group; [{[1, 0] spawn spawn_reinf_group}, [], 35] call CBA_fnc_waitAndExecute;};
	},
	180
] call CBA_fnc_addPerFrameHandler;

nil