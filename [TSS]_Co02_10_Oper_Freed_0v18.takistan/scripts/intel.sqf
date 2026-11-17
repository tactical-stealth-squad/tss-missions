private _thisIntel = _this select 0;

if (isServer) then {
	//Diary picture
	_thisIntel setVariable [
		"RscAttributeDiaryRecord_texture",
		//Path to picture
		"bilder\nachschub.jpg",
		true
	];

	//Diary Title and Description
	[
		_thisIntel,
		"RscAttributeDiaryRecord",
		//[ Title, Description, "" ]
		[
			"Nachschubrouten",
			"Dieses Dokument zeigt die Nachschub- und Transportrouten der Taliban.",
			""
		]
	] call BIS_fnc_setServerVariable
};

[
	_thisIntel,
	"IntelObjectFound",
	{
		params["_object", "_foundBy" ];
		["SupportEH", []] call CBA_fnc_serverEvent
	}
] call BIS_fnc_addScriptedEventHandler;

nil