#include "script_component.hpp"
/*
 * Handle market behaviour, mainly equip random civs with guns.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * None
 *
 * Example:
 * [] call tss_opmortarhunt_fnc_handleMarket
 *
 * Public: No
 */

if (!isServer) exitWith {}; 

private _evil_civs = [GVAR(roofcivs), 2] call CBA_fnc_selectRandomArray;
_evil_civs append ([GVAR(marketcivs), 3] call CBA_fnc_selectRandomArray);

TRACE_1("evil civs", _evil_civs);
{
    [
        {
            TRACE_1("creating evil civ", _this);
            [QGVAR(equipGun), [_this, "CUP_arifle_AK74_Early", 5, "30Rnd_545x39_Mag_F"], _this] call CBA_fnc_targetEvent;
            [{[_this] joinSilent createGroup [east, false];}, _this, random 2] call CBA_fnc_waitAndExecute;
        },
        _x, random 4
    ] call CBA_fnc_waitAndExecute;
} forEach _evil_civs;
