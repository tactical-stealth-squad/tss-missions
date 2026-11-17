#include "script_components.hpp"

GVAR(VEHICLE_CACHE) = [
    block01, block02, block03, block04, block05, block06, block07, block08,
    block09, block10, block11, block12
] apply {
    private _pos = getPos _x;
    private _vecUp = vectorUpVisual _x;
    private _vecDir = vectorDirVisual _x; 
    deleteVehicle _x;
    [_pos, _vecUp, _vecDir]
};
