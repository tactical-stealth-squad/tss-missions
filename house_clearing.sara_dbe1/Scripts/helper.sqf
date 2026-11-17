{_x enableAI "Path"} foreach units group defend_1;
{_x enableAI "Path"} foreach units group defend_2;
{_x enableAI "Path"} foreach units group defend_3;

[
	{
		[defend_1, defend_1, 10, 5, false, true] call CBA_fnc_taskDefend;
		[defend_2, defend_2, 20, 5, false, true] call CBA_fnc_taskDefend;
		[defend_3, defend_3, 15, 5, false, true] call CBA_fnc_taskDefend;
	},
	[
	],
	20
] call CBA_fnc_waitAndExecute;