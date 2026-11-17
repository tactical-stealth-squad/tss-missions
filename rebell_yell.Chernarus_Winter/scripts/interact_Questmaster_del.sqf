private _act_rep_devilsCastle = [
	"Bericht_devilsCastle",
	"Bericht Devils Castle",
	"",
	{
		Params ["_target", "_player", "_actionParams"];
		if !("Laptop_Unfolded" in (backpackItems _Player) or "Laptop_Unfolded" in (vestitems _Player)) then {
			hintsilent "Laut unseren Geheimdienstinformationen sollte sich ein Laptop in der Burgruine bzw. in deren Umgebung befinden! Haben Sie ihn dabei?!";
		} else {
			_player removeItemFromBackpack "Laptop_Unfolded";
			hintsilent "Gut gemacht! Unser IT-Spezialist wird hoffentlich den Laptop knacken! Ich werde mich bei Ihnen melden! Viel Erfolg weiterhin!";
			["IntelUpdate", []] call CBA_fnc_serverEvent;
		}
	},
	{"task4" call BIS_fnc_taskExists && !("task4" call BIS_fnc_taskCompleted)}
] call ace_interact_menu_fnc_createAction;
[QuestMaster, 0, ["ACE_MainActions"], _act_rep_devilsCastle] call ace_interact_menu_fnc_addActionToObject;

private _act_rep_pusta = [
	"Bericht_pusta",
	"Bericht Pusta",
	"",
	{
		Params ["_target", "_player", "_actionParams"];
		if (alive trg_reInf_Pusta or alive trg_reInf_PustaGrad) then {
			hintsilent "Waren Sie überhaupt in Pusta bzw. in dessen Umgebung (Flag nicht gesetzt)?!";
		} else {
			hintsilent "Gut gemacht! Wenn Sie nicht fündig geworden sind, suchen Sie die anderen Positionen ab! Viel Erfolg!";
			["pusta_del", []] call CBA_fnc_serverEvent;
		}
	},
	{"task5" call BIS_fnc_taskExists && !("task5" call BIS_fnc_taskCompleted)}
] call ace_interact_menu_fnc_createAction;
[QuestMaster, 0, ["ACE_MainActions"], _act_rep_pusta] call ace_interact_menu_fnc_addActionToObject;

private _act_rep_khelm = [
	"Bericht_Khelm",
	"Bericht Khelm",
	"",
	{
		Params ["_target", "_player", "_actionParams"];
		if (alive trg_reInf_khelm) then {
			hintsilent "Waren Sie überhaupt in Khelm bzw. in dessen Umgebung (Flag nicht gesetzt)?!";
		} else {
			hintsilent "Gut gemacht! Wenn Sie nicht fündig geworden sind, suchen Sie die anderen Positionen ab! Viel Erfolg!";
			["khelm_del", []] call CBA_fnc_serverEvent;
		}
	},
	{"task6" call BIS_fnc_taskExists && !("task6" call BIS_fnc_taskCompleted)}
] call ace_interact_menu_fnc_createAction;
[QuestMaster, 0, ["ACE_MainActions"], _act_rep_khelm] call ace_interact_menu_fnc_addActionToObject;

private _act_rep_rog = [
	"Bericht_rog",
	"Bericht Rog",
	"",
	{
		Params ["_target", "_player", "_actionParams"];
		if (alive trg_reInf_rog) then {
			hintsilent "Waren Sie überhaupt auf Rog bzw. in dessen Umgebung (Flag nicht gesetzt)?!";
		} else {
			hintsilent "Gut gemacht! Wenn Sie nicht fündig geworden sind, suchen Sie die anderen Positionen ab! Viel Erfolg!";
			["rog_del", []] call CBA_fnc_serverEvent;
		}
	},
	{"task7" call BIS_fnc_taskExists && !("task7" call BIS_fnc_taskCompleted)}
] call ace_interact_menu_fnc_createAction;
[QuestMaster, 0, ["ACE_MainActions"], _act_rep_rog] call ace_interact_menu_fnc_addActionToObject;

private _act_rep_pulkovo = [
	"Bericht_pulkovo",
	"Bericht Pulkovo",
	"",
	{
		Params ["_target", "_player", "_actionParams"];
		if (alive trg_reInf_pulkovo) then {
			hintsilent "Waren Sie überhaupt in Pulkovo bzw. in dessen Umgebung (Flag nicht gesetzt)?!";
		} else {
			hintsilent "Gut gemacht! Wenn Sie nicht fündig geworden sind, suchen Sie die anderen Positionen ab! Viel Erfolg!";
			["Pulkovo_del", []] call CBA_fnc_serverEvent;
		}
	},
	{"task8" call BIS_fnc_taskExists && !("task8" call BIS_fnc_taskCompleted)}
] call ace_interact_menu_fnc_createAction;
[QuestMaster, 0, ["ACE_MainActions"], _act_rep_pulkovo] call ace_interact_menu_fnc_addActionToObject;

private _act_rep_Vyshnoye = [
	"Bericht_Vyshnoye",
	"Bericht Vyshnoye",
	"",
	{
		Params ["_target", "_player", "_actionParams"];
		if (alive trg_reInf_Vyshnoye) then {
			hintsilent "Waren Sie überhaupt in Vyshnoye bzw. in dessen Umgebung (Flag nicht gesetzt)?!";
		} else {
			hintsilent "Gut gemacht! Wenn Sie nicht fündig geworden sind, suchen Sie die anderen Positionen ab! Viel Erfolg!";
			["Vyshnoye_del", []] call CBA_fnc_serverEvent;
		}
	},
	{"task9" call BIS_fnc_taskExists && !("task9" call BIS_fnc_taskCompleted)}
] call ace_interact_menu_fnc_createAction;
[QuestMaster, 0, ["ACE_MainActions"], _act_rep_Vyshnoye] call ace_interact_menu_fnc_addActionToObject;

nil