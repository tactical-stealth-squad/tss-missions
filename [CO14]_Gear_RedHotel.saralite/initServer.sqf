GEA_fnc_loadout = compile preprocessFileLineNumbers "loadout.sqf";
TOP_fnc_housePatrol = compile preprocessFileLineNumbers "spawn\HousePatrol.sqf";
GEA_fnc_reeinforce = compile preprocessFileLineNumbers "spawn\Russland_Patrol.sqf";
GEA_fnc_hind = compile preprocessFileLineNumbers "spawn\hind.sqf";

["SoldierWB", "init", {call GEA_fnc_loadout}, true, [], true] call CBA_fnc_addClassEventHandler;

["task_hotel", west, ["Erobert das Hotel vom Feind zurück.", "Hotel", ""], objNull, "Created", 1, false, true, "attack"] call BIS_fnc_setTask;
["task_general", west, ["Tötet den feindlichen General.", "General!", ""], objNull, "Created", 2, false, true, "kill"] call BIS_fnc_setTask;

{
	[_x] spawn TOP_fnc_housePatrol;
} forEach [sl_1,sl_2,rfl_1,rfl_2,rfl_3,rfl_4,ar_1,ar_2,mg_1,mg_2,mg_3,gre_1,gre_2,gre_3,gre_4,gre_5,gre_6,gre_7,lat_1,lat_2,rpg_1,rpg_2,svd_1,svd_2];