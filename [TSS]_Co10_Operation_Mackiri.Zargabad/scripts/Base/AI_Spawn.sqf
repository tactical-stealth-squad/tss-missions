
private _GroupInfo = _this select 0;
// ***************************** //
private _grp_1 = [
	getMarkerPos "usa",
	west,
	(_GroupInfo select 0)
] call BIS_fnc_spawnGroup;

[_grp_1, "area6", "SAFE", "YELLOW", "LIMITED", "STAG COLUMN"] call CBA_fnc_taskSearchArea;

sleep 2;
// ***************************** //
private _grp_2 = [
	getMarkerPos "usa",
	west,
	(_GroupInfo select 1)
] call BIS_fnc_spawnGroup;

[_grp_2, "area6", "Comabt", "RED", "LIMITED", "STAG COLUMN"] call CBA_fnc_taskSearchArea;

sleep 2;
// ***************************** //
private _grp_3 = [
	getMarkerPos "usa",
	west,
	(_GroupInfo select 0)
] call BIS_fnc_spawnGroup;

[_grp_3, "area8", "COMBAT", "RED", "LIMITED", "STAG COLUMN"] call CBA_fnc_taskSearchArea;

sleep 2;
// ***************************** //
private _grp_4 = [
	getMarkerPos "usa",
	west,
	(_GroupInfo select 1)
] call BIS_fnc_spawnGroup;

[_grp_4, "area8", "SAFE", "White", "LIMITED", "STAG COLUMN"] call CBA_fnc_taskSearchArea;