/* ----------------------------------------------------------------------------
Function: fn_heliExfil.sqf

Version: v1.05

Description:
    Spawns a helicopter with crew. Flys to given position and hovers over this position to get in.
    Use addaction to fly away. Missions ends automaticly at the spawnpoint.

Parameters:
    - Starting position       <MARKER, OBJECT, LOCATION, GROUP, TASK or POSITION>
    - Exfil position          <MARKER, OBJECT, LOCATION, GROUP, TASK or POSITION>
    - Helitype                <Classname of a helicopter (string)>
    - Side                    <EAST, WEST, INDEPENDENT, CIVILIAN>

Optional:
    - Color of heli           <STRING. Default: "">
    - Code                    <Code to execute. Default: {}>
    - Ende                    <End the game after last WP. Default: True>


Example:
    In Triggers or Scripts:
    (begin example)
    ["SP1", "LP1", "O_Heli_Transport_04_covered_F", east] spawn compile preprocessFileLineNumbers "fn_heliexfil.sqf";﻿
    (end)

    "SP1"                                                           - Startingpoint (marker)
    "SP2"                                                           - Landingpoint (marker)
    "I_Heli_Transport_02_F"                                         - Helitype (string)
    east                                                            - Side

Returns:
    Nothing

Author:
    =TSS= zinki (https://tactical-stealth-squad.de/forums/)
---------------------------------------------------------------------------- */

// Script execudes only on server
if (!isServer) exitWith{};

// Paramter
Params [
    "_spos",
    "_lpos",
    "_helitype",
    "_side",
    ["_color", ""],
    ["_code", {}],
    ["_ende", true]
];

// Variables for positions
private _sposition = _spos call CBA_fnc_getPos;
private _lposition = _lpos call CBA_fnc_getPos;

// Creates heli with crew at starting position
private _vehicleArray = [_sposition, 0, _helitype, _side] call bis_fnc_spawnvehicle;
(_vehicleArray select 0) flyinHeight 75;

// Color of heli
[
    (_vehicleArray select 0),
    [_color, 1],
    true
] call BIS_fnc_initVehicle;

// "Saves" publicVariable in the Heli
(_vehicleArray select 0) setVariable ["global_var_exfil", false, true];

// logic for landing
private _logic = createVehicle ["Land_HelipadEmpty_F", _lposition, [], 0, "CAN_COLLIDE"];

// Addaction for exfil (global for all players)
[
    (_vehicleArray select 0),
    ["<t color='#ff8133'>Exfil</t>",
        {
            params ["_target", "_caller", "_id"];
            _target setVariable ["global_var_exfil", true, true];
            [_target, _id] remoteExec ["removeAction", 0]
        },
        [],
        1.5,
        true,
        true,
        "",
        "true", // _target, _this, _originalTarget
        5
    ]
] remoteExec ["addAction", 0];

// Sets the behaviour of the crew/pilot
(_vehicleArray select 2) setBehaviour "CARELESS";
(_vehicleArray select 2) setCombatMode "BLUE";

//waitUntil {sleep 1; (_vehicleArray select 0) distance _sposition < 150};
(_vehicleArray select 2) setGroupIdGlobal ["%GroupNames :=: %GroupColors","Golf","GroupColor3"];
[leader (_vehicleArray select 2), "Heli is on the way!"] remoteExec ["GlobalChat", 0];


// Waypoint for landing/transport unload
private _wp1 = (_vehicleArray select 2) addWaypoint [_lposition, 0];
_wp1 setWaypointType "MOVE";
_wp1 setWaypointSpeed "NORMAL";
_wp1 setWaypointCompletionRadius 1;

//
waitUntil {sleep 1; (_vehicleArray select 0) distance _lposition < 150};
[(_vehicleArray select 2)] call CBA_fnc_clearWaypoints;
(_vehicleArray select 0) land "GET IN";

//
waitUntil {sleep 2; (_vehicleArray select 0) getVariable ["global_var_exfil", false]};
(_vehicleArray select 0) setVariable ["global_var_exfil", nil, true];
deleteVehicle _logic;

// Waypoint for the heli back to starting position
private _wp2 = (_vehicleArray select 2) addwaypoint [_sposition, 0];
_wp2 setWaypointType "MOVE";
_wp2 setWaypointSpeed "FULL";
_wp2 setWaypointCompletionRadius 1;

//
waitUntil {sleep 1; (_vehicleArray select 0) distance _sposition < 150};

// Deletes WPs
[(_vehicleArray select 2)] call CBA_fnc_clearWaypoints;

//Execude optional code
private _handler = [(_vehicleArray select 0)] spawn _code;

// Fade out and quit the mission
if (_ende) exitWith {
    [["","BLACK",12]] remoteExec ["cutText", 0];
    sleep 10;
    "EveryoneWon" call BIS_fnc_endMissionServer
}