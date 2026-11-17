Params ["_player", "_didJIP"];

// Ausschluss des HCs
if (!hasinterface) exitWith {};

// Terrain
setterraingrid 3.125;

// Briefing
call compile preprocessFileLineNumbers "scripts\briefing.sqf";

// Teleport
[teleport] call compile preprocessFileLineNumbers "scripts\fn_addTeleporter.sqf";

// Intel Konvoi
if !("task4" call BIS_fnc_taskExists) then {
	// Optional scripted event handlers
	// Has to be local to every client! BISwiki is wrong in his example
	// Add intel object scripted event that systemchats to all clients when found and by who
	[
		intel_Konvoi,
		"IntelObjectFound",
		{
			params["_object", "_foundBy" ];
			{_x setMarkerAlpha 1;} foreach ["mrk_devilsCastle", "mrk_pusta"];
			["TaskUpdate", []] call CBA_fnc_serverEvent
		}
	] call BIS_fnc_addScriptedEventHandler;
};

call compile preprocessFileLineNumbers "scripts\interact_Questmaster_del.sqf";

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

/*
// KAT Pneumothorax (et al) Sound Indication
if !(isNil "kat_airway_Accuvac_time") then {
	private _handle = [
	    {
	        _this params ["_argsArray", "_handleNumber"];
			_argsArray params ["_spieler"];
	        if ((_spieler getVariable ["kat_breathing_pneumothorax", false]) || {(_spieler getVariable ["kat_breathing_hemopneumothorax", false]) || {(_spieler getVariable ["kat_breathing_tensionpneumothorax", false])}}) then {
	            playSound "tension_lungs";
	        };
	    },
	    10,
	    [_player]
	] call CBA_fnc_addPerFrameHandler;
};
*/

// Fingerweg von der Pilotenkiste
{
	_x addEventHandler [
		"ContainerOpened",
		{
			params ["_container", "_unit"];
			if !(typeOf _unit isEqualTo "B_Pilot_F") then {
				_unit action ["CancelAction", _unit];
				Hint "Finger weg! Die Kiste ist nur für die Helikoptercrew!";
			};
		}
	];
} foreach [box_pilots_1, box_pilots_2];

// Loadouts
[_player] call compile preprocessFileLineNumbers "scripts\loadout_init.sqf";

// repair heli - SLG and full (ace interact)
[b_heli, 0] call compile preprocessFileLineNumbers "scripts\interact_repair_heli.sqf";

// Piloten sollen Ihre Kiste wegbringen
if (typeOf _player isEqualTo "B_Pilot_F") then {
	[
		{
			(_this select 0) distance2D Ausruester < 2
		},
		{
			hint "Ich habe Ihnen extra die graue Kiste hier auf dem Tisch zurecht gemacht! Bringen Sie diese bitte in Ihre Barracke, da die Ausrüstung nur für Sie Piloten ist! Vielen Dank.";
		},
		[_player]
	] call CBA_fnc_waitUntilAndExecute;
};

[{medic_moni setObjectTexture [0, "img\porn.jpg"];}, [], 30] call CBA_fnc_waitAndExecute;

// Spieler anfangs im Fahrzeug bzw. an der Base (Piloten)
if !(_didJIP) then {
	//private _introHandle = [] spawn compile preprocessFileLineNumbers "scripts\introclient.sqf";
} else {
	cutText ["", "BLACK IN", 20];
	[_player, "respawn_west", 2] call CBA_fnc_setPos;
	[{["Rebell Yell", "28.01.2008", "Chernarus"] spawn BIS_fnc_infoText;}, [], 30] call CBA_fnc_waitAndExecute;
};