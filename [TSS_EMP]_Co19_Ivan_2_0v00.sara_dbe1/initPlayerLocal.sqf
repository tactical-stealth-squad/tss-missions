Params ["_player", "_didJIP"];

// HC
if (!hasinterface) exitWith {};

// Player
if (hasInterface) then {
	//
	doStop _player;
	// Tarrain
	setTerrainGrid 3.125;
	// Briefing
	call compile preprocessFileLineNumbers "scripts\briefing.sqf";
	// Loadouts
	[_player] call compile preprocessFileLineNumbers "scripts\loadout\loadout_init.sqf";
	/// Teleport
	[teleport] call compile preprocessFileLineNumbers "scripts\fn_addTeleporter.sqf";
	// Intro für Non JIPler
	if (!_didJIP) then {
		[] spawn compile preprocessFileLineNumbers "scripts\introClient.sqf"
	}
}