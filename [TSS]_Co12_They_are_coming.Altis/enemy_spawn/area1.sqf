if (!isServer) exitWith {};

private _pos = "area1";
private _civs = ["C_man_1_2_F","C_man_1_3_F","C_man_polo_2_F","C_man_polo_3_F","C_man_polo_4_F","C_man_polo_5_F","C_man_polo_6_F"];

for "_x" from 1 to 20 do {
	private _grp_array = [];
	private _the_civ = selectrandom _civs;
	_grp_array set [count _grp_array, _the_civ];
	private _grp1  = [[_pos, 50] call CBA_fnc_randPos, WEST, _grp_array] call BIS_fnc_spawnGroup;
	{_x setskill 0} foreach units _grp1;
	[_grp1, _pos, "SAFE", "RED", "Normal"] call CBA_fnc_taskSearchArea;
	sleep 1
}