Params ["_player", "_didJIP"];

/// Client Scripte ///
if (hasinterface) then {
	doStop _player;
	// Terrain
	setterraingrid 3.125;
	// Briefing
	[] call compile preprocessFileLineNumbers "briefing.sqf";

	if (!_didJIP) then {
		sleep 3;
		["Operation", "Hot Needle"] call BIS_fnc_infoText;
		sleep 1;
		["South Tanoa", "Bala Island"] call BIS_fnc_infoText;
		sleep 1;
		["", ""] call BIS_fnc_infoText;
		sleep 1;
		["Mission by", "=TSS= Para-Medic"] call BIS_fnc_infoText
	}
}