{
	if !(_x checkAIFeature "PATH") then {_x enableAI "PATH"};
	_x call CBA_fnc_clearWaypoints;
	[_x] call lambs_wp_fnc_taskReset;
	[_x, 1500] spawn lambs_wp_fnc_taskRush
} foreach (units independent)