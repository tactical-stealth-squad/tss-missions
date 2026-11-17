private _thisIntel = _this select 0;

if (isServer) then {
	[
		_thisIntel,
		"RscAttributeDiaryRecord",
		[
			"Standort AA-Stellung",
			"== Standort der AA-Stellung ==<br/><br/>Die Dokumente enthalten den Standort der AA-Stellung!<br/>Hierbei handelt es sich um zwei IGLA-Stellung auf dem Turm des ""Devil`s Castle"".<br/>",
			""
		]
	] call bis_fnc_setServerVariable;
	_thisIntel setvariable ["RscAttributeDiaryRecord_texture", "img\igla.jpg", true];

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
		"mrk_iglas" setmarkerAlpha 1;
	}
] call BIS_fnc_addScriptedEventHandler;

nil