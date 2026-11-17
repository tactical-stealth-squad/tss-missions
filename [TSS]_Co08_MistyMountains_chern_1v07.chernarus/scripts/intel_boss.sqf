private _thisIntel = _this select 0;

if (isServer) then {
	[
		_thisIntel,
		"RscAttributeDiaryRecord",
		[
			"Warlord",
			"== Jaroslaw Ristovski ==<br/><br/>Die Dokumente enthalten interessante Informationen über den derzeitigen Aufenthalt des Warlords!<br/>Er soll sich im ""Devil`s Castle"" aufhalten.<br/>",
			""
		]
	] call bis_fnc_setServerVariable;
	_thisIntel setvariable ["RscAttributeDiaryRecord_texture", "img\boss.jpg", true];

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
		[] spawn {
			sleep 600;
			"HIER IVAN: Die übermittelten Dokumente wurden ausgewertet: Nutzt die Gelegenheit und töten den Warlord ""Jaroslaw Ristovski""" remoteExecCall ["hint"]
		}
	}
] call BIS_fnc_addScriptedEventHandler;

nil