params ["_player", "_didJIP"];
[_player] call compile preprocessFileLineNumbers "loadout.sqf";

execVM "briefing.sqf";

sleep 5;
{
	_x say3D ["GEA_siren", 1000];
} forEach [siren_1, siren_2];

sleep 10;
[["Von Nationalisten besetzte Insel abseits des Festlandes",3,2],
 ["Bevorstehender Eingriff der 'Weltpolizei'",3,2]]
 spawn BIS_fnc_EXP_camp_SITREP;