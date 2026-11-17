Params ["_player", "_didJIP"];

// Ausschluss des HCs ///
if (!hasinterface) exitWith {};

doStop _player;

// Terrain
setterraingrid 3.125;

// Briefing
call compile preprocessFileLineNumbers "scripts\briefing.sqf";

// Loadouts
[_player] call compile preprocessFileLineNumbers "scripts\loadout\loadout_init.sqf";

// Teleport
[LKW] call compile preprocessFileLineNumbers "scripts\fn_addTeleporter.sqf";

// Transformator mainipulieren
if !("task2" call BIS_fnc_taskState isEqualTo "SUCCEEDED" OR {"task2" call BIS_fnc_taskState isEqualTo "FAILED"}) then {
	[PowerLine, "Störsender einbauen"] call compile preprocessFileLineNumbers "scripts\hacking.sqf"
};

// DAZ
if !("task0" call BIS_fnc_taskState isEqualTo "SUCCEEDED" OR {"task0" call BIS_fnc_taskState isEqualTo "FAILED"}) then {
	if !(isNil "s2") then {
		[Moni_1, selectRandom ["Sw0rdf15h", "SwOrdf1Sh"], s2, {["task0", "SUCCEEDED", false] remoteExec ["BIS_fnc_taskSetState", 2]; sleep 5; hintsilent "Die Daten sind gelöscht!"}] call DAZ_BCM_fnc_hack_courant_action
	} else {
		[Moni_1, selectRandom ["Sw0rdf15h", "SwOrdf1Sh"], objNull, {["task0", "SUCCEEDED", false] remoteExec ["BIS_fnc_taskSetState", 2]; sleep 5; hintsilent "Die Daten sind gelöscht!"}] call DAZ_BCM_fnc_hack_courant_action
	}
};

// Intro
if (!_didJIP) then {
	cutText ["","BLACK IN",15];
	sleep 5;
	[_player] spawn compile preprocessFileLineNumbers "scripts\introClient.sqf"
} else {
	cutText ["","BLACK IN",15];
	sleep 5;
	["Lost Leo", "20.03.2019", "Tanoa"] spawn BIS_fnc_infoText
}