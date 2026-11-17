/* ----------------------------------------------------------------------------
Function: fn_mortar.sqf

Version: 1.03

Description:
	A function for a Mortar to fire at a certain position or random position.
	Attention: If you have ace_advanced_mortar you must use "this setVariable ["ace_mk6mortar_exclude", true];" in the init of the mortar.

Parameters:
    - Object			<Name of the Mortar>
    - PositionArray		<MARKER, OBJECT, LOCATION, GROUP, TASK or POSITION>

Optional:
    - Shelltype 		<0: HE, 1: Flare, 2: Smoke> (Default: HE)
    - Delay				Time between the shoots in Frames/Seconds (Default: 30)
    - Rounds 			(Default 1)
    - Radius 			(Default: 30)
    - EndlessAmmo 		(Default: False)

Example:
    (begin example)
    [Mortar_1, ["Arty_0", "arty_1"]] call compile preprocessFileLineNumbers "fn_mortar.sqf";
    Optional:
    [mortar_1, ["Arty_0", "arty_1"], 1, 60, 2, 50, true] call compile preprocessFileLineNumbers "fn_mortar.sqf";
    (end)

Returns:
    Nil

Author:
    =TSS= zinki
    Thanks @ =TSS= BrainSlush && the internet
---------------------------------------------------------------------------- */
if (!isServer) exitWith {};

Params [
	"_mortar",
	"_randomPosArray",
	["_shellTyp", 0],
	["_delay", 30],
	["_round", 1],
	["_radius", 30],
	["_endlessAmmo", false]
];

// Shelltyp
private _shell = getArtilleryAmmo [_mortar] select _shellTyp;

// Function for counting magazines
private _fn_CountMagazines = {
	Params ["_mortar", "_shell"];
	private _AllMagazines = magazinesAmmo _mortar;
	private _MagazineCount = 0;
	{
		if (_x select 0 == _shell) then	{
			_MagazineCount = _MagazineCount + (_x select 1);
		}
	} forEach _AllMagazines;
	_MagazineCount
};

// Shooting routine
private _handleNumber = [
	{
		_this params ["_argsArray", "_handleNumber"];
		_argsArray params ["_mortar", "_randomPosArray", "_shell", "_round", "_radius", "_endlessAmmo", "_fn_CountMagazines"];

		if (!alive gunner _mortar OR {[_mortar, _shell] call _fn_countMagazines isEqualTo 0} OR {!alive _mortar}) exitWith {
			[_handleNumber] call CBA_fnc_removePerFrameHandler;
		};

		// Position wo die Granate ca. runterkommt
		private _randomPos = selectrandom _randomPosArray;
		private _pos = [_randomPos, _radius] call CBA_fnc_randPos;
		// Befehl zum Feuern
		_mortar doArtilleryFire [
			_pos,
			_shell,
			_round
		];
		// endlessAmmo
		if (_endlessAmmo) then {
			_mortar setVehicleAmmo 1;
		}
	},
	_delay,
	[
		_mortar, _randomPosArray, _shell, _round, _radius, _endlessAmmo, _fn_CountMagazines
	]
] call CBA_fnc_addPerFrameHandler;

nil