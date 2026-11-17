// SKill
{
	// SKill
	_x setskill ["spotDistance", 1];
	_x setskill ["spotTime", 1];
	_x setskill ["courage", 1];

	// grr CFP and Alive ...
	_x setVariable ["CFP_DisableRandom", true];
	_x setVariable ["ALiVE_OverrideLoadout", true];

	// Eventhandler for moving when hit
	_x addEventhandler [
		"HIT",
		{
			if (side (_this select 1) isEqualTo east OR !alive (_this select 0)) exitWith {};
			(_this select 0) removeEventHandler ["HIT", _thisEventHandler];
			if !((_this select 0) checkAIFeature "PATH") then {(_this select 0) enableAI "PATH"};
			(_this select 0) doSuppressiveFire getPosASL (_this select 1);
		}
	]
} foreach (units east);

{east reveal _x} foreach AllMines;