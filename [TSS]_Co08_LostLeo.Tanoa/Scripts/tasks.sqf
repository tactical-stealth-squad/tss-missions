/// Task new
["task0", east, ["Löschen Sie die Daten vom Server! Dieser befindet sich beim <font color='#ff0000'><marker name = ""target_1"">Funkturm</marker></font>.", "Daten löschen!", ""], objNull, "Created", 1] call BIS_fnc_setTask;
["task0", "download"] call BIS_fnc_taskSetType;

["task1", east, ["Finden Sie die Überreste der Panzer und zerstören Sie alle Container, LKWs und sonstige Ausrüstung! Die Werkstatt befindet sich in <font color='#ff0000'><marker name = ""target_3"">Tavu</marker></font> bzw. dessen Umland.", "Panzerüberreste finden und zerstören!", ""], objNull, "Created", 2] call BIS_fnc_setTask;
["task1", "destroy"] call BIS_fnc_taskSetType;

["task2", east, ["Optional: Manipulieren Sie die <font color='#ffb300'><marker name = ""target_2"">Stromleitung</marker></font>, damit keine Verstärkung gerufen werden kann!", "Stromleitung manipulieren", ""], objNull, "Created", 5] call BIS_fnc_setTask;
["task2","use"] call BIS_fnc_taskSetType;

nil