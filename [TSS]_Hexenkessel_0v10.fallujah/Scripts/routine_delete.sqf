// Delete Dead Units
_fnc_deleteUnits = {
	private _DeadUnitsBegin = (AllDead - [Geisel_1, Geisel_2, Geisel_3, warlord]);
	private _DeadinDistance = [];

	{
		if ([_x, 600] call CBA_fnc_nearPlayer) then {_DeadinDistance pushback _x};
	} foreach _DeadUnitsBegin;

	private _delDead = [_DeadUnitsBegin, {_this in _DeadinDistance}] call CBA_fnc_reject;

	deleteVehicle _delDead;
};

// Delete Empty Groups
_fnc_deleteGroups = {
	{
		if (count units _x isEqualTo 0) then {
			deletegroup _x;
		};
	} foreach AllGroups;
};

// delete all tracks (its not instant, they disappear next simulation cycle)
_fnc_deleteTracks = {
	private _AllTracks = (allMissionObjects "#track");
	private _TracksinDistance = [];

	{
		if ([_x, 300] call CBA_fnc_nearPlayer) then {_TracksinDistance pushback _x};
	} foreach _AllTracks;

	private _delTracks = [_AllTracks, {_this in _TracksinDistance}] call CBA_fnc_reject;

	deleteVehicle _delTracks;
};

// delete all footsteps
_fnc_deletefootsteps = {
	private _Allfootsteps = (allMissionObjects "#mark");
	private _footstepsinDistance = [];

	{
		if ([_x, 300] call CBA_fnc_nearPlayer) then {_footstepsinDistance pushback _x};
	} foreach _Allfootsteps;

	private _delfootsteps = [_Allfootsteps, {_this in _footstepsinDistance}] call CBA_fnc_reject;

	deleteVehicle _delfootsteps;
};

// routine
private _handleDelete = [
	{
		_this params ["_args", "_handle"];
		_args params ["_del_fnc_units", "_del_fnc_Groups", "_del_fnc_Tracks", "_del_fnc_Foodsteps"];

		if (!routine_Del_Begin) exitWith {};

		call _del_fnc_units;
		call _del_fnc_Groups;
		call _del_fnc_Tracks;
		call _del_fnc_Foodsteps;
	},
	180,
	[
		_fnc_deleteUnits,
		_fnc_deleteGroups,
		_fnc_deleteTracks,
		_fnc_deletefootsteps
	]
] call CBA_fnc_addPerFrameHandler;

nil