/* ----------------------------------------------------------------------------
Function: alarm.sqf
 
Version: v1.01
 
Description:
    Plays alarmsound on all given positions (objects). Has to be local at server. Sound is bordcasted to all clients.
    ATTENTION: To many positions (more than 4) will cause performance issuses.
 
Parameters:
    - Time                    <NUMBER> (Multiplicator for time in secounds)
    - Pos                     <ARRAY with OBJECTS>
 
 
 
Example:
    For Triggers or Scripts
    (begin example)
    [30, [Speaker_2, Speaker_2, Speaker_3]] spawn compile preprocessFileLineNumbers "alarm.sqf";﻿
    (end)
 
    30                                      - Multiplicator for time in secounds (20 x 5 secounds = 100 secounds playtime)
    [Speaker_2, Speaker_2, Speaker_3]       - Array with all positions
 
 
Returns:
    Nil
 
Author:
    =TSS= zinki (https://tactical-stealth-squad.de/forums/)
---------------------------------------------------------------------------- */
 
// Script execudes only on server
if (!isServer) exitWith{};
 
// root for sound
//rooot = str missionConfigFile select [0, count str missionConfigFile - 15];
 
// Paramter
Params ["_time", "_pos"];
 
for "_i" from 0 to _time do {
    {
    //playSound3D [rooot + "music\alarm_OPFOR.wss", _x, false, getPos _x, 12, 1, 450]
    playSound3D ["A3\Sounds_F\sfx\alarm_independent.wss", _x, false, getPos _x, 12, 1, 450]
    } foreach _pos;
    sleep 5;
};