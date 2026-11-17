Params ["_player", "_didJIP"];

/// Ausschluss des HCs ///
if (!hasinterface) exitWith {};

doStop _player;

// Terrain
setterraingrid 3.125;

// Briefing
call compile preprocessFileLineNumbers "scripts\briefing.sqf";

// Loadouts
[_player] call compile preprocessFileLineNumbers "scripts\loadout_init.sqf";

/// Teleport
[teleport] call compile preprocessFileLineNumbers "scripts\fn_addTeleporter.sqf";

// Intro
//if (!_didJIP) then {
	cutText ["","BLACK IN",15];

//}