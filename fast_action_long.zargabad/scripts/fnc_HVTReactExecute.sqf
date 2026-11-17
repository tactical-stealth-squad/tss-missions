#include "..\script_components.hpp"

params["_unit"];

private _owner = owner _unit;
[QGVAR(HVTReactExecuteLocal),[_unit,15,10],_owner] call CBA_fnc_ownerEvent;
