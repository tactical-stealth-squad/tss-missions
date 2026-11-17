#include "..\script_components.hpp"

if (!isServer) exitWith {};

params[["_rnd",floor random count GVAR(vips)]];

_selection = GVAR(vipsG) select _rnd;
GVAR(vip) = _selection select 0;
GVAR(vipGuards) = _selection select 1;
GVAR(vips) deleteAt (GVAR(vips) find GVAR(vip));
GVAR(guards) deleteAt (GVAR(guards) find GVAR(vipGuards));

publicVariable QGVAR(vip);
publicVariable QGVAR(vipGuards);

{
    deleteVehicle _x;
} forEach GVAR(vips);
{
    {
        deleteVehicle _x;
    } forEach units _x;
    deleteGroup _x
} forEach GVAR(guards);
