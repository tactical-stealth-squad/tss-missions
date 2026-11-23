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

	// AA Stellung
	intel_AA setObjectTexture [0, "img\AA.jpg"];
	intel_AA addaction ["Bild näher betrachten", {hintsilent "Das Bild zeigt den möglichen Standort der AA-Stellung (wird auf Karte lokal markiert)."; "mrk_ziel_4_1" setMarkerAlpha 1; "mrk_ziel_4_2" setMarkerAlpha 0.5}, nil, 1.5, true, true, "", "
    markerAlpha ""mrk_ziel_4_2"" == 0", 2];

    // warlord untersuchen/erkennen
    warlord addaction ["Leiche untersuchen", {hintsilent "Das scheint Kalil zu sein.";}, nil, 1.5, true, true, "", "
    !alive warlord", 2];

	// Loadouts
	[_player] call compile preprocessFileLineNumbers "scripts\loadout_init.sqf";

	if !(_didJIP) then {
		//private _introHandle = [] spawn compile preprocessFileLineNumbers "scripts\introclient.sqf";
		cutText ["", "BLACK IN", 20];
		[{["", "15.09.2005", "Fallujah"] spawn BIS_fnc_infoText;}, [], 30] call CBA_fnc_waitAndExecute;
	} else {
		cutText ["", "BLACK IN", 20];
		[_player, "respawn_west", 2] call CBA_fnc_setPos;
		[{["", "15.09.2005", "Fallujah"] spawn BIS_fnc_infoText;}, [], 30] call CBA_fnc_waitAndExecute;
	};
};