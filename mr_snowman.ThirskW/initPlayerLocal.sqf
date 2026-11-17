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
[teleport] call compile preprocessFileLineNumbers "scripts\fn_addTeleporter.sqf";

// let it snow ... in houses too ...
call compile preprocessFileLineNumbers "scripts\snowScript.sqf";

// End addaction
end_radiorack addAction ["Abholung (Mission Beenden)", {"EveryoneWon" remoteExec ["BIS_fnc_endMissionServer", 2]}, nil, 1.5, true, true, "", "true", 7];

if (_didJIP) then {
	_player setPos getMarkerpos "respawn_west"
}