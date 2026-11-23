#include "script_components.hpp"

/* prep function */
PREP(handleArtillery);


/* hide markers */
"zone_a" setMarkerAlpha 0.0;
"zone_b" setMarkerAlpha 0.0;
"marker_market" setMarkerAlpha 0.0;

/* Select target set randomly */
GVAR(selected_target_set) = selectRandom [0, 1];
publicVariable QGVAR(selected_target_set);

GVAR(removed_target_set) = ([0, 1] - [GVAR(selected_target_set)]) select 0;
publicVariable QGVAR(removed_target_set);

TRACE_2("", GVAR(selected_target_set), GVAR(removed_target_set));
private _units_to_remove = allUnits select {
    side _x == east && {
        _x getVariable [QGVAR(target_set), -1] == GVAR(removed_target_set)
    }
};

{
    _vehicle = _x;
    if (vehicle _vehicle != _vehicle) then {
        deleteVehicle (vehicle _vehicle);
    };
    deleteVehicle _vehicle;
} forEach _units_to_remove;

GVAR(marketcivs) = allUnits select {_x getVariable [QGVAR(marketciv), false]};
publicVariable QGVAR(marketcivs);

GVAR(roofcivs) = allUnits select {_x getVariable [QGVAR(roofciv), false]};
publicVariable QGVAR(roofcivs);

[0] call FUNC(handleArtillery);
