#include "script_components.hpp"

params["_on"];

private _dmg = if (_on) then {
  DMSG("switch lights on");
  0.0
} else {
  DMSG("switch lights off");
  0.97
};
{
  _x setHit ["light_1_hitpoint", _dmg];
  _x setHit ["light_2_hitpoint", _dmg];
  _x setHit ["light_3_hitpoint", _dmg];
  _x setHit ["light_4_hitpoint", _dmg];
} forEach GVAR(lights);
