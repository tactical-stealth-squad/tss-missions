Params ["_player", "_didJIP"];

/// Ausschluss des HCs ///
if (!hasinterface) exitWith {};

doStop _player;

// Terrain
setterraingrid 3.125;

// Briefing
call compile preprocessFileLineNumbers "scripts\briefing.sqf";

// Loadouts
[_player] call compile preprocessFileLineNumbers "scripts\loadout\loadout_init.sqf";

/// Teleport
[teleport] call compile preprocessFileLineNumbers "scripts\fn_addTeleporter.sqf";

// Transformator mainipulieren
if !("task1" call BIS_fnc_taskState isEqualTo "SUCCEEDED" OR {("task1" call BIS_fnc_taskState isEqualTo "FAILED")}) then {
	[Computer, "Störsender einbauen"] call compile preprocessFileLineNumbers "scripts\hacking.sqf"
};

// Intro
if (!_didJIP) then {
	cutText ["","BLACK IN",15];
	private _introHandler = [] spawn compile preprocessFileLineNumbers "scripts\introClient.sqf"
}