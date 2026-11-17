/* ----------------------------------------------------------------------------
Function: fnc_oneKill_APC.sqf

Version: v1.00

Description:


Parameters:
    - EH Parameters
    - debug                 <BOOLEAN - OPTIONAL>



Example:
    vehicle addEventhandler ["hitPart", {[(_this select 0), true] call compile preprocessFileLineNumbers "fnc_oneKill_APC.sqf"}]

Returns:
    Nil

Author:
    Original by iV Ghost - repostet by [TF133] Christovur edit by =TSS= zinki (https://tactical-stealth-squad.de/forums/)
---------------------------------------------------------------------------- */

// VARIABLES
Params ["_EHArray", ["_debug", false]];
_EHArray params ["_target", "_shooter", "_projectile", "_position", "_velocity", "_selection", "_ammo", "_vector", "_radius", "_surfaceType", "_isDirect"];

// CLOSE IF TARGET IS PLAYER
if (isPlayer _target) exitWith {};
if !(alive _target) exitWith {};

private _caliber = _ammo select 4;

private _caliberList = [
    "ammo_Penetrator_MRAAWS",
    "ammo_Penetrator_MRAAWS_HEAT55",
    "ammo_Penetrator_PG7"
];

private _HitPointlist = [
    ["hit_hull"],
    ["hit_engine"],
    ["hit_fuel"],
    //["water_shield"],
    ["otochlaven", "hit_main_gun"],
    ["otocvez", "hit_main_gun"]
];

// HANDLE SHOT
if (
    (_HitPointlist findIf {_x isEqualTo _selection} isNotEqualTo -1) && (_caliberList findIf {_x isEqualTo _caliber} isNotEqualTo -1)
) then {
    // Remove Eventhandler
    _target removeEventHandler ["HitPart", _thisEventHandler];
    _target allowDamage true;
    _target setDamage 1
};

// DEBUG
if (_debug) then {
    hint format [
        "selection = %1 \n
        caliber = %2",
        _selection, _caliber
    ];
    diag_log format [
        "selection = %1 \n
        caliber = %2",
        _selection, _caliber
    ]
};

nil