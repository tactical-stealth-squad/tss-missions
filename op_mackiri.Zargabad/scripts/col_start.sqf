if (!isServer) exitWith {};

"Col. Davis begibt sich nun Richtung US-Base!" remoteExeccall ["hintSilent", (allPlayers - (entities "HeadlessClient_F"))];

b_target_2 enableAI "ALL";

b_target_2 assignAsDriver h111;
[b_target_2] orderGetIn true;

[
	{
		vehicle b_target_2 == h111
	},
	{
		[b_target_2, h2, 0, "GETOUT", "SAFE", "BLUE", "FULL", "Colum", "[b_target_2] call CBA_fnc_searchNearby"] call cba_fnc_addWaypoint;
	},
	[
	]
] call CBA_fnc_waitUntilAndExecute;


if (Base_init) exitWith {};

call compile preprocessFileLineNumbers "scripts\base\Base_init.sqf";