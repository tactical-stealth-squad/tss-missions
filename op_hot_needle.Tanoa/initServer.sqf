// SKill
{
	if (side _x isEqualTo independent) then {
		_x setskill ["spotDistance", 1];
		_x setskill ["spotTime", 1];
		_x setskill ["courage", 1]
	}
} foreach Allunits;

// Reveal Mines
{
	independent revealMine _x
} foreach AllMines;

// Variables
if (isNil "taskAcomb") then {taskAcomb = false}