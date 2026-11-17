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


	// Intro & Halo
	if !(_didJip) then {
		[_player, "halo_start", 150] call CBA_fnc_setPos;
		[_player, 3000, false, false, true] call compile preprocessFileLineNumbers "scripts\fn_HALO.sqf";
		["Pirate Assault", "by [=TSS=] joker7 changed by zinki", "Version 0.01", '"Gebaut auf Vorlage von MarkusA380."\n\n- joker7 changed by zinki'] spawn compile preprocessFileLineNumbers "scripts\missionIntro.sqf"
	} else {
		["Pirate Assault", "by [=TSS=] joker7 changed by zinki", "Version 0.01", '"Gebaut auf Vorlage von MarkusA380."\n\n- joker7 changed by zinki'] spawn compile preprocessFileLineNumbers "scripts\missionIntro.sqf"
	};
};