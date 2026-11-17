private _thisIntel = _this select 0;

if (isServer) then {
	[
		_thisIntel,
		"RscAttributeDiaryRecord",
		[
			"Aufklärungsphoto",
			"",
			""
		]
	] call bis_fnc_setServerVariable;
	_thisIntel setvariable ["RscAttributeDiaryRecord_texture", "img\intel_3_new.jpg", true];

	//Diary entry shared with.. follows BIS_fnc_MP target rules
	//this setVariable ["recipients", west, true];

	//Sides that can interact with intelObject
	_thisIntel setVariable ["RscAttributeOwners", [independent], true]
};

nil