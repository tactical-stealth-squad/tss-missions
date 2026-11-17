private _thisIntel = _this select 0;


if (isServer) then {
	//Diary picture
	_thisIntel setVariable [
		"RscAttributeDiaryRecord_texture",
		//Path to picture
		"",
		true
	];
	//Diary Title and Description
	[
		_thisIntel,
		"RscAttributeDiaryRecord",
		//[ Title, Description, "" ]
		[
			"Chemiewaffenproduktion",
			"In den Dokumenten ist der Standort der Produktion vermerkt. Dieser befindet sich in der Nähe des ""Xirolimni Dam""",
			""
		]
	] call BIS_fnc_setServerVariable;

	//Diary entry shared with..
	_thisIntel setVariable ["recipients", west, true];

	//Sides that can interact with intelObject
	_thisIntel setVariable ["RscAttributeOwners", [west], true];
};

//Optional scripted event handlers
// Has to be local to every client! BISwiki is wrong in his example
//Add intel object scripted event that systemchats to all clients when found and by who
[
	_thisIntel,
	"IntelObjectFound",
	{
		params["_object", "_foundBy" ];
		"marker_task2" setMarkerAlpha 1
	}
] call BIS_fnc_addScriptedEventHandler;

nil