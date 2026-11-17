private _object = _this select 0;

private _action = [
	"Unterhalten",
	"Unterhalten",
	"",
	{
		Params ["_target", "_player", "_actionParams"];

		//Turn towards player
		[_target, 'MOVE'] remoteExec ["enableAI",2];
		[_target, _target getDir _player] remoteExec ["setDir",2];
		[_target, 'MOVE'] remoteExec ["disableAI",2];

		//Gesprochener Text für alle im Umkreis von 5 Metern um den Zivilisten
		private _allPlayers = call BIS_fnc_listPlayers;
		private _playerlist = [];
		private _talkArray = [
			[name _target, "Guten Morgen! Da sind Sie ja schon!", 0],
			[name _target, "Entschuldigen Sie bitte meinen Bruder, er ist einfach kein Morgenmensch.", 6],
			[name _target, "Um ehrlich zu sein, waren wir nicht sicher, ob Sie überhaupt kommen würden.", 12],
			[name _target, "Wir haben uns in letzter Zeit ja nicht gerade gut verstanden.", 18],
			[name _target, "Die Geschenke befinden sich in der Hütte vor dem Haus.", 24],
			[name _target, "Sanitätsmaterial ist hier im unteren Geschoss.", 30],
			[name _target, "Nehmen Sie zuerst das Fahrzeuglager des Feindes auseinander und vernichten Sie, was Sie nicht gebrauchen können.", 36],
			[name _target, "Für den Feind ist das Lager eher unwichtig und daher nur leicht bewacht.", 42],
			[name _target, "Allerdings ist mit umfänglicher Verstärkung vom Flugfeld zu rechnen, sobald Sie das Lager angreifen.", 48],
			[name _target, "Vernichten Sie im Folgenden die große Antenne, damit wir den Flughafen ohne Probleme angreifen können.", 54],
			[name _target, "Viel Glück! Und herzlichen Dank fürs Unterstützen des Kampfs gegen die Unterdrücker!", 60]
		];
		
		{	if (_x distance _target < 5) then {
				_playerlist pushback _x
			}
		} foreach _allPlayers;

		_talkArray remoteExec [
			"BIS_fnc_EXP_camp_playSubtitles",
			_playerlist
		];

		// TO-DO: Nur _player bekommt Marker
		"marker_vehDepot" setMarkerAlpha 1;
		"marker_antenna" setMarkerAlpha 1;
	},
	{true},
	{},
	[],
	[0,0,0],
	10
] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

nil