["task0", east, ["Begeben Sie sich nach <marker name='Ziel_1'>Panochori</marker> und töten Sie den AAF Colonel.", "Colonel töten!", ""], objNull, "Created", 4] call BIS_fnc_setTask;
["task0", "kill"] call BIS_fnc_taskSetType;

["task1", east, ["Stehlen Sie den Munition-LKW und bringen Sie ihn anschließend in die Lagerhalle am <marker name='Ende'>Versteck</marker>!", "LKW stehlen!", ""], objNull, "Created", 3] call BIS_fnc_setTask;
["task1", "car"] call BIS_fnc_taskSetType;

nil