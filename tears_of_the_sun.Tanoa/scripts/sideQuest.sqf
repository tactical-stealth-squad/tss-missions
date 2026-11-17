private _nili = [] spawn {
	private _allPlayers = call BIS_fnc_listPlayers;
	private _playerlist = [];
	{
		if (_x distance civ_driver < 30) then {
				_playerlist pushback _x
			}
	} foreach _allPlayers;
	[
		[name civ_driver, "Danke fürs Bringen! Ich sorge dafür, dass Ihre Flüchtlinge an einen sicheren Ort kommen ... versprochen!", 5],
		[name civ_driver, "Ich habe Ihnen ein paar Sachen in einer Box in der Werkstatt zurück gelassen. Vielleicht können Sie was davon gebrauchen.", 10]
	] remoteExec [
		"BIS_fnc_EXP_camp_playSubtitles",
		_playerlist
	]
};

waitUntil {sleep 1; isNull driver civ_car};
civ_driver assignAsDriver civ_car;
civ_driver enableAI "PATH";
[civ_driver] orderGetIn true;

waitUntil {sleep 1; vehicle civ_driver != civ_driver};

private _wpfirst = group civ_driver addWaypoint [getPos civ_driver, 1];
_wpfirst setWaypointCombatMode "BLUE";
_wpfirst setWaypointSpeed "LIMITED";

private _wpEnd = group civ_driver addWaypoint [getMarkerPos "civ_car_end", 200];
_wpEnd setWaypointCombatMode "BLUE";
_wpEnd setWaypointSpeed "LIMITED";
_wpEnd setWaypointStatements ["true", "deleteVehicle vehicle this; {deleteVehicle _x} foreach thisList"]