private _id_taskUpdate = [
	"TaskUpdate",
	{
		[_thisType, _thisId] call CBA_fnc_removeEventHandler;
		["task2", "SUCCEEDED", false] call BIS_fnc_taskSetState;
		["task5", west, ["Suchen Sie in der alten Polizeistation in Mitten von Pusta nach Hinweisen zum GRAD!<br/><br/>Kehren Sie anschließend zum HQ zurück und erstatten Sie IVAN Bericht!", "NEW: Pusta!", ""], getMarkerPos "mrk_pusta", "Created", 5, false, true, "search"] call BIS_fnc_setTask;
		["task4", west, ["Suchen Sie in der Burgrunie Devils Castle nach Hinweisen zum GRAD!<br/><br/>Kehren Sie anschließend zum HQ zurück und erstatten Sie IVAN Bericht!", "NEW: Devils Castle!", ""], getMarkerPos "mrk_devilsCastle", "Created", 6, false, true, "search"] call BIS_fnc_setTask;
		["task3", west, ["Verteidigen Sie die Position des Konvois bis SPUTNIK mit dem Heli eintrifft!", "NEW: Position verteidigen!", ""], objNull, "Created", 7, false, true, "defend"] call BIS_fnc_setTask;
	}
] call CBA_fnc_addEventHandlerArgs;

nil