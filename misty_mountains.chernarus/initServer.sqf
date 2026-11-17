// SKill and EH when unit get`s hit
{
	if (side _x isEqualTo west) exitWith {};

	_x setskill ["spotDistance", 1];
	_x setskill ["spotTime", 1];
	_x setskill ["courage", 1];

	// Eventhandler for moving when hit
	if (_x checkAIFeature "PATH") exitWith {};
	_x addEventhandler [
		"HIT",
		{
			if (side (_this select 3) isEqualTo east OR !alive (_this select 0)) exitWith {};
			(_this select 0) removeEventHandler ["HIT", _thisEventHandler];
			(_this select 0) enableAI "PATH";
			(_this select 0) doSuppressiveFire getPosASL (_this select 3);
			[(_this select 0), (_this select 3), 50, true] call CBA_fnc_taskAttack
		}
	]
} foreach AllUnits;

// Reveal Mines
{
	east revealMine _x
} foreach AllMines