Params ["_player", "_didJIP"];

/// Client Scripte ///
if (hasinterface) then {
	doStop _player;
	// Terrain
	setterraingrid 3.125;
	// Briefing
	[] spawn compile preprocessFileLineNumbers "briefing.sqf";

	if (!_didJIP) then {
		sleep 1;
		["Band of Brothers 2", ""] call BIS_fnc_infoText;
		sleep 1;
		["West Altis", ""] call BIS_fnc_infoText;
		sleep 1;
		["June 12 2035", "Time: 0100 Hours"] call BIS_fnc_infoText;
		sleep 1;
		["", ""] call BIS_fnc_infoText
	}
}