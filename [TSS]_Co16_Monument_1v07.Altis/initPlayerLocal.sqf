Params ["_player", "_didJIP"];

if (!hasInterface) exitwith {};

/// Briefing ///
[] call compile preprocessFileLineNumbers "scripts\briefing.sqf";

if (!_didJIP) then {
	//
	sleep 2;
	["Altis 2020", ""] call BIS_fnc_infoText;
	sleep 2;
	["Therisa", "AIRFILD - NATO/US"] call BIS_fnc_infoText;
	sleep 2;
	["MONUMENT"] call BIS_fnc_infoText;
	sleep 2;
	["by Paul G. edit by zinki"] call BIS_fnc_infoText;
};

// AnimWechsel
waitUntil {sleep 2; time > 2};
{_x switchMove "Acts_AidlPsitMstpSsurWnonDnon_loop"} foreach [general_1, general_2, general_3];