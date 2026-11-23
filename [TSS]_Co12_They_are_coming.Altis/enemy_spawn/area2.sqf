if (!isServer) exitWith {};

private _pos = "area2";
private _no_nvg = true;
private _no_helmet = false;

private _civs = ["C_man_1_2_F","C_man_1_3_F","C_man_polo_2_F","C_man_polo_3_F","C_man_polo_4_F","C_man_polo_5_F","C_man_polo_6_F"];

for "_x" from 1 to 20 do {
	private _grp_array = [];
	private _the_civ = selectrandom _civs;
	_grp_array set [count _grp_array, _the_civ];
	private _grp1  = [[_pos, 200] call CBA_fnc_randPos, WEST, _grp_array] call BIS_fnc_spawnGroup;
	{_x setskill 0} foreach units _grp1;
	[_grp1, _pos, "SAFE", "RED", "Normal"] call CBA_fnc_taskSearchArea;
	sleep 1
};

for "_x" from 1 to 2 do {
	private _type = selectrandom ["small","FT"];
	private _grp_array = [_type] call fnc_random_grp_o_csat;
	private _grp1  = [[_pos, 250] call CBA_fnc_randPos, EAST, _grp_array] call BIS_fnc_spawnGroup;
	if (_no_nvg) then {{_x unassignItem "NVGoggles_OPFOR"; _x removeItem "NVGoggles_OPFOR"; _x addPrimaryWeaponItem "acc_flashlight"} foreach units _grp1};
	if (_no_helmet) then {{removeHeadgear _x} foreach units _grp1};
	[_grp1, _pos, "SAFE", "RED", "Normal"] call CBA_fnc_taskSearchArea;
	sleep 3
};

for "_x" from 1 to 2 do {
	private _type = selectrandom ["small","FT"];
	private _grp_array = [_type] call fnc_random_grp_o_csat;
	private _grp1  = [[_pos, 250] call CBA_fnc_randPos, EAST, _grp_array] call BIS_fnc_spawnGroup;
	if (_no_nvg) then {{_x unassignItem "NVGoggles_OPFOR"; _x removeItem "NVGoggles_OPFOR"; _x addPrimaryWeaponItem "acc_flashlight"} foreach units _grp1};
	if (_no_helmet) then {{removeHeadgear _x} foreach units _grp1};
	[_grp1, _pos, "SAFE", "YELLOW", "Normal"] call CBA_fnc_taskSearchArea;
	sleep 3
}