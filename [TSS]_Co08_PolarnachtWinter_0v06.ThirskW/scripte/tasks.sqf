["zielOP", west, ["OPTIONAL: Radar zerstören!", "OPTIONAL: Zerstören Sie das Radar!", ""], objNull, "Created", 1, false, true, "destroy"] call BIS_fnc_setTask;
["Ziel2", west, ["Aufnahmepunkt erreichen!", "Erreichen Sie den Aufnahmepunkt!", ""], getMarkerPos "aufnahme", "Created", 2, false, true, "exit"] call BIS_fnc_setTask;
["Ziel1", west, ["Luftabwehr zerstören!", "Zerstören Sie die Luftabwehr!", ""], objNull, "Created", 3, false, true, "destroy"] call BIS_fnc_setTask;

nil