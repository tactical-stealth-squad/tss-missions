if (!isServer) exitWith {};

private _pos = "area6";
private _no_nvg = true;
private _no_helmet = false;

private _type = selectrandom ["big","Sec"];
private _grp_array = [_type] call fnc_random_grp_o_csat;
private _grp1  = [[_pos, 150] call CBA_fnc_randPos, EAST, _grp_array] call BIS_fnc_spawnGroup;
if (_no_nvg) then {{_x unassignItem "NVGoggles_OPFOR"; _x removeItem "NVGoggles_OPFOR"; _x addPrimaryWeaponItem "acc_flashlight"} foreach units _grp1};
if (_no_helmet) then {{removeHeadgear _x} foreach units _grp1};
[_grp1, _pos, "SAFE", "YELLOW", "Normal"] call CBA_fnc_taskSearchArea