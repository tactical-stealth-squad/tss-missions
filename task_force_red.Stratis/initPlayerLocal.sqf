Params ["_player", "_didJIP"];

/// Client Scripte ///
if (hasinterface) then {
	doStop _player;
	// Terrain
	setterraingrid 3.125;
	// Briefing
	[] spawn compile preprocessFileLineNumbers "scripts\briefing.sqf";
	// Hacking
	[laptop] call compile preprocessFileLineNumbers "scripts\hacking.sqf"
};

{_x setMarkerAlphaLocal 0} foreach ["AO" ,"AO_2", "AO_3", "AO_4"];