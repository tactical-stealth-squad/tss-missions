private _object = _this select 0;

private _action = [
	"Unterhalten",
	"Unterhalten",
	"",
	{
		Params ["_target", "_player", "_actionParams"];
		/// Gesprochener Text für alle im Umkreis von 10 Meter um den Ziviliste
		private _allPlayers = call BIS_fnc_listPlayers;
		private _playerlist = [];
		private _talkArray = [
			[name _target, "War ne gute Idee mich als Farmer auszugeben. So konnte ich nah an den feindlichen Stützpunkt.", 0],
			[name _target, "Ach ja, die Fotos findet ihr in meiner Hütte.", 0],
			[name _target, "Da stehen eine Haufen LKWs und der ein oder andere APC rum.", 0],
			[name _target, "Meinen Hund habe ich Rex getauft.", 0],
			[name _target, "Da seid ihr ja endlich! Ich habe ein paar gute Fotos machen können, die ihr in der Hütte findet. Ansonsten hier noch ein paar Infos: Ca. 20 Mann sind im Stützpunkt zur Wache eingesetzt. Ein APC sowie MRAP sind ebenso vor Ort. Ansonsten nur ein paar LKWs. Viel Erfolg Jungs!", 0]
		];
		private _talkphrase = selectRandom _talkArray;
		{
			if (_x distance _target < 10) then {
				_playerlist pushback _x
			}
		} foreach _allPlayers;
		[
			_talkphrase
		] remoteExec [
			"BIS_fnc_EXP_camp_playSubtitles",
			_playerlist
		]
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