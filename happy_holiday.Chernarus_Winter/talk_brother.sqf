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
			[name _target, "*Gähnt ausführlich* Was?! Sie sind schon da?", 0],
			[name _target, "So früh haben wir mit Ihnen noch gar nicht gerechnet.", 6],
			[name _target, "Ich hatte noch nicht einmal meinen Kaffee.", 12],
			[name _target, "Gehen Sie zu meinen Bruder im Nebenraum, der kann Ihnen weiterhelfen.", 18],
			[name _target, "Wollen Sie meine Geduld echt noch so ausgiebig überstrapazieren?", 24]
		];
		{
			if (_x distance _target < 5) then {
				_playerlist pushback _x
			}
		} foreach _allPlayers;
		
		{
			[_x] remoteExec ["BIS_fnc_EXP_camp_playSubtitles",_playerlist];
		} forEach _talkArray;
	},
	{
		true
	},
	{

	},
	[

	],
	[0,0,0],
	10
] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

nil