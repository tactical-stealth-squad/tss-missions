Params ["_player", "_didJIP"];

/// Client Scripte ///
if (hasinterface) then
{
	// Terrain
	setterraingrid 3.125;
	// Briefing
	[] call compile preprocessFileLineNumbers "briefing.sqf";
	// Introscript
	["Co04-11 Op Stand your Ground!", "by [=TSS=] joker7", "Version 1.0", '"We gotta get out of here!"\n\n- "Stand your Ground, Brother!"'] spawn compile preprocessFileLineNumbers "scripts\missionIntro.sqf";

};