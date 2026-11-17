["task0", west, ["Treffen Sie sich mit dem Informanten.", "Informanten finden!", ""], objNull, "Created", 4] call BIS_fnc_setTask;
["task0", "meet"] call BIS_fnc_taskSetType;

["task2", west, ["Töten Sie den abtrünnigen Colonel.", "Colonel töten!", ""], objNull, "Created", 3] call BIS_fnc_setTask;
["task2", "kill"] call BIS_fnc_taskSetType;

["task1", west, ["Zerstören Sie die gestohlenen Kisten sowie die Boote der Piraten.", "Ausrüstung zerstören!", ""], objNull, "Created", 2] call BIS_fnc_setTask;
["task1", "destroy"] call BIS_fnc_taskSetType;

["task3", west, ["Exfiltrieren Sie über Largo aufs offene Meer.", "Exfiltrieren!", ""], objNull, "Created", 1] call BIS_fnc_setTask;
["task3", "exit"] call BIS_fnc_taskSetType;

nil