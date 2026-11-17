private _Pos = _this select 0;
private _finalPos = _pos call CBA_fnc_getPos;

{
	if (side (leader _x) isEqualTo independent) then {
		[_x, _finalPos, 100, true] call CBA_fnc_taskAttack
	}
} foreach AllGroups