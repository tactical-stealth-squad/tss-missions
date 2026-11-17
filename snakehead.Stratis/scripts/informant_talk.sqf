private _action_1 = [
	"Unterhalten",
	"Unterhalten",
	"",
	{
		Params ["_target", "_player", "_actionParams"];
		/// Gesprochener Text für alle im Umkreis von 10 Meter um den Ziviliste
		private _allPlayers = call BIS_fnc_listPlayers;
		private _playerlist = [];
		{
			if (_x distance _target < 3) then {
				_playerlist pushback _x
			}
		} foreach _allPlayers;
		[
			//Displays subtitles
			[name _target, "Nach meinen Informationen hat sich der Konvoi vor wenigen Minuten in Bewegung gesetzt. Er müsste in ca. 10 Minuten in der Stadt eintreffen!", 0],
			[name _target, "Ich habe euch seine Route auf der Karte eingezeichnet! Am besten fangt ihr ihn auf der Brücke unweit von hier ab - ebenfalls eingezeichnet!", 10],
			[name _target, "In der Kiste findet ihr einige IEDs, die ich noch auf die Schnelle gebastelt habe.", 20],
			[name _target, "Auf jeder Seite befindet sich ein Schütze - von mehr weiß ich nicht.", 30],
			[name _target, "Viel Erfolg - ach der Hafen ist für den stationierten APC am Flughafen einsehbar! Meiden den Hafen lieber!", 40],
			[name _target, "Geht nun!", 50]
		] remoteExec [
			"BIS_fnc_EXP_camp_playSubtitles",
			_playerlist
		];
		{_x setMarkerAlpha 1} foreach ["conv_0", "conv_1", "conv_2", "conv_3", "conv_4", "conv_5", "mrk_amb"];
	},
	{
		true
	},
	{},
	[],
	[0,0,0],
	10
] call ace_interact_menu_fnc_createAction;
[informant, 0, ["ACE_MainActions"], _action_1] call ace_interact_menu_fnc_addActionToObject;

nil