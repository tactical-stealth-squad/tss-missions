if (task_OP) then {["taskop1","Succeeded"] call BIS_fnc_taskSetState} else {["taskop1","failed"] call BIS_fnc_taskSetState};

if (!alive car_2) then {["task3","Succeeded"] call BIS_fnc_taskSetState} else {["task3","failed"] call BIS_fnc_taskSetState};

if ({!alive _x} count [b_target_1, b_target_2] == 2) then {["task2","Succeeded"] call BIS_fnc_taskSetState} else {["task2","failed"] call BIS_fnc_taskSetState};

if (!alive target_2) then {["task1","Succeeded"] call BIS_fnc_taskSetState} else {["task1","failed"] call BIS_fnc_taskSetState};

["task0","failed"] call BIS_fnc_taskSetState;
["task4","failed"] call BIS_fnc_taskSetState;

nil