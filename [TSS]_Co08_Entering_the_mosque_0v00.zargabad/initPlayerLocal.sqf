Params ["_player", "_didJIP"];

doStop _player;

// Terrain
setterraingrid 3.125;

// Briefing
call compile preprocessFileLineNumbers "scripts\briefing.sqf";

// Teleport
[teleport] call compile preprocessFileLineNumbers "scripts\fn_addTeleporter.sqf";

// LAMBS don't shoot at "dead" - Thanks to chris
private _UnconsciousNotFiredUponEH = [
	"ace_unconscious",
	{
	    params ["_unit","_state"];
	    if (_state && isPlayer _unit) then {
	    	[_unit, true] remoteExec ["setCaptive", 0, true];
		} else {
			if (isPlayer _unit) then {
				[_unit, false] remoteExec ["setCaptive", 0, true];
	        };
	    };
	}
] call CBA_fnc_addEventHandler;

// Bewusstlose aus zerstörten Fahrzeugen (danke ACE/KAT/whatever ...)
["LandVehicle", "killed", {
    private _car = _this select 0;
    private _crew = crew _car;
	{
    	if (isPlayer _x && _x in _car) then {
    		[_x, _car, 5] remoteExecCall ["CBA_fnc_setPos", _x];
    	};
    } forEach _crew;
}, true, [], true] call CBA_fnc_addClassEventHandler;

// Loadouts
[_player] call compile preprocessFileLineNumbers "scripts\loadout_init.sqf";


// "Intro"
if !(_didJIP) then {
	cutText ["", "BLACK IN", 20];
	[{["Entering the mosque", "29.05.2008", "Zagarabad"] spawn BIS_fnc_infoText;}, [], 30] call CBA_fnc_waitAndExecute;
} else {
	cutText ["", "BLACK IN", 20];
	[_player, "respawn_guerrila", 2] call CBA_fnc_setPos;
	[{["Entering the mosque", "29.05.2008", "Zagarabad"] spawn BIS_fnc_infoText;}, [], 30] call CBA_fnc_waitAndExecute;
};