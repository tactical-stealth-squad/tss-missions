Params ["_player", "_didJIP"];

// Client Scripte
if (hasinterface) then {

	// "freeze" player
	doStop _player;

	// Terrain
	setterraingrid 3.125;

	// Briefing
	call compile preprocessFileLineNumbers "scripts\briefing.sqf";

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
	[ausruest_pio] call compile preprocessFileLineNumbers "scripts\loadouts\init_gear_pio.sqf";
	[ausruest_tank] call compile preprocessFileLineNumbers "scripts\loadouts\init_gear_crew.sqf";
	[ausruest_inf] call compile preprocessFileLineNumbers "scripts\loadouts\init_gear_inf.sqf";
	[ausruest_medic] call compile preprocessFileLineNumbers "scripts\loadouts\init_gear_medic.sqf";
	[ausruest_mortar] call compile preprocessFileLineNumbers "scripts\loadouts\init_gear_mortar.sqf";

	/// Teleport
	[teleport] call compile preprocessFileLineNumbers "scripts\fn_addTeleporter.sqf";

	/// Pics for laptops
	if (alive lap_HQ) then {
		lap_HQ setObjectTexture [1,"images\WinLogIn.jpg"];
	};

	if (alive lap_quarry) then {
		lap_quarry setObjectTexture [1,"images\porn.jpg"];
	};

	// Starting loadout
	_player setUnitLoadout [[],[],[],["U_B_CombatUniform_vest_mcam_wdl_f",[["ACE_adenosine",1],["ACE_elasticBandage",5],["ACE_quikclot",5],["ACE_CableTie",1],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",2],["ACRE_PRC148",1]]],[],[],"H_Cap_blk","",["","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];

	// Intro
	if (!_didJIP) then {
		cutText ["","BLACK IN",2];
		[_player] spawn compile preprocessFileLineNumbers "scripts\introClient.sqf";
	} else {
		cutText ["","BLACK",12];
		["Free Livonia", "24. Juni 2024", "Mission by zinki"] spawn BIS_fnc_infoText;
		sleep 7;
		titleText ["Viel Erfolg!", "PLAIN"];
		sleep 5;
		cutText ["","BLACK IN",15];
	};
};