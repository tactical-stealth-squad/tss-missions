["task1", east, ["Manipulieren sie die <font color='#ff0000'><marker name = ""target_1"">Stromversorgung</marker></font>, damit der Feind keine Verstärkung rufen können!", "Stromversorgung manipulieren!", ""], objNull, true, 3] call BIS_fnc_setTask;
["task1", "use"] call BIS_fnc_taskSetType;

["task2", east, ["Befreien sie die Geisel! Diese befinden sich im <font color='#ff0000'><marker name = ""target_2"">Militärcompound</marker></font>!", "Geisel befreien!", ""], objNull, "Created", 2] call BIS_fnc_setTask;
["task2", "interact"] call BIS_fnc_taskSetType;

["task3", east, ["Exfil mit der Geisel!", "Exfil!", ""], objNull, "Created", 1] call BIS_fnc_setTask;
["task3","run"] call BIS_fnc_taskSetType;

nil