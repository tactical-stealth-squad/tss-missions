Params ["_player", "_didJIP"];

/// Ausschluss des HCs ///
if (hasinterface) then {

	doStop _player;

	// Terrain
	setterraingrid 3.125;

	// Briefing
	call compile preprocessFileLineNumbers "scripts\briefing.sqf";

	// Loadouts
	[_player] call compile preprocessFileLineNumbers "scripts\loadout_init.sqf";

	/// Teleport
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
	{
		[_x, "killed", {
		    private _car = _this select 0;
		    private _crew = crew _car;
		    {
		    	if (isPlayer _x && _x in _car) then {
		    		[_x, _car, 5] remoteExecCall ["CBA_fnc_setPos", _x];
		    	};
		    } forEach _crew;
		}, true, [], true] call CBA_fnc_addClassEventHandler;
	} foreach ["LandVehicle", "air"];


	// Funkturm mainipulieren
	//if !("task2" call BIS_fnc_taskState isEqualTo "SUCCEEDED" OR {"task2" call BIS_fnc_taskState isEqualTo "FAILED"}) then {
		[PC_target, "Funk hacken"] call compile preprocessFileLineNumbers "scripts\hacking.sqf";
	//};

	// Intro
	if (!_didJIP) then {
		cutText ["","BLACK IN",20];
		sleep 5;
		[_player] spawn compile preprocessFileLineNumbers "scripts\introClient.sqf";
	} else {
		cutText ["","BLACK IN",15];
		sleep 5;
		["Get to the chopper", "28.01.2013", "Stratis"] spawn BIS_fnc_infoText;
	};

};