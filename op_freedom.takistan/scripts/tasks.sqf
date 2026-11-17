["task0", west, ["Klären Sie das <marker name = ""marker_125"">Dorf Nagara</marker> und suchen Sie nach den <marker name = ""marker_147"">Intel-Files</marker>.", "Intel finden!", ""], objNull, "Created", 2] call BIS_fnc_setTask;
["task0", "documents"] call BIS_fnc_taskSetType;

["task2", west, ["Finden und exfiltrieren Sie den gefangenen Dorfältesten.", "Dorfältesten retten!", ""], objNull, "Created", 1] call BIS_fnc_setTask;
["task2", "search"] call BIS_fnc_taskSetType;

["task1", west, ["Suchen Sie im <marker name = ""marker_71"">Operationsraum Hotel</marker> nach möglichen Stellungen und zerstören Sie diese.", "Stellungen suchen und zerstören!", ""], objNull, "Created", 0] call BIS_fnc_setTask;
["task1", "destroy"] call BIS_fnc_taskSetType;

nil