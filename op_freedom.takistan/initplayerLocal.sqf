Params ["_player", "_didJIP"];

if (!hasInterface) exitWith {};

doStop _player;

/// Sichtdetails
setTerrainGrid 3.125;

/// Briefing ///
call compile preprocessFileLineNumbers "scripts\briefing.sqf";

// Loadouts
[_player] call compile preprocessFileLineNumbers "scripts\loadout_init.sqf";

/// Teleport
[teleport_team] call compile preprocessFileLineNumbers "scripts\fn_addTeleporter.sqf";
teleport_marker addaction ["<t color='#ffff00'>Teleport to LZ_01</t>", {_this select 1 setPos getMarkerPos "marker_127"}, nil, 1.5, true, true, "", "true", 3];

if !(_didJIP) then {
	cutText ["","BLACK IN", 15];
	// Hinsetzen zum Briefing
	[_player] spawn compile preprocessFileLineNumbers "scripts\sit_down.sqf"
}