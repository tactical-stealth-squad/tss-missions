#include "..\script_components.hpp"

params["_unit"];

private _owner = owner _unit;
[QGVAR(HVTReactExecuteLocal),[_unit,5,5],_owner] call CBA_fnc_ownerEvent;
