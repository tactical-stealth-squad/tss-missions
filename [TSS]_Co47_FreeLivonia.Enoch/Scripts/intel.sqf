Params ["_case", "_thisIntel"];

if (_case isEqualTo 0) then {
	if (isServer) then {
		//Diary picture
		_thisIntel setVariable [
			"RscAttributeDiaryRecord_texture",
			//Path to picture
			"images\arty.jpg",
			true
		];
		//Diary Title and Description
		[
			_thisIntel,
			"RscAttributeDiaryRecord",
			//[ Title, Description, "" ]
			[
				"Standort einer Artillerie",
				"In den Dokumenten ist der Standort eines Artillerie-Panzer verzeichnet.<br/>Koordinate: 023114<br/>",
				""
			]
		] call BIS_fnc_setServerVariable;

		//Diary entry shared with.. follows BIS_fnc_MP target rules
		//this setVariable ["recipients", west, true];

		//Sides that can interact with intelObject
		_thisIntel setVariable ["RscAttributeOwners", [west], true]
	};

	//Optional scripted event handlers
	// Has to be local to every client! BISwiki is wrong in his example
	//Add intel object scripted event that systemchats to all clients when found and by who
	[
		_thisIntel,
		"IntelObjectFound",
		{
			params["_object", "_foundBy" ];
			"arty_mrk" setMarkerAlpha 1
		}
	] call BIS_fnc_addScriptedEventHandler;

	// Returnvalue
	_thisIntel
};

if (_case isEqualTo 1) then {
	if (isServer) then {
		//Diary picture
		_thisIntel setVariable [
			"RscAttributeDiaryRecord_texture",
			//Path to picture
			"images\leo.jpg",
			true
		];
		//Diary Title and Description
		[
			_thisIntel,
			"RscAttributeDiaryRecord",
			//[ Title, Description, "" ]
			[
				"Skizzen (Panzer)",
				"Die Dokumente beinhalten die ersten Skizzen eines Bauplanes für eine neue Panzerklasse. Wahrscheinlich wollten die Russen wegen der alten Waffenfabrik bei 073026 das Gebiet einnehmen.<br/>",
				""
			]
		] call BIS_fnc_setServerVariable;

		// Diary entry shared with.. follows BIS_fnc_MP target rules
		// this setVariable ["recipients", west, true];

		// Sides that can interact with intelObject
		_thisIntel setVariable ["RscAttributeOwners", [west], true];

		// Returnvalue
		_thisIntel
	}
};

if (_case isEqualTo 2) then {
	if (isServer) then {
		//Diary picture
		_thisIntel setVariable [
			"RscAttributeDiaryRecord_texture",
			//Path to picture
			"images\BlauPause.jpg",
			true
		];
		//Diary Title and Description
		[
			_thisIntel,
			"RscAttributeDiaryRecord",
			//[ Title, Description, "" ]
			[
				"Skizzen (JET)",
				"Die Dokumente beinhalten die ersten Skizzen eines Bauplanes für eine Jetklasse. Wahrscheinlich wollten die Russen wegen der alten Waffenfabrik bei 073026 das Gebiet einnehmen.<br/>",
				""
			]
		] call BIS_fnc_setServerVariable;

		//Diary entry shared with.. follows BIS_fnc_MP target rules
		//this setVariable ["recipients", west, true];

		//Sides that can interact with intelObject
		_thisIntel setVariable ["RscAttributeOwners", [west], true];

		// Returnvalue
		_thisIntel
	}
}