Params ["_player", "_didJIP"];

/// Client Scripte ///
if (hasinterface) then
{
	// Terrain
	setterraingrid 3.125;
	// Briefing
	[] call compile preprocessFileLineNumbers "briefing.sqf";
	// Introscript
	["Co30 Op Into the smoking Glen", "by [=TSS=] joker7", "Version 1.0", '"– Warfighting, S. 73."'] spawn compile preprocessFileLineNumbers "scripts\missionIntro.sqf";

};