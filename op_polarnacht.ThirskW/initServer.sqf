// SKill and disable LAMBS vor Editor placed units
{
	if (side _x isEqualTo west) exitWith {};

	_x setskill ["spotDistance", 1];
	_x setskill ["spotTime", 1];
	_x setskill ["courage", 1];

	_x setVariable ["lambs_danger_disableAI", true]
} foreach AllUnits;

// Box Loadout
[Kiste] call compile preprocessFileLineNumbers "scripte\waffen.sqf";

// Tasks
call compile preprocessFileLineNumbers "scripte\tasks.sqf";

// Reveal Mines
{
	east revealMine _x
} foreach AllMines;

// enemy spawn
[] spawn compile preprocessFileLineNumbers "scripte\Fg3spawn_patrol.sqf";