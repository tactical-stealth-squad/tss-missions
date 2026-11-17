Params ["_player", "_didJIP"];
/// Client Scripte ///
if (hasinterface) then
{
	// Terrain
	setterraingrid 3.125;
	// Briefing
	[] call compile preprocessFileLineNumbers "briefing.sqf";
	/// Introscript
	["Operation Free Porto", "by [=TSS=] joker7", "Version 1.0", '"Gebaut auf Vorlage von MarkusA380."\n\n- joker7'] spawn compile preprocessFileLineNumbers "scripts\missionIntro.sqf";
};