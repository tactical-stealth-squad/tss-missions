// Array der Units für späteren Skill
private _local_var_UnitsArray = [];
////////////////////////////
// Units auf den Türmen
////////////////////////////
private _local_var_units = [
	["CUP_B_US_Soldier", [4790.96,6159.56,34.7838], [[-0.999595,0.0284629,0.000487909],[0.000488106,0,1]]],
	["CUP_B_US_Soldier", [5092.2,6147.43,34.1465], [[0.779797,0.626032,-0.000380624],[0.000488106,0,1]]],
	["CUP_B_US_Soldier_Marksman", [4786.44,6035.07,34.3631], [[-0.623866,-0.781531,0.000527625],[0.000845734,0,1]]],
	["CUP_B_US_Soldier_AR", [4850.02,6012.92,34.2821], [[0.0313933,-0.999507,-1.53233e-005],[0.000488106,0,1]]],
	["CUP_B_US_Soldier", [5090.6,6075.44,34.0908], [[0.665035,-0.746812,-0.000324608],[0.000488106,0,1]]],
	["CUP_B_US_Soldier_Marksman", [4991.06,6070.23,34.377], [[0.141972,-0.989871,-6.92977e-005],[0.000488106,0,1]]],
	["CUP_B_US_Soldier", [4816.64,6223.5,35.0855], [[-0.739055,0.673645,0],[0,0,1]]],
	["CUP_B_US_Soldier", [4928.14,6331.07,34.9749], [[-0.266287,0.963894,0.000183814],[0.000690285,0,1]]],
	["CUP_B_US_Soldier_Marksman", [5032.51,6210.14,34.4359], [[0.852823,0.522201,0],[0,0,1]]],
	["CUP_B_US_Soldier_Marksman", [4982.91,6299.6,34.7291], [[0.414789,0.909918,0],[0,0,1]]]
];
{
	Private ["_local_var_group", "_local_var_unit"];
	_local_var_group = createGroup west;
	_local_var_unit = _local_var_group createUnit [(_x select 0), [0,0,0], [], 0, "none"];
	_local_var_unit setVectorDirAndUp (_x select 2);
	_local_var_unit setPosASL (_x select 1);
	_local_var_unit disableAI "PATH";
	// Eventhandler for moving when hit
	_local_var_unit addEventhandler [
		"HIT",
		{
			if (side (_this select 3) isEqualTo West OR !alive (_this select 0)) exitWith {};
			(_this select 0) removeEventHandler ["HIT", _thisEventHandler];
			(_this select 0) enableAI "PATH"
		}
	];
	// Storge von Units im Array
	_local_var_UnitsArray pushback _local_var_Unit
} forEach _local_var_units;
//////////////////////////
// Static
//////////////////////////
// Sucht alle Statischen Waffen im Umkreis von 200 Metern
private _local_var_statics = getMarkerPos "area8" nearObjects ["StaticWeapon", 200];
// Filter out occupied statics (von CBA)
_local_var_statics = _local_var_statics select {(_x emptyPositions "Gunner") > 0};
// Static Besatzung
{
	Private ["_local_var_group", "_local_var_unit"];
	_local_var_group = createGroup west;
	_local_var_unit = _local_var_group createUnit ["CUP_B_US_Soldier", [0,0,0], [], 0, "none"];
	_local_var_unit disAbleAI "PATH";
    _local_var_unit moveinGunner _x;
    // Storge von Units im Array
    _local_var_UnitsArray pushback _local_var_Unit
} forEach _local_var_statics;
//////////////////////////
// Unterstützung bzw. Jagd der Players
//////////////////////////
// Heli
_local_var_BlackHawk = [[0,0,0], 0, "CUP_B_UH60M_US", west] call BIS_fnc_spawnVehicle;
(_local_var_BlackHawk select 0) setVectorDirAndUp [[-0.876119,0.482094,0.000980717],[0.00248939,0.00248975,0.999994]];
(_local_var_BlackHawk select 0) setPosASL [4954.26,6232.46,29.6832];
[(_local_var_BlackHawk select 2), spawn_zarg_3, 1500, 7, "MOVE", "COMBAT", "RED", "LIMITED", "STAG COLUMN"] call CBA_fnc_taskPatrol;
// Hunting Tank
_local_var_Tusk = [[0,0,0], 0, "CUP_B_M1A2_TUSK_MG_DES_US_Army", west] call BIS_fnc_spawnVehicle;
(_local_var_Tusk select 0) setPos (getMarkerPos "task_0");
//[(_local_var_Tusk select 2), 500, 30, [], getpos selectrandom Allplayers, true] spawn lambs_wp_fnc_taskRush;

[
	{
		_this params ["_argsArray", "_handleNumber"];
		_argsArray params ["_grp"];

		if ({alive _x} count (Allplayers - entities "HeadlessClient_F") isEqualTo 0) exitWith {[_handleNumber] call CBA_fnc_removePerFrameHandler};

		[_grp select 2] call CBA_fnc_clearWaypoints;
		private _wp = [_grp select 2, selectrandom (Allplayers - (entities "HeadlessClient_F")), 50, "MOVE", "COMBAT", "RED", "FULL", "STAG COLUMN", "this doSuppressiveFire (getPosASL selectrandom (AllPlayers - entities ""HeadlessClient_F""))"] call CBA_fnc_addWaypoint
	},
	30,
	[
		_local_var_Tusk
	]
] call CBA_fnc_addPerFrameHandler;

//////////////////////////
// Skill Settings
//////////////////////////
{
	if (side _x == west) then {
		_x setskill ["spotDistance", 1];
		_x setskill ["spotTime", 1];
		_x setskill ["courage", 1]
	}
} foreach _local_var_UnitsArray;

// Reveal Mines
{
	west revealMine _x
} foreach AllMines;

nil