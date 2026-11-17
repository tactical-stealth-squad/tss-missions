#include "script_components.hpp"

if (GVAR(aware)) then {
    DMSG("Aware pfh stoped");
    [_this select 1] call CBA_fnc_removePerFrameHandler;
};


{
    private _behaviour = behaviour _x;
    private _ignore_aware = _x getVariable [QGVAR(ignore_aware), false];
    if (
        (!(_x getVariable [QGVAR(aware_timeout_running), false])) &&
        {alive _x || !(_x getVariable ["ACE_isUnconscious", false])} &&
        {/*(_behaviour == "AWARE" && !_ignore_aware) ||*/ _behaviour == "COMBAT"} &&
        {!GVAR(aware)}
    ) then {
        DMSG_4("you have been detected by", _x, typeOf _x, _behaviour, _ignore_aware);
        // you have 30-40s to kill the detector
        _x setVariable [QGVAR(aware_timeout_running), true, true];
        [
            {!alive(_this) || {_this getVariable ["ACE_isUnconscious", false]}},
            {
                DMSG_1("Aware Killed", _this);
                _this setVariable [QGVAR(aware_timeout_running), false, true];
            }, _x, 30 + random(10),
            {
                if (!GVAR(aware)) then {
                    DMSG_1("ALARM, ALARM by", _this);
                    GVAR(aware) = true;
                    publicVariable QGVAR(aware);
                    call FUNCS(server,trigger_aware);
                    call FUNCS(server,sim);
                    _this setVariable [QGVAR(aware_timeout_running), false, true];
                };
            }
        ] call CBA_fnc_waitUntilAndExecute
    };
} forEach GVAR(enemies);
