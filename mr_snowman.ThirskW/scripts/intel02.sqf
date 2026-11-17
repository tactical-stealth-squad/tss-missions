_intelObj = _this select 0;

if (isServer) then {
	//Diary Title and Description (//[ Title, Description, "" ])
	[
		_intelObj,
		"RscAttributeDiaryRecord",
		[
			"Bericht",
			"Aufklaerungsbericht der Funkstaion",
			""
		]
	] call bis_fnc_setServerVariable;

	// Intel picture
	_intelObj setvariable ["RscAttributeDiaryRecord_texture","img\Aufklaerungsbericht.jpg", true];
};

// Returnvalue
nil