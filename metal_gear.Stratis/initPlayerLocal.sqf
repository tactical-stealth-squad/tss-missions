Params ["_player", "_didJIP"];

/// Client Scripte ///
if (hasinterface) then {
	doStop _player;
	// Terrain
	setterraingrid 3.125;
	// Briefing
	[] call compile preprocessFileLineNumbers "scripts\briefing.sqf";
	//
	if (!_didJIP) then {
		// HALO
		[_player, 3500, false, false, true] call compile preprocessFileLineNumbers "scripts\fn_halo.sqf";
		// Intro music
		playmusic "music_intro"
	}
}