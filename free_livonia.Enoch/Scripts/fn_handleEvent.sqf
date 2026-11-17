/*
	Author:
		[=TSS=] zinki

	Description:
		Handels where the event is raised.

	Parameter(s):
		0: Eventname	<STRING>

	Optional:
		1: Sleep		<SCALAR>; default: 10

	Execute:
		["myEvent", 10] compile preprocessFileLineNumbers "scripts\handle_event.sqf";

	Returns:
		Eventname
*/



if (!isServer) exitWith {};

Params ["_eventName", "_sleep"];

[
	{
		private _eventN = _this select 0;
		if (!isNil "HC_1") then {
			diag_log format ["### Spawn auf dem HC: %1 ###", _eventN];
			[_eventN, [], owner HC_1] call CBA_fnc_ownerEvent;
			[_eventN, "RemoveEH_Server"]  call CBA_fnc_localEvent
		} else {
			diag_log format ["### Spawn auf dem Server: %1 ###", _eventN];
			_eventN call CBA_fnc_localEvent
		}
	},
	[
		_eventName
	],
	_sleep
] call CBA_fnc_waitAndExecute;

// Returnvalue
_eventName