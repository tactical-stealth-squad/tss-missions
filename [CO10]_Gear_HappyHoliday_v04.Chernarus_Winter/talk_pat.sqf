private _allPlayers = call BIS_fnc_listPlayers;
 
waitUntil {sleep 2; _allPlayers findIf {_x distance2d pat_1 < 10} >= 0};
 
private _playerlist = [];
private _talkArray = [
	[name pat_1, "Da seid ihr ja, wir hatten gehofft, dass Ihr kommt!", 0],
	[name pat_1, format ["Der Unterschlupf befindet sich in Richtung %1 Grad.", round(pat_1 getRelDir trgt_leader), 10]]
];


{
	if (_x distance pat_1 < 20) then {
		_playerlist pushback _x
	}
} foreach _allPlayers;

_talkArray remoteExec [
	"BIS_fnc_EXP_camp_playSubtitles",
	_playerlist
];

nil