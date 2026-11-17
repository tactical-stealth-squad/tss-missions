private _id_intelUpdate = [
	"IntelUpdate",
	{
		[_thisType, _thisId] call CBA_fnc_removeEventHandler;
		[] spawn {
			["mrk_konvoi", 1000] spawn objects_delete;
			sleep 1;
			["mrk_DevilsCastle", 1000] spawn objects_delete;
			{
				if (_x inArea "mrk_del_konvoi" OR _x inArea "mrk_del_devilsCastle") then {
					deleteVehicle _x;
				};
			} foreach AllMissionObjects "";
		};
		["task4", "SUCCEEDED", false] call BIS_fnc_taskSetState;
		[] spawn {
			sleep 600 + random 120;
			"Hier IGOR: Wir konnten den Laptop knacken! Der Laptop enthielt weitere Standorte! Diese sind die Burg Rog sowie die Dörfer Pulkovo, Khelm und Vyshnoye! Machen Sie sich auf die Suche! Viel Erfolg!" remoteExecCall ["hint", 0];
			{_x setMarkerAlpha 1;} foreach ["mrk_Khelm", "mrk_rog", "mrk_pulkovo", "mrk_Vyshnoye"];
			["task6", west, ["Suchen Sie um das Dorf Khelm nach Hinweisen zum GRAD!<br/>Den Aufzeichnung zur Folge soll es abgeschiedenes Haus außerhalb von Khelm sein!<br/><br/>Kehren Sie anschließend zum HQ zurück und erstatten Sie IVAN Bericht!", "NEW: Khelm!", ""], getMarkerPos "mrk_Khelm", "Created", 8, false, true, "search"] call BIS_fnc_setTask;
			["task7", west, ["Suchen Sie in der Burgruine ROG nach Hinweisen zum GRAD!<br/><br/>Kehren Sie anschließend zum HQ zurück und erstatten Sie IVAN Bericht!", "NEW: Rog!", ""], getMarkerPos "mrk_rog", "Created", 9, false, true, "search"] call BIS_fnc_setTask;
			["task8", west, ["Suchen Sie um das Dorf Pulkovo nach Hinweisen zum GRAD!<br/>Den Aufzeichnung zu Folge soll es eine abgeschiedene Lichtung außerhalb von Pulkovo sein! Die Karte auf dem Laptop zeigt auf 046/057 ein Abzweig auf einen Feldweg, der auf unseren Karten nicht eingezeichnet ist!<br/><br/>Kehren Sie anschließend zum HQ zurück und erstatten Sie IVAN Bericht!", "NEW: Pulkovo!", ""], getMarkerPos "mrk_pulkovo", "Created", 10, false, true, "search"] call BIS_fnc_setTask;
			["task9", west, ["Suchen Sie im Dorf Vyshnoye nach einer markanten Scheune Hinweisen zum GRAD!<br/><br/>Kehren Sie anschließend zum HQ zurück und erstatten Sie IVAN Bericht!", "NEW: Vyshnoye!", ""], getMarkerPos "mrk_Vyshnoye", "Created", 11, false, true, "search"] call BIS_fnc_setTask;
			["Bericht_Del", [], (Allplayers - entities "HeadlessClient_F")] call CBA_fnc_targetEvent;
		}
	}
] call CBA_fnc_addEventHandlerArgs;

private _id_Pusta_del = [
	"pusta_del",
	{
		[_thisType, _thisId] call CBA_fnc_removeEventHandler;
		["mrk_pusta", 1000] spawn objects_delete;
		{deleteVehicle _x} foreach [attach1_pusta_car, attach2_pusta_car];
		["task5", "SUCCEEDED", false] call BIS_fnc_taskSetState;
	}
] call CBA_fnc_addEventHandlerArgs;

private _id_khlem_del = [
	"khelm_del",
	{
		[_thisType, _thisId] call CBA_fnc_removeEventHandler;
		[] spawn {
			["mrk_khelm", 1500] spawn objects_delete;
			sleep 1;
			{
				if (_x inArea "mrk_del_khelm") then {
					deleteVehicle _x;
				};
			} foreach AllMissionObjects "";
		};
		["task6", "SUCCEEDED", false] call BIS_fnc_taskSetState;
	}
] call CBA_fnc_addEventHandlerArgs;

private _id_pulkovo_del = [
	"pulkovo_del",
	{
		[_thisType, _thisId] call CBA_fnc_removeEventHandler;
		["mrk_pulkovo", 1000] spawn objects_delete;
		{deleteVehicle _x} foreach [attach1_wood_car2, attach1_wood_car1, attach2_wood_car1];
		["task8", "SUCCEEDED", false] call BIS_fnc_taskSetState;
	}
] call CBA_fnc_addEventHandlerArgs;

private _id_rog_del = [
	"rog_del",
	{
		[_thisType, _thisId] call CBA_fnc_removeEventHandler;
		["mrk_rog", 1000] spawn objects_delete;
		["task7", "SUCCEEDED", false] call BIS_fnc_taskSetState;
	}
] call CBA_fnc_addEventHandlerArgs;

private _id_Vyshnoye_del = [
	"Vyshnoye_del",
	{
		[_thisType, _thisId] call CBA_fnc_removeEventHandler;
		["mrk_Vyshnoye", 1000] spawn objects_delete;
		["task9", "SUCCEEDED", false] call BIS_fnc_taskSetState;
	}
] call CBA_fnc_addEventHandlerArgs;

nil