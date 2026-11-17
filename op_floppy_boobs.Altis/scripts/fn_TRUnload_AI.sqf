/* ----------------------------------------------------------------------------
Function: fn_TRUnload_AI.sqf

Version: v1.03

Description:
    Spawns a helicopter with crew and a group in his cargo. Group is unloaded at the landing position and defends the defending position (CBA_fnc_TaskDefend). Afterwards the heli flys back to his starting position and both heli and crew get deleted.

Parameters:
    - Starting position		<MARKER, OBJECT, LOCATION, GROUP, TASK or POSITION>
    - Landing position		<MARKER, OBJECT, LOCATION, GROUP, TASK or POSITION>
    - Helitype				<Classname of a helicopter (string)>
    - Side					<EAST, WEST, INDEPENDENT, CIVILIAN>
    - UnitArray				<A list of character types (Array), an amount of characters to spawn (Number) or a CfgGroups entry (Config)>
    - Defending position    <MARKER, OBJECT, LOCATION, GROUP, TASK or POSITION>

Example:
    In Triggers or Scripts:
    (begin example)
    ["SP1", "LP1", "O_Heli_Transport_04_covered_F", east, ["O_Soldier_F", "O_Soldier_F", "O_Soldier_F", "O_Soldier_F"], defendinghouse] spawn compile preprocessFileLineNumbers "fn_TRUnload_AI.sqf";
	(end)

    "SP1"															- Startingpoint (marker)
    "SP2"															- Landingpoint (marker)
	"O_Heli_Transport_04_covered_F" 								- Helitype (string)
	east															- Side
	["O_Soldier_F", "O_Soldier_F", "O_Soldier_F", "O_Soldier_F"]	- Array of classnames
    DefendingHouse                                                  - Position for CBA_fnc_TaskDefend (object)

Returns:
    Nothing

Author:
    =TSS= zinki (https://tactical-stealth-squad.de/forums/)
    Inspired by Hawk 2010 (www.germany-fun.net)
---------------------------------------------------------------------------- */

// Script execudes only on server
if (!isServer) exitWith{};

// Paramter
Params ["_spos", "_lpos", "_helitype", "_side", "_unitArray", "_DefendPos"];

// Variables for positions
_sposition = _spos call CBA_fnc_getPos;
_lposition = _lpos call CBA_fnc_getPos;
_defendPosition = _DefendPos call CBA_fnc_getPos;

// Creates heli with crew at starting position
_grp = createGroup _side;
_vehicleArray = [_sposition, 0, _helitype, _side] call bis_fnc_spawnvehicle;
(_vehicleArray select 0) flyinHeight 75;

// Creates group at position [0,0,0]
_paragrp = [[0,0,0], _side, _unitArray, [], [],[1,1,1]] call BIS_fnc_spawnGroup;

// Moves group into the cargo of the heli
{_x assignAsCargo (_vehicleArray select 0)} foreach units _paragrp;
{_x moveInCargo (_vehicleArray select 0)} foreach units _paragrp;

// Sets the behaviour of the crew/pilot
(_vehicleArray select 2) setBehaviour "CARELESS";
(_vehicleArray select 2) setCombatMode "BLUE";

// Waypoint for landing/transport unload
_wp1 = (_vehicleArray select 2) addWaypoint [_lposition, 0];
_wp1 setWaypointType "TR UNLOAD";
_wp1 setWaypointSpeed "NORMAL";
_wp1 setWaypointCompletionRadius 1;

//
waitUntil {sleep 1; (_vehicleArray select 0) distance2D _lposition < 150};

// UnAssign Cargo Crew
{unassignvehicle (_vehicleArray select 0)} forEach units _paragrp;

// Wait for the next WP till the full group is on the ground
waitUntil {
    sleep 2;
    (count (crew (_vehicleArray select 0))) isEqualTo (count (units (_vehicleArray select 2)));
};

//CBA_fnc_TaskDefend at given position for the ex-cargocrew
[_paragrp, _defendPosition] call CBA_fnc_taskDefend;

// Waypoint for the heli back to starting position
_wp2 = (_vehicleArray select 2) addwaypoint [_sposition, 0];
_wp2 setWaypointType "MOVE";
_wp2 setWaypointSpeed "FULL";
_wp2 setWaypointCompletionRadius 1;

// Delete heli (object), crew (units) and crewgroup (emptygroup after deleting the units)
waitUntil {sleep 1; (_vehicleArray select 0) distance2D _sposition < 150};

// Deletes last WP
[(_vehicleArray select 2)] call CBA_fnc_clearWaypoints;

// Deletes heli and Crew
deletevehicle (_vehicleArray select 0); {deleteVehicle _x} foreach units (_vehicleArray select 2); (_vehicleArray select 2) deleteGroupWhenEmpty true;