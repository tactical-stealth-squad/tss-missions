#include "script_component.hpp"
/*
 * Makes the given artillery unit fire on the given position.
 *
 * Arguments:
 * 0: Unit <OBJECT>
 * 1: Gun Class Name <STRING>
 * 2: Number of Magazines <NUMBER>
 * 3: Magazine Class Name <STRING>
 *
 * Return Value:
 * None
 *
 * Example:
 * [_unit, "CUP_arifle_AK74_Early", 5, "30Rnd_545x39_Mag_F"] call tss_opmortarhunt_fnc_equipGun
 *
 * Public: No
 */

params [
    ["_unit", objNull, [objNull]],
    ["_weapon", "", [""]],
    ["_count", 0, [0]],
    ["_magazine", "", [""]]	
];

_unit addWeapon _weapon;
_unit addWeaponItem [_weapon, _magazine, false];
_unit addMagazines [_magazine, _count];
