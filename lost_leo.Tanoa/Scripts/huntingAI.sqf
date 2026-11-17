/* ----------------------------------------------------------------------------
Function: huntingAI.sqf

Version: 1.01

Description:
	AI will hunt random player; AI get's every 180 seconds a waypoint (combat, red) at players position.
	The old wps are being deleted. The script is based on CBA PerFrameEventhandler. If no player is alive, the Eventhandler/Script is determined.
	You can blacklist AI, so they will not hunt the player.

	!Script works only for editor placed units (or you call it later)!

Parameters:
    blacklist			<ARRAY of Groups or Units, which will not hunt player (could also be empty [])>

Example:
    (begin example)
    [[unit_1, group_1, group_2, Heli_2]] call compile preprocessFileLineNumbers "huntingAI.sqf";
    (end)

Returns:
    Nil

Author:
    =TSS= zinki
---------------------------------------------------------------------------- */
if (!isServer) exitWith {};

private _blacklist = _this select 0;
private _Allplayers = Allplayers - entities "HeadlessClient_F";
private _foGroups = [];

if !(_blacklist isEqualTo []) then {
	private _followingGroups = [];
	{
		private _groupNew = _x call cba_fnc_getgroup;
		_followingGroups pushback _groupNew
	} foreach _blacklist;
	private _newGroups = Allgroups - _followingGroups;
	_foGroups append _newGroups
} else {
	_foGroups append Allgroups
};

[
	{
		_this params ["_argsArray", "_handleNumber"];
		_argsArray params ["_foGroups", "_allplayers"];
		if ({alive _x} count _Allplayers isEqualTo 0) exitWith {[_handleNumber] call CBA_fnc_removePerFrameHandler};
		{
			[_x] call CBA_fnc_clearWaypoints;
			[_x, selectrandom _Allplayers, 50, "MOVE", "COMBAT", "RED", "FULL", "COLUMN"] call CBA_fnc_addWaypoint
		} foreach _foGroups
	},
	180,
	[
		_foGroups, _Allplayers
	]
] call CBA_fnc_addPerFrameHandler;

nil