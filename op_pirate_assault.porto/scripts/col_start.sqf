if (!isServer) exitWith {};

[officer, pilot] joinSilent grpNull;
[officer] joinSilent (group pilot);

officer enableAI "ALL";
pilot enableAI "ALL";

pilot assignAsDriver heli;
officer assignAsCargo heli;
[officer, pilot] orderGetIn true;

[
	{
		vehicle officer == heli && vehicle pilot == heli
	},
	{
		[pilot, [0, 0, 0], 150, "GETOUT", "SAFE", "BLUE", "FULL", "Colum"] call cba_fnc_addWaypoint
	},
	[
	]
] call CBA_fnc_waitUntilAndExecute;

[
	{
		heli distance2D [0, 0, 0] < 250
	},
	{
		{deleteVehicle _x} foreach [pilot, officer, heli]
	},
	[
	]
] call CBA_fnc_waitUntilAndExecute;


nil