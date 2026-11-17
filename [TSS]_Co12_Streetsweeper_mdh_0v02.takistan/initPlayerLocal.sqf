Params ["_player", "_didJIP"];

// Ausschluss des HCs ///
if (!hasinterface) exitWith {};

doStop _player;

// Terrain
setterraingrid 3.125;

// Briefing
call compile preprocessFileLineNumbers "scripts\briefing.sqf";

// Loadouts
[_player] call compile preprocessFileLineNumbers "scripts\loadout_init.sqf";

// Teleport
[teleport] call compile preprocessFileLineNumbers "scripts\fn_addTeleporter.sqf";

// End Mission
lap_end addAction ["Zurück zu Fish and Chips (Mission Beenden)", {"EveryoneWon" remoteExecCall ["BIS_fnc_endMissionServer", 2]}, nil, 1.5, true, true, "", "", 5];

// Intro
if (!_didJIP) then {
	cutText ["","BLACK IN",20];
	sleep 2;
	[_player] spawn compile preprocessFileLineNumbers "scripts\introClient.sqf"
} else {
	cutText ["","BLACK IN",15];
	sleep 2;
	["OP Streetsweeper", "25.07.2009", "Takistan"] spawn BIS_fnc_infoText;
}