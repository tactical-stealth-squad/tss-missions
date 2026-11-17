/* ----------------------------------------------------------------------------
Function: fn_civSpawn.sqf

Version: v1.00

Description:
    Spawns a group of civilians at random position. They will walk to another position and the get "dismissed" (https://community.bistudio.com/wiki/Waypoint_types#Dismissed).
    Sadly it is not possible to holster civilians weapon. It is recommed to use the script on HC.

Parameters:
    - Starting position       <ARRAY with MARKER, OBJECT, LOCATION, GROUP, TASK or POSITION>
    - End position	          <ARRAY with MARKER, OBJECT, LOCATION, GROUP, TASK or POSITION>
    - Civiliantyps            <ARRAY with Classname of a civilians>
    - Amount		          <Amount of civilians each group (Number)>

Optional:
    - HasWeapons              <BOLEAN for random equiped civilians with AKs (chance of 50%); Default: false>


Example:
    For Triggers or Scripts
    (begin example)
    [["SP1", "LP1"], [HeliH, "SS1"], ["LOP_Tak_Civ_Man_12", "LOP_Tak_Civ_Man_01", "LOP_Tak_Civ_Man_08"], 4, true] call compile preprocessFileLineNumbers "fn_civSpawn.sqf";﻿
    (end)

    ["SP1", "LP1"]                                                          - Array with starting position
    [HeliH, "SS1"]                                                          - Array with end position
    ["LOP_Tak_Civ_Man_12", "LOP_Tak_Civ_Man_01", "LOP_Tak_Civ_Man_08"]      - Array of civilian classnames
    4                                                                       - Number of civilian for each group
    true                                                                    - A chance of 50% that one civilian will have an AK


Returns:
    Nil

Author:
    =TSS= zinki (https://tactical-stealth-squad.de/forums/)
---------------------------------------------------------------------------- */

Params [
    "_local_var_randomSpawnPosArray",
    "_local_var_randomWPPosArray",
    "_local_var_civTypeArray",
    "_amount",
    ["_HasWeapon", false]
];

// position for frist waypoint (and spawnposition of the civilians)
_local_var_SpawnPos = selectrandom _local_var_randomSpawnPosArray;
_local_var_randomSpawnPos = [_local_var_SpawnPos] call CBA_fnc_getPos;

// position of the last waypoint
_local_var_WPPos = selectrandom _local_var_randomWPPosArray;
_local_var_randomWPPos = [_local_var_WPPos] call CBA_fnc_getPos;

// Array for counting the civilians
_local_var_civAmountArray = [];
for "_i" from 1 to _amount do {
	_local_var_civType = selectrandom _local_var_civTypeArray;
	_local_var_civAmountArray pushBack _local_var_civType
};

[
    {
        // Waits until array is completed
        _this params ["_local_var_civAmountArray", "_local_var_randomSpawnPos", "_local_var_randomWPPos", "_amount", "_HasWeapon"];
        (count _local_var_civAmountArray) isEqualTo _amount
    },
    {
        _this params ["_local_var_civAmountArray", "_local_var_randomSpawnPos", "_local_var_randomWPPos",  "_amount", "_HasWeapon"];
        // Spawns group
        _local_var_group = [[0,0,0], civilian, _local_var_civAmountArray] call BIS_fnc_spawnGroup;

        // Skillsettings to 0 to save performance
        {
            _x setSkill 0;
            _x setPos _local_var_randomSpawnPos
        } foreach units _local_var_group;

        // Frist waypoint
        _local_var_wp1 = _local_var_group addwaypoint [_local_var_randomSpawnPos, 0];
        _local_var_wp1 setWaypointType "MOVE";
        _local_var_wp1 setWaypointBehaviour "SAFE";
        _local_var_wp1 setWaypointSpeed "LIMITED";

        // Last Waypoint
        _local_var_wp2 = _local_var_group addwaypoint [_local_var_randomWPPos, 0];
        _local_var_wp2 setWaypointType "Dismiss";
        _local_var_wp2 setWaypointBehaviour "SAFE";
        _local_var_wp2 setWaypointSpeed "LIMITED";

        // Chance to have a weapon
        if (_HasWeapon) then {
            _chance = selectrandom [1, 2];
            if (_chance isEqualTo 2) then {
                _randomCiv = selectrandom (units _local_var_group);
                _randomCiv addWeaponGlobal "arifle_AK12_F";
                _randomCiv addMagazine ["30Rnd_762x39_Mag_F", 2]
            }
        }
    },
    [
        _local_var_civAmountArray, _local_var_randomSpawnPos, _local_var_randomWPPos, _amount, _HasWeapon
    ]
] call CBA_fnc_waitUntilAndExecute;