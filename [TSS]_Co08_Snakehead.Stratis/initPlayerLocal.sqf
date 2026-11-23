Params ["_player", "_didJIP"];

/// Client Scripte ///
if (hasinterface) then {

	doStop _player;

	// Terrain
	setterraingrid 3.125;

	// Briefing
	call compile preprocessFileLineNumbers "scripts\briefing.sqf";

	// talk informant
	call compile preprocessFileLineNumbers "scripts\informant_talk.sqf";

	// Loadouts
	[_player] call compile preprocessFileLineNumbers "scripts\loadout_init.sqf";

	/// Teleport
	[teleport] call compile preprocessFileLineNumbers "scripts\fn_addTeleporter.sqf";

	[PowerLine, "Stromversorgung kappen"] call compile preprocessFileLineNumbers "scripts\holdAction_Manipulation.sqf";

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

	// Intro
	cutText ["","BLACK IN",15];
	sleep 5;
	["Snakehead", "06.07.2018", "Stratis"] spawn BIS_fnc_infoText;

	if (_didJIP) then {
		_player setPos getMarkerpos "respawn_west";
		cutText ["","BLACK IN",15];
		sleep 5;
		["Snakehead", "06.07.2018", "Stratis"] spawn BIS_fnc_infoText;
	};

};