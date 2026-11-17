private _thisIntel = _this select 0;

if (isServer) then {
	[
		_thisIntel,
		"RscAttributeDiaryRecord",
		[
			"Aufklärungsphoto",
			"Das Photo zeigt den genauen Standort des ehemaligen Stützpunktes der AAF.",
			""
		]
	] call bis_fnc_setServerVariable;
	_thisIntel setvariable ["RscAttributeDiaryRecord_texture", "img\intel_2_new.jpg", true];

	//Diary entry shared with.. follows BIS_fnc_MP target rules
	//this setVariable ["recipients", west, true];

	//Sides that can interact with intelObject
	_thisIntel setVariable ["RscAttributeOwners", [independent], true]
};

//Optional scripted event handlers
// Has to be local to every client! BISwiki is wrong in his example
//Add intel object scripted event that systemchats to all clients when found and by who
[
	_thisIntel,
	"IntelObjectFound",
	{
		params["_object", "_foundBy" ];
		{_x setmarkerAlpha 1} foreach ["mrk_kill"];
	}
] call BIS_fnc_addScriptedEventHandler;

nil