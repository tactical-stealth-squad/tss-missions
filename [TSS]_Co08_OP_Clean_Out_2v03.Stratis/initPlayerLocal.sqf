Params ["_player", "_didJIP"];

/// Client Scripte ///
if (hasinterface) then {
	doStop _player;
	// Terrain
	setterraingrid 3.125;
	// Briefing
	[] call compile preprocessFileLineNumbers "briefing.sqf";

	if (!_didJIP) then {
		sleep 3;
		["Operation", "Clean Out"] call BIS_fnc_infoText;
		sleep 1;
		["Stratis", "Kamino Bay"] call BIS_fnc_infoText;
		sleep 1;
		["", ""] call BIS_fnc_infoText;
		sleep 1;
		["Mission by", "=TSS= Para-Medic"] call BIS_fnc_infoText;
	}
};

if (_didJIP) then {
	_player setPos [7093.4,5941.25,0];
};

veh_sdv_1 addAction ["Detach SDV",{detach veh_sdv_1;  [(_this select 0), (_this select 2)] remoteExecCall ["removeAction", allPlayers]}];
veh_sdv_2 addAction ["Detach SDV",{detach veh_sdv_2;  [(_this select 0), (_this select 2)] remoteExecCall ["removeAction", allPlayers]}];