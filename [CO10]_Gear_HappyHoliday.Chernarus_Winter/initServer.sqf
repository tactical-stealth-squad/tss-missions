GEA_fnc_loadout = compile preprocessFileLineNumbers "loadout.sqf";
//call compile preprocessFile "loadout_cars.sqf";

["SoldierWB", "init", {call GEA_fnc_loadout}, true, [], true] call CBA_fnc_addClassEventHandler;

call compile preprocessFile "talk_pat.sqf";

//Disable LAMBS and enable VCOM
remoteExec ["VCM_fnc_VcomInit", 0];
{_x setVariable ["lambs_danger_disableAI", true]} forEach (units west)