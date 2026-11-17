/* ----------------------------------------------------------------------------
Function: fnc_fallies.sqf

Version: v0.00

Description:
    Spawns a helicopter with crew and a group in his cargo. Group gets paradropped at the second waypoint and attacks the attacking position (CBA_fnc_TaskAttack). Afterwards the heli flys back to his starting position and both heli and crew get deleted or attacks the same position as the ex-cargo group.

Parameters:
    - Starting position		<MARKER, OBJECT, LOCATION, GROUP, TASK or POSITION>
    - Paradrop WP position  <MARKER, OBJECT, LOCATION, GROUP, TASK or POSITION>
    - Helitype				<Classname of a helicopter (string)>
    - Side					<EAST, WEST, INDEPENDENT, CIVILIAN>
    - UnitArray				<A list of character types (Array), an amount of characters to spawn (Number) or a CfgGroups entry (Config)>
    - Attacking position    <MARKER, OBJECT, LOCATION, GROUP, TASK or POSITION>
    - Delete                <BOOLEAN>; Heli flys back and gets deleted (true) or Heli attacks Attackpos (false)

Example:
    In Triggers or Scripts:
    (begin example)
    ["SP1", "LP1", "O_Heli_Transport_04_covered_F", east, ["O_Soldier_F", "O_Soldier_F", "O_Soldier_F", "O_Soldier_F"], player, true] spawn compile preprocessFileLineNumbers "fnc_fallies.sqf";
	(end)

    "SP1"															- Startingpoint (marker)
    "SP2"															- Second Waypoint for paradrop (marker)
	"O_Heli_Transport_04_covered_F" 								- Helitype (string)
	east															- Side
	["O_Soldier_F", "O_Soldier_F", "O_Soldier_F", "O_Soldier_F"]	- Array of classnames
    Player                                                          - Position for CBA_fnc_TaskAttack (object)
    true                                                            - Heli flys back and gets deleted

Returns:
    Nothing

Author:
    =TSS= zinki (https://tactical-stealth-squad.de/forums/)
    Inspired by Hawk 2010 (www.germany-fun.net)
---------------------------------------------------------------------------- */

// Script execudes only on server
//if (!isServer) exitWith{};

// Paramter
Params ["_spos", "_lpos", "_helitype", "_side", "_unitArray", "_AttackPos", "_delete"];

// Variables for positions
private _sposition = _spos call CBA_fnc_getPos;
private _lposition = _lpos call CBA_fnc_getPos;
private _AttackPosition = _AttackPos call CBA_fnc_getPos;

// Creates heli with crew at starting position
private _grp = createGroup _side;
private _vehicleArray = [_sposition, 0, _helitype, _side] call bis_fnc_spawnvehicle;
(_vehicleArray select 0) flyinHeight 75;

// Creates group at position [0,0,0]
private _paragrp = [[0,0,0], _side, _unitArray, [], [],[1,1,1]] call BIS_fnc_spawnGroup;

// Adds parachute && moves group into the cargo of the heli
{
    removeBackpackGlobal _x;
    _x addBackpackGlobal "B_parachute";
    _x assignAsCargo (_vehicleArray select 0);
    _x moveInCargo (_vehicleArray select 0)
} foreach units _paragrp;

// Sets the behaviour of the crew/pilot
(_vehicleArray select 2) setBehaviour "CARELESS";
(_vehicleArray select 2) setCombatMode "BLUE";
(_vehicleArray select 2) deleteGroupWhenEmpty true;

// Second Waypoint for paradrop
private _wp1 = (_vehicleArray select 2) addWaypoint [_lposition, 0];
_wp1 setWaypointType "MOVE";
_wp1 setWaypointSpeed "NORMAL";
_wp1 setWaypointCompletionRadius 1;

// Paradrop
waitUntil {sleep 1; (_vehicleArray select 0) distance2D _lposition < 150};
if (alive (_vehicleArray select 0)) then {
    {
        unassignvehicle _x;
        _x action ["EJECT", vehicle _x];
        sleep 0.512;
    } forEach units _paragrp
};

//CBA_fnc_TaskAttack at given position for the ex-cargocrew
[_paragrp, _AttackPosition, 50, true] call CBA_fnc_taskAttack;

// Delete Heli or Heli attack attacking position
if (_delete) then {
    // Waypoint for the heli back to starting position
    private _wp2 = (_vehicleArray select 2) addwaypoint [_sposition, 0];
    _wp2 setWaypointType "MOVE";
    _wp2 setWaypointSpeed "FULL";
    _wp2 setWaypointCompletionRadius 1;

    // Delete heli (object), crew (units) and crewgroup (emptygroup after deleting the units)
    waitUntil {sleep 1; (_vehicleArray select 0) distance2D _sposition < 150};

    // Deletes last WP
    [(_vehicleArray select 2)] call CBA_fnc_clearWaypoints;

    // Deletes heli and Crew
    deletevehicle (_vehicleArray select 0); {deleteVehicle _x} foreach units (_vehicleArray select 2)
} else {
    // Heli attacks attacking position
    [(_vehicleArray select 0), _AttackPosition, 150, true] call CBA_fnc_taskAttack
}