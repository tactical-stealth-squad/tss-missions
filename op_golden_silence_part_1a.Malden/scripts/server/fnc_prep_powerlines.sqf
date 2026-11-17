//nearestTerrainObjects [[7378, 10093, 78], ["POWER LINES"], 680]
#include "script_components.hpp"

if (!isServer) exitWith {};

GVAR(damaged_powerline) = false;
publicVariable QGVAR(damaged_powerline);

// find all powerlines
private _powerlines = nearestTerrainObjects [[7378, 10093, 78], ["POWER LINES"], 680];

// find all polers and remove the wires
_powerlines = _powerlines apply {
  if ((toLower(str(_x)) find "wire") != -1) then {
    "";
  } else {
    private _eh = _x addEventhandler ["hit", {
      _this call FUNCS(server,eh_powerline);
    }];
    _x;
  };
};
_powerlines = _powerlines - [""];

// create some dummies for the actions
GVAR(power_line_dummies) = [];
{
  private _helperObject = "ACE_LogicDummy" createVehicle [0,0,0];
  GVAR(power_line_dummies) pushBack _helperObject;
  private _pos = getPosATL _x;
  _pos = [_pos select 0, _pos select 1, 1];
  _helperObject setPosATL _pos;
} forEach _powerlines;
// make power line dummies public
publicVariable QGVAR(power_line_dummies);

DMSG("prep power line done");
