#include "..\script_components.hpp"

params[
    "_unit",
    ["_baseTime",5],
    ["_rndTime",5]
];

private _HVTReactPFH = _unit getVariable [QGVAR(HVTReactPFH), false];
_unit setVariable [QGVAR(HVTReactTime), diag_tickTime + _baseTime + random(_rndTime)];

TRACE_1("Test",_unit);

if (!_HVTReactPFH) then {
    _unit setVariable [QGVAR(HVTReactPFH), true];
    [_unit, true] call ace_captives_fnc_setSurrendered;
    [
        {
            params["_unit"];
            diag_tickTime > _unit getVariable QGVAR(HVTReactTime)
        },
        {
            params["_unit"];
            TRACE_1("untie",_unit);
            [_unit, false] call ace_captives_fnc_setSurrendered;
            _unit setVariable [QGVAR(HVTReactPFH), false];
        },
        [_unit]
    ] call CBA_fnc_waitUntilAndExecute;
};
