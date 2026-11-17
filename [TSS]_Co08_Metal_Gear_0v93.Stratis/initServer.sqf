// SKill
{
	if (side _x isEqualTo east) then {
		_x setskill ["spotDistance", 1];
		_x setskill ["spotTime", 1];
		_x setskill ["courage", 1]
	}
} foreach Allunits