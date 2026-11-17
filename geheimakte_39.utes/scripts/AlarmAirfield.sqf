[70, [lamp_1, lamp_4]] spawn compile preprocessFileLineNumbers "scripts\fn_AlarmSound.sqf";

{
	if (_x distance2D attack_second < 550) then {
		[_x, getMarkerPos "z3", 50, true] call CBA_fnc_taskAttack;
	};
} foreach (units east);

nil