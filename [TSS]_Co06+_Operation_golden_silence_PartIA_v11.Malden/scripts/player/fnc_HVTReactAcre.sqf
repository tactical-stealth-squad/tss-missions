#include "..\script_components.hpp"

params["_unit"];

[
    {
        params["_unit"];
        !isNil "_unit"
    },
    {
        params["_unit"];
        TRACE_1("Unit",_unit);
        GVAR(HVTReactAcrePFH) = [FUNCS(player,HVTReactAcrePFH),0.5,[_unit]] call CBA_fnc_addPerFrameHandler;
    },
    [_unit]
] call CBA_fnc_waitUntilAndExecute;
