Params ["_player", "_didJIP"];

// Ausschluss des HCs ///
if (!hasinterface) exitWith {};

//doStop _player;

// Terrain
setterraingrid 3.125;

// Briefing
call compile preprocessFileLineNumbers "scripts\briefing.sqf";

// Loadouts
[_player] call compile preprocessFileLineNumbers "scripts\loadout_init.sqf";

// Teleport
[teleporter] call compile preprocessFileLineNumbers "scripts\fn_addTeleporter.sqf";

// Intro
if (!_didJIP) then {
	cutText ["","BLACK IN",40];
	sleep 2;
	[_player] spawn compile preprocessFileLineNumbers "scripts\introClient.sqf"
} else {
	cutText ["","BLACK IN",15];
	sleep 5;
	["Misty Mountains", "28.10.2009", "Chernarus"] spawn BIS_fnc_infoText
}