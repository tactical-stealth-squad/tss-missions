private _grpPlanes = createGroup civilian;
private _pos = "marker_13" call CBA_fnc_getPos;

private _vehicle = createVehicle ["CUP_B_C130J_USMC", [0,0,0], [], 270, "FLY"];
_vehicle setPos [_pos select 0, _pos select 1, (_pos select 2) + 300];
_vehicle flyInHeight 300;

private _pilot = _grpPlanes createUnit ["CUP_B_USMC_Pilot", [0,0,0], [], 270, "NONE"];
_pilot moveInDriver _vehicle;

private _coPilot = _grpPlanes createUnit ["CUP_B_USMC_Pilot", [0,0,0], [], 270, "NONE"];
_coPilot moveInTurret [_vehicle, [0]];

{
	_x allowDammage false;
	_x setCaptive true
} foreach [_vehicle, _pilot, _coPilot];

[_vehicle, "marker_forLand", 10, "GETOUT", "SAFE", "BLUE", "FULL", "COLUMN"] call CBA_fnc_addWaypoint;

[["SUPER-SIX on his way! ETA 3 MICS! SUPER-SIX OUT!","PLAIN DOWN"]] remoteExecCall ["titletext", (Allplayers - entities "HeadlessClient_F")];

_vehicle