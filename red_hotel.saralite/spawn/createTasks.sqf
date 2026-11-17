["task_defence", west, ["Verteidigt euch.", "Verteidigen", "defend"], objNull, "Created", 8, false, true, "defend"] call BIS_fnc_setTask;
"Verteidigt Euch.\nFlieht nach Iguana wenn Ihr könnt." remoteExec ["hint", -2, false];
["task_flee", west, ["Flieht nach Iguana wenn ihr könnt.", "Fliehen", "run"], objNull, "Created", 7, false, true, "run"] call BIS_fnc_setTask;