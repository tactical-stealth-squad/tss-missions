#include "script_components.hpp"
diag_log "************************* CoXX FastAction *************************";
setTerrainGrid 3.125;

// Vcom
[] spawn compile preprocessFileLineNumbers "Vcom\VcomInit.sqf";

/* preprocess functions */
PREP(handleHeliPad);
PREP(hideMarkers);
PREP(HVTReact);
PREP(HVTReactFiredNear);
PREP(HVTReactAcre);
PREP(HVTReactAcrePFH);
PREP(HVTReactExecute);
PREP(HVTReactExecuteLocal);
PREP(interrogate);
PREP(pullOut);
PREP(removeGuards);
PREP(selectVip);

/* add CBA Events*/
[QGVAR(HVTReactExecuteLocal), FUNC(HVTReactExecuteLocal)] call CBA_fnc_addEventHandler;

/* initialize vars*/
GVAR(difficulty) = ["Difficulty", 0] call BIS_fnc_getParamValue;
GVAR(BLUEFORDETECT) = false;
GVAR(BLUEFORDETECT2) = false;

if (hasInterface) then {
    call FUNC(hideMarkers);
};

[{!isNil QGVAR(vip)},{ call FUNC(pullOut);}] call CBA_fnc_waitUntilAndExecute;
[{!isNil QGVAR(vip)},{ call FUNC(interrogate);}] call CBA_fnc_waitUntilAndExecute;
