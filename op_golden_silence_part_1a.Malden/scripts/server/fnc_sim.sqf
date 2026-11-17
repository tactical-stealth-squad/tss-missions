#include "script_components.hpp"

// 
if (("mode" call BIS_fnc_getParamValue) % 3 == 0) then {
    call FUNC(manipulate_powerline);
    [gen1] call FUNC(manipulate_generator);
    [gen2] call FUNC(manipulate_generator);
};

DMSG("AAA Simulator started!");
[
  {
    DMSG("Destroying AAA");
    {
        deleteVehicle _x;
    } forEach GVAR(dummies);
    private _bombTargets = [];
    if (("mode" call BIS_fnc_getParamValue) % 2 == 0) then {
        _bombTargets append [AAA_TARGETS]
    };
    if (("mode" call BIS_fnc_getParamValue) % 3 == 0) then {
        _bombTargets append [RADIO_TARGETS]
    };
    {
        [
            {
                private _ammo = "SatchelCharge_Remote_Ammo" createVehicle (getPos _this vectorAdd [2,2,3]);
                _ammo setDamage 1;
            }, _x, random 20 
        ] call CBA_fnc_waitAndExecute;
    } forEach _bombTargets;
  }, [], 320
] call CBA_fnc_waitAndExecute;
