Params ["_player", "_didJIP"];

/// Client Scripte ///
if (hasinterface) then {

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

	// AA Stellung
	intel_AA setObjectTexture [0, "img\AA.jpg"];
	intel_AA addaction ["Bild näher betrachten", {
			hintsilent "Das Bild zeigt den möglichen Standort der AA-Stellung (wird auf Karte lokal markiert).";
			"mrk_ziel_4_1" setMarkerAlpha 1;
			"mrk_ziel_4_2" setMarkerAlpha 0.5;
			if (entities [["HeadlessClient_F"], [], false, true] isNotEqualTo []) then {
				remoteExec ["spawn_AA_group", owner HC1];
			} else {
				remoteExec ["spawn_AA_group", 2];
			};
	}, nil, 1.5, true, true, "", "markerAlpha ""mrk_ziel_4_2"" == 0", 2];

    // Loadouts
	[_player] call compile preprocessFileLineNumbers "scripts\loadout_init.sqf";

	//
	conv_1 addaction ["<t color='#ff8133'>Losfahren!</t>", {conv_start = true; publicVariableServer "conv_start"}, nil, 1.5, true, true, "", "isNil 'conv_start'", 2];
	_player addEventHandler ["HandleRating", {params ["_unit", "_rating"]; if ((rating _unit) < 0) then {_unit addrating (0 - rating _unit);};}];

	// "Intro"
	if !(_didJIP) then {
		cutText ["", "BLACK IN", 20];
		[{["Der Hexenkessel", "15.09.2005", "Fallujah"] spawn BIS_fnc_infoText;}, [], 30] call CBA_fnc_waitAndExecute;
	} else {
		cutText ["", "BLACK IN", 20];
		[_player, "respawn_west", 2] call CBA_fnc_setPos;
		[{["Der Hexenkessel", "15.09.2005", "Fallujah"] spawn BIS_fnc_infoText;}, [], 30] call CBA_fnc_waitAndExecute;
	};
};