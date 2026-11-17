private _handleSpawn = [
	{
		if (!routine_Spawn_Begin) exitWith {};
		if (count AllGroups > 100 or count (units east) > 180) exitWith {};

		// Count alive Player
		private _alivePlayer = [];
		{
			if ([_x] call ace_common_fnc_isAwake) then {_alivePlayer pushBack _x};
		} foreach (units west);

		private _alivePlayerCount = count _alivePlayer;

		// Count alive Enemy (without Editor placed)
		private _aliveEnemy = [];
		{
			if ([_x] call ace_common_fnc_isAwake && !(_x getVariable ["lambs_danger_disableAI", false])) then {_aliveEnemy pushBack _x};
		} foreach (units east);

		private _aliveEnemyCount = count _aliveEnemy;

		// How many groups should spawn
		switch (entities [["HeadlessClient_F"], [], false, true] isNotEqualTo []) do {
			case true: {
				if (_aliveEnemyCount < 20 && _alivePlayerCount > 19) exitWith {[6] remoteExecCall ["spawn_reinf_group", owner HC1];};
				if (_aliveEnemyCount < 15 && _alivePlayerCount > 14) exitWith {[5] remoteExecCall ["spawn_reinf_group", owner HC1];};
				if (_aliveEnemyCount < 10 && _alivePlayerCount > 9) exitWith {[4] remoteExecCall ["spawn_reinf_group", owner HC1];};
				if (_aliveEnemyCount < 5 && _alivePlayerCount > 5) exitWith {[3] remoteExecCall ["spawn_reinf_group", owner HC1];};
				if (_aliveEnemyCount < 5 && _alivePlayerCount > 2) exitWith {[2] remoteExecCall ["spawn_reinf_group", owner HC1];};
			};
			case false: {
				if (_aliveEnemyCount < 20 && _alivePlayerCount > 19) exitWith {[6] spawn spawn_reinf_group;};
				if (_aliveEnemyCount < 15 && _alivePlayerCount > 14) exitWith {[5] spawn spawn_reinf_group;};
				if (_aliveEnemyCount < 10 && _alivePlayerCount > 9) exitWith {[4] spawn spawn_reinf_group;};
				if (_aliveEnemyCount < 5 && _alivePlayerCount > 5) exitWith {[3] spawn spawn_reinf_group;};
				if (_aliveEnemyCount < 5 && _alivePlayerCount > 2) exitWith {[2] spawn spawn_reinf_group;};
			};
		};
	},
	300
] call CBA_fnc_addPerFrameHandler;

nil