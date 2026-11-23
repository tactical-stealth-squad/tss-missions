if (isNil "hacked") then {hacked = false; PublicVariable "hacked"};
if (isNil "start") then {start = false; PublicVariable "start"};

// SKill and EH when unit get`s hit
{
	_x setskill ["spotDistance", 1];
	_x setskill ["spotTime", 1];
	_x setskill ["courage", 1];

	_x addItem "NVGoggles_OPFOR";
	_x assignItem "NVGoggles_OPFOR";
	// Eventhandler for moving when hit
	_x addEventhandler [
		"HIT",
		{
			if (side (_this select 3) isEqualTo EAST OR !alive (_this select 0)) exitWith {};
			(_this select 0) removeEventHandler ["HIT", _thisEventHandler];
			if !((_this select 0) checkAIFeature "PATH") then {(_this select 0) enableAI "PATH"};
			(_this select 0) doSuppressiveFire getPosASL (_this select 3);
			[(_this select 0), (_this select 3), 50, true] call CBA_fnc_taskAttack;
		}
	];

	//(vehicle _x) disableTIEquipment true;
} foreach (units east);

// keine Bewebung
private _static_groups = [];
{
	_static_groups append _x;
} foreach [units task_static_1, units task_static_2, units task_static_3, units task_static_4, units amb_static_1, units amb_static_2, ambush_1];

{
	_x setUnitPos "UP";
	dostop _x;
	_x disableAI "PATH";
	_x removeMagazines "smokeshell";
} foreach _static_groups;

// Reveal Mines
{
	east revealMine _x;
} foreach AllMines;