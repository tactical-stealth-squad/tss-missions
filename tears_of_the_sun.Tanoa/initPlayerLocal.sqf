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
if (!_didJIP) then {
	cutText ["","BLACK IN",15];

	private _VarName = vehicleVarName _player;
	switch (_VarName) do {
		case "s9": {};
		default {
			[_player, "marker_13", 150] call CBA_fnc_setPos;
			[_player, 3000, false, false, true] call compile preprocessFileLineNumbers "scripts\fn_HALO.sqf"
		}
	};
	sleep 3;
	["Tears of the Sun", ""] call BIS_fnc_infoText;
	sleep 1;
	["Middle of Nowhere", "Africa"] call BIS_fnc_infoText;
	sleep 1;
	["June 24th 2015", "Time: 0610 Hours"] call BIS_fnc_infoText;
	sleep 1;
	["Mission by", "=TSS= Para-Medic"] call BIS_fnc_infoText
} else {
	sleep 3;
	["Tears of the Sun", ""] call BIS_fnc_infoText;
	sleep 1;
	["Middle of Nowhere", "Africa"] call BIS_fnc_infoText;
	sleep 1;
	["June 24th 2015", "Time: 0610 Hours"] call BIS_fnc_infoText;
	sleep 1;
	["Mission by", "=TSS= Para-Medic"] call BIS_fnc_infoText
}