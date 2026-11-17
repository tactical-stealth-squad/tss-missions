[Mortar1, [forMortar, "z4"], 1, 20, 4, 50, true] call compile preprocessFileLineNumbers "scripts\fn_mortar_pfh.sqf";

[3, [laud_1, laud_3]] spawn compile preprocessFileLineNumbers "scripts\fn_AlarmSound.sqf";

{
	if !(_x checkAIFeature "PATH") then {_x enableAI "PATH"};
	[_x, forMortar, 50, true] call CBA_fnc_taskAttack;
} foreach ((units east) - (units mortar1));

nil