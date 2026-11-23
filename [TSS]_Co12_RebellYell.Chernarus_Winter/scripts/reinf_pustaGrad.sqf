private _zposition = _this select 0;

{
	if (_x inArea "mrk_reinf_pustaGrad") then {
		[_x, _zposition, 50] call CBA_fnc_taskAttack;
	};
} foreach (units independent);