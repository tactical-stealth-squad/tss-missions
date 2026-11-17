Params ["_player", "_didJIP"];

// Terrain
setterraingrid 3.125;
// Briefing
call compile preprocessFileLineNumbers "scripts\briefing.sqf";

// Teleport
[teleport] call compile preprocessFileLineNumbers "scripts\fn_addTeleporter.sqf";

if (!_didJIP) then {
	playmusic "music_intro";
	sleep 1;
	["Morning Sun", "by Para-Medic"] call BIS_fnc_infoText;
	sleep 1;
	["Somewhere", "East of Altis"] call BIS_fnc_infoText;
	sleep 1;
	["June 24th 2035", "0455 Hours"] call BIS_fnc_infoText;
	sleep 1;
	["", ""] call BIS_fnc_infoText;
} else {
	_player setpos getMarkerpos "respawn_independent"
}