Params ["_player", "_didJIP"];
/// Client Scripte ///

if (hasinterface) then
{
	// Terrain
	setterraingrid 3.125;
	// Briefing
	[] call compile preprocessFileLineNumbers "briefing.sqf";
	/// Introscript
	["Operation Floppy Boobs", "by [=TSS=] joker7 and [77th AD] CHAOS", "Version 1.0", '"Für das Licht meines lebens."\n\n- joker7'] spawn compile preprocessFileLineNumbers "scripts\missionIntro.sqf";
	// HALO Script
	if !(_didJIP) then {
		[_player, 7000, false, false, true] spawn compile preprocessFileLineNumbers "scripts\fn_halo.sqf"
	}
};


//if !(_didJiP) then {
  // [_player] call compile preprocessFileLineNumbers "scripts\forHALO.sqf"
//};

