Params ["_player", "_didJIP"];

// Ausschluss des HCs ///
if (!hasinterface) exitWith {};

// Terrain
setterraingrid 3.125;

// Briefing
call compile preprocessFileLineNumbers "scripts\briefing.sqf";

// Loadouts
[_player] call compile preprocessFileLineNumbers "scripts\loadout_init.sqf";

// Teleport
[teleporter] call compile preprocessFileLineNumbers "scripts\fn_addTeleporter.sqf";

// Talk
[target_theo] call compile preprocessFileLineNumbers "scripts\talk.sqf";

// Intro
cutText ["","BLACK IN",15];
sleep 1;
private _introHandler = [_player] spawn compile preprocessFileLineNumbers "scripts\introClient.sqf";