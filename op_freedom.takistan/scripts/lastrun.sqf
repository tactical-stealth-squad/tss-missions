sleep 10;

private _handle_1 = [] spawn {
	{
		if !(_x checkAIFeature "PATH") then {_x enableAI "PATH"};
		_x call CBA_fnc_clearWaypoints;
		[_x, _x, 10, "MOVE", "CARELESS", "RED", "FULL"] call CBA_fnc_addWaypoint;
		[_x, "marker_125" call CBA_fnc_getPos, 100, "SAD", "CARELESS", "RED", "FULL"] call CBA_fnc_addWaypoint
	} foreach (units independent)
};

waitUntil {sleep 15; scriptDone _handle_1};
private _handle_2 = [] spawn compile preprocessFileLineNumbers "scripts\spawn_ZSU.sqf";

waitUntil {sleep 15; scriptDone _handle_2};
[2] spawn compile preprocessFileLineNumbers "scripts\spawn_tank.sqf"