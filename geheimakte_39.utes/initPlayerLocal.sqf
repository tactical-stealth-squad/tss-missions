Params ["_player", "_didJIP"];

// Client Scripte
if (hasinterface) then {

	// "freeze" player
	doStop _player;

	// Terrain
	setterraingrid 3.125;

	// Briefing
	call compile preprocessFileLineNumbers "scripts\briefing.sqf";

	// Loadouts
	[_player] call compile preprocessFileLineNumbers "scripts\loadout_init.sqf";

	// Intel
	if (markerAlpha "z3" == 0) then {
		{
			[
				_x,
				"IntelObjectFound",
				{
					params["_object", "_foundBy" ];
					"z3" setmarkerAlpha 1;
					["task2", west, ["Zerstören Sie den Prototypen. Dieser befindet sich wahrscheinlich in einerm der Hanger auf dem <font color='#ff0000'><marker name = z3>Flughafen</marker></font>!", "Prototyp zerstören!", ""], getMarkerPos "z3", "Created", 2, false, true, "destroy"] remoteExecCall ["BIS_fnc_setTask", 2];
					["task0", "Succeeded", false] remoteExeccall ["BIS_fnc_taskSetState", 2]
				}
			] call BIS_fnc_addScriptedEventHandler;
		} foreach [task_1, task_1_1];
	};

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

	// Intro
	cutText ["","BLACK IN",7];
	if !(_didJip) then {
		sleep 5;
		[_player] spawn compile preprocessFileLineNumbers "scripts\introClient.sqf";
	} else {
		sleep 5;
		[str("Geheimakte 39") , str(14) + "." + str(10) + "." + str(2012), str("Utes")] spawn BIS_fnc_infoText;
	};

};