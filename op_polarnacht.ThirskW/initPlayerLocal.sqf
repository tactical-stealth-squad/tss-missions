Params ["_player", "_didJIP"];

// Ausschluss des HCs ///
if (!hasinterface) exitWith {};

doStop _player;

// Terrain
setterraingrid 3.125;

// Briefing
call compile preprocessFileLineNumbers "scripte\briefing.sqf";

// Loadouts
[_player] call compile preprocessFileLineNumbers "scripte\loadout_init.sqf";

// Teleport
[teleport] call compile preprocessFileLineNumbers "scripte\fn_addTeleporter.sqf";

if (!_didJIP) then {
	waitUntil {sleep 2; _player == ACE_player};
	private _introHandler = [] spawn compile preprocessFileLineNumbers "scripte\intro.sqf";
	[] spawn compile preprocessFileLineNumbers "scripte\intro_ani.sqf";

	waitUntil {sleep 30; scriptDone _introHandler};
	hintsilent composeText [parsetext format  ["<t size='1.4' align='center' color='#12ff00'>Viel Glück Soldat %1</t>", name _player]]
}