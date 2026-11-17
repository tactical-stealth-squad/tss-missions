[
	{
		!(Allplayers findIf {_x inArea "marker_9"} isEqualTo -1)
	},
	{
		[grave, "music_intro", 100] call CBA_fnc_globalSay3d;
		"Macht den LKW frei, damit die anderen einsteigen können!" remoteExec ["Hintsilent", 0];
	},
	[
	]
] call CBA_fnc_waitUntilAndExecute