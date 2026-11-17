params ["_player", "_didJIP"];

[_player] call compile preprocessFileLineNumbers "loadout_own.sqf";
call compile preprocessFileLineNumbers "briefing.sqf";
[teleport] call compile preprocessFileLineNumbers "fn_addTeleporter.sqf";

sleep 10;
[["Tanoa, Südpazifik"],
 ["Unmittelbar vor der Küste"],
 ["40 Meter unterhalb der Meeresoberfläche",2,1,4]]
 spawn BIS_fnc_EXP_camp_SITREP;