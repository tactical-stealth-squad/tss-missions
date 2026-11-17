#include "script_components.hpp"
diag_log "************************* CoXX FastAction *************************";
setTerrainGrid 3.125;

// Vcom
[] spawn compile preprocessFileLineNumbers "Vcom\VcomInit.sqf";

GVAR(HasCars) = ["HasCars", 1] call BIS_fnc_getParamValue;
GVAR(HasApcs) = ["HasApcs", 1] call BIS_fnc_getParamValue;
GVAR(HasMbts) = ["HasMbts", 1] call BIS_fnc_getParamValue;
GVAR(HasHelis) = ["HasHelis", 1] call BIS_fnc_getParamValue;
GVAR(HasMortar) = ["HasMortar", 1] call BIS_fnc_getParamValue;
GVAR(BLUEFORDETECT) = false;
GVAR(maxCount) = 110;

"ao_large" setMarkerAlpha 0;
"ao_center" setMarkerAlpha 0;
"forty_1" setMarkerAlpha 0;
"forty_2" setMarkerAlpha 0;
"forty_3" setMarkerAlpha 0;

if (isServer) then {
    // reset bluefor detect for continous spawning
    FUNC(recFct) = {
        [
            {GVAR(BLUEFORDETECT) = !GVAR(BLUEFORDETECT); [] call FUNC(recFct);},
            "", 60
        ] call CBA_fnc_waitAndExecute;
    };
    [
        {GVAR(BLUEFORDETECT)},
        {[] call FUNC(recFct)}
    ] call CBA_fnc_waitUntilAndExecute;
    // make units permanently unconcious
    [
        {
            [unc_0, true, 999999] call ace_medical_fnc_setUnconscious;
            [unc_1, true, 999999] call ace_medical_fnc_setUnconscious;
        }
    ] call CBA_fnc_addPerFrameHandler;

    // add damage to units
    [unc_0, 0.8, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
    [unc_0, 0.9, "head", "bullet"] call ace_medical_fnc_addDamageToUnit;
    [unc_1, 0.7, "body", "bullet"] call ace_medical_fnc_addDamageToUnit;
    [unc_1, 0.8, "head", "bullet"] call ace_medical_fnc_addDamageToUnit;
};
