Params ["_player", "_didJIP"];

/// Client Scripte ///
if (hasinterface) then {
	doStop _player;
	// Terrain
	setterraingrid 3.125;
	// Briefing
	[] call compile preprocessFileLineNumbers "scripts\briefing.sqf";

	sleep 20;

	if (!_didJIP) then {
		sleep 1;
		["Band of Brothers", ""] call BIS_fnc_infoText;
		sleep 1;
		["Coast South-West", "Altis"] call BIS_fnc_infoText;
		sleep 1;
		["June 11 2035", "Time: 2205 Hours"] call BIS_fnc_infoText;
		sleep 1;
		["", ""] call BIS_fnc_infoText
	};

	"marker_task2" setMarkerAlphaLocal 0;
}