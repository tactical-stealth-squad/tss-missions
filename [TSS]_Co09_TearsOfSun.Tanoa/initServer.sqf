/// Skill & Eventhandler///
{
	_x setskill ["spotDistance", 1];
	_x setskill ["spotTime", 1];
	_x setskill ["courage", 1];
	// Eventhandler for moving when hit
	_x addEventhandler [
		"HIT",
		{
			if (side (_this select 3) isEqualTo independent OR !alive (_this select 0) OR (vehicle (_this select 0) != (_this select 0))) exitWith {};
			(_this select 0) removeEventHandler ["HIT", _thisEventHandler];
			(_this select 0) doSuppressiveFire getPosASL (_this select 3);
			[(_this select 0), (_this select 3), 50, true] call CBA_fnc_taskAttack
		}
	]
} foreach (units independent);

// Lambs
{
	_x setVariable ["lambs_danger_disableAI",true];
	_x setVariable ["Vcm_Disable",true]
} foreach (units civilian)