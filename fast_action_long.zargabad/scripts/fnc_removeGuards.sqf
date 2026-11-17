#include "..\script_components.hpp"

if (!isServer) exitWith {};

params [
    ["_array",[]],
    ["_nEasy",0],
    ["_nNorm",0],
    ["_nDiff",0]
];

TRACE_1("",_this);

private _remove = 0;
switch (GVAR(difficulty)) do {
    case -1: {
        _remove = _nEasy;
    };
    case 0: {
        _remove = _nNorm;
    };
    case 1: {
        _remove = _nDiff;
    };
};

for "_i" from 1 to _remove do {
    private _delete = selectRandom _array;
    if (!isNil "_delete") then {
        deleteVehicle _delete;
        _array = _array - [_delete];
    };
};
