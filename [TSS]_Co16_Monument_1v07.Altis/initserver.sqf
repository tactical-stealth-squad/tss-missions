/// Skill ///
{
	if (side _x == east) then {
		_x setskill ["spotDistance", 1];
		_x setskill ["spotTime", 1];
		_x setskill ["courage", 1];
	} else {
		_x setSkill 0
	}
} foreach AllUnits;


// Grabmusik
waitUntil {sleep 45; time > 5};
[] call compile preprocessFileLineNumbers "scripts\grave_music.sqf";
// RadomDelete
[] call compile preprocessFileLineNumbers "scripts\randomDelete.sqf";