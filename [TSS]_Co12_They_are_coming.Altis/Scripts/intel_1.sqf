private _thisIntel = _this select 0;

if (isServer) then {
	[
		_thisIntel,
		"RscAttributeDiaryRecord",
		[
			"Aufklärungsdaten",
			"Theophanis hat uns einigen Daten über mögliche Checkpoints der CSAT, alte Minenfelder und einem verlassenen FOB aufgezeichnet.<br/>Am Kreuz hat er noch etwas hingekritzelt: ""Das Kreuz wird euch den Weg zeigen"" ... was er wohl meint ... ",
			""
		]
	] call bis_fnc_setServerVariable;
	_thisIntel setvariable ["RscAttributeDiaryRecord_texture", "img\intel_1_new.jpg", true];

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
		{_x setmarkerAlpha 1} foreach ["mrk_check_1", "mrk_check_2", "mrk_minefield_1", "mrk_minefield_2", "mrk_minefield_3", "mrk_minefield_4", "mrk_minefield_5", "mrk_minefield_6", "mrk_minefield_7", "mrk_minefield_8", "mrk_minefield_9", "mrk_fob"];
	}
] call BIS_fnc_addScriptedEventHandler;

nil