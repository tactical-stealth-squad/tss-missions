/*
 * Author: jokoho482, dedmen edit by zinki
 * Find Closest Target to Group
 *
 * Arguments:
 * 0: Group to check <GROUP>
 * 1: Radius <NUMBER>
 * 2: Area <MARKER> (optional)
 * 3: Position <MARKER, OBJECT, LOCATION, GROUP, TASK or POSITION> (optional)
 *
 * Return Value:
 * target or objNull
 *
 * Example:
 * [group bob, 500] call compile preprocessFileLineNumbers "fn_findClosestTarget.sqf";﻿
 *
 * Public: No
*/

params ["_group", ["_radius", 500], ["_area", ""], ["_pos", objNull]];

private _groupLeader = leader _group;
private _sideExclusion = [side _group, civilian, sideUnknown, sideEmpty, sideLogic];
if (_pos isEqualTo objNull) then {
    _pos = _groupLeader
};
_pos = _pos call CBA_fnc_getPos;
private _units = Allplayers - entities "HeadlessClient_F";

_units = _units select {
    !(side _x in _sideExclusion)
    && { _x distance2D _pos < _radius }
    && { (getPosATL _x) select 2 < 200 }
};
if !(_area isEqualTo "") then {
    _units = _units select { (getPos _x) inArea _area}
};
if (_units isEqualTo []) exitWith {ObjNull};

private _unitDistances = _units apply {[_groupLeader distance2D _x, _x]};
_unitDistances sort true;

(_unitDistances param [0, [0, objNull]]) param [1, objNull]
