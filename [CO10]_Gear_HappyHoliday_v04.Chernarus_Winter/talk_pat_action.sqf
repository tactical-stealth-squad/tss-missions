private _object = _this select 0;

private _action = [
	"Unterhalten",
	"Unterhalten",
	"",
	{
		Params ["_target", "_player", "_actionParams"];

		//Gesprochener Text für alle im Umkreis von 5 Metern um den Zivilisten
		private _allPlayers = call BIS_fnc_listPlayers;
		private _playerlist = [];
		private _talkArray = [
			[name pat_1, format ["Der Unterschlupf befindet sich in Richtung %1 Grad.", round(pat_1 getRelDir trgt_leader), 10]]
		];
		
		{	if (_x distance _target < 5) then {
				_playerlist pushback _x
			}
		} foreach _allPlayers;

		_talkArray remoteExec [
			"BIS_fnc_EXP_camp_playSubtitles",
			_playerlist
		];
	},
	{true},
	{},
	[],
	[0,0,0],
	10
] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

nil