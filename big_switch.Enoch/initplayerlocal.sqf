Params ["_player", "_didJIP"];

// Client Scripte
if (hasinterface) then {

	// "freeze" player
	doStop _player;

	// Terrain
	setterraingrid 3.125;

	// Briefing
    call compile preprocessFileLineNumbers "scripts\briefing.sqf";


    if !(hacked) then {
        [Computer2, "Störsender einbauen"] call compile preprocessFileLineNumbers "scripts\hacking.sqf";
    };
    if !(start) then {
        [Computer, "Download Data"] call compile preprocessFileLineNumbers "scripts\download.sqf";
    };

	/// Teleport
	[teleporter] call compile preprocessFileLineNumbers "scripts\fn_addTeleporter.sqf";

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

};