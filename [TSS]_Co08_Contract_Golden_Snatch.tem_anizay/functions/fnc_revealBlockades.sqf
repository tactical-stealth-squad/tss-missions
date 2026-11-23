 #include "script_components.hpp"

{
    private _veh = "CFP_O_ALQAEDA_Ural_Open_01" createVehicle [0, 0, 10000];
    _veh setPos [_x#0#0, _x#0#1, _x#0#2 + 0.3];
    _veh setVectorDirAndUp [_x#2, _x#1];
} forEach GVAR(VEHICLE_CACHE);
