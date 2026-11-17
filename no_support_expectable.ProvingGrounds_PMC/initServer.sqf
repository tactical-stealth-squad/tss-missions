// SKill
{
	if (side _x isEqualTo independent) then {
		_x setskill ["spotDistance", 1];
		_x setskill ["spotTime", 1];
		_x setskill ["courage", 1]
	}
} foreach Allunits;

// Intel
{
	[
		_x,
		"RscAttributeDiaryRecord",
		//[ Title, Description, "" ]
		[
			"Sensible Daten",
			"Das Dokument enthält sensible Informationen.",
			""
		]
	] call BIS_fnc_setServerVariable;
	//Sides that can interact with intelObject
	_x setVariable ["RscAttributeOwners", [west], true]
} foreach [intel_1, intel_2, intel_3, intel_4, intel_5]