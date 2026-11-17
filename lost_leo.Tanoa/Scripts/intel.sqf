Params ["_case", "_thisIntel"];

if (_case isEqualTo 1) then {
	//Diary picture
	_thisIntel setVariable [
		"RscAttributeDiaryRecord_texture",
		//Path to picture
		"image\pw.jpg",
		true
	];
	//Diary Title and Description
	[
		_thisIntel,
		"RscAttributeDiaryRecord",
		//[ Title, Description, "" ]
		[
			"Passwortliste",
			"Auf dem Zettel stehen einige - sehr seltsame - Passwörter.<br/>
			(Sie sollten verschiedene Kombinationen aus Zahlen sowie Groß- und Kleinschreibung testen!)",
			""
		]
	] call BIS_fnc_setServerVariable;

	//Diary entry shared with.. follows BIS_fnc_MP target rules
	//this setVariable ["recipients", west, true];

	//Sides that can interact with intelObject
	//_thisIntel setVariable ["RscAttributeOwners", [east], true];
};

if (_case isEqualTo 2) then {
	//Diary picture
	_thisIntel setVariable [
		"RscAttributeDiaryRecord_texture",
		//Path to picture
		"image\leo.jpg",
		true
	];
	//Diary Title and Description
	[
		_thisIntel,
		"RscAttributeDiaryRecord",
		//[ Title, Description, "" ]
		[
			"Skizzen",
			"Die Dokumente beinhalten die ersten Skizzen eines Leopard 2 Bauplans.",
			""
		]
	] call BIS_fnc_setServerVariable;

	//Diary entry shared with.. follows BIS_fnc_MP target rules
	//this setVariable ["recipients", west, true];

	//Sides that can interact with intelObject
	//_thisIntel setVariable ["RscAttributeOwners", [east], true]
};

nil