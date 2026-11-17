{
	if (alive _x) then {deleteVehicle _x}
} foreach [trig_1, trig_2];
{
	[_x, trig_3, 30, true] call CBA_fnc_taskAttack
} foreach (Allgroups - [group hunt_1, group hunt_2]);

sleep 5;
[20, [loud_1, loud_2]] spawn compile preprocessFileLineNumbers "scripts\fn_AlarmSound.sqf";

sleep 120;
call compile preprocessFileLineNumbers "scripts\tankspawn.sqf"