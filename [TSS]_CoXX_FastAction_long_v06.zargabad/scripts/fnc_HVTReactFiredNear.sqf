#include "..\script_components.hpp"

params[
  "_unit",
  "_shooter",
  "_distance",
  "_weapon",
  "_muzzle",
  "_mode",
  "_ammo",
  "_gunner"
];

#define MAXDISTANCE 7

if (
    _distance < MAXDISTANCE &&
    {isPlayer _gunner} &&
    {[_unit,"VIEW",_gunner] checkVisibility [eyePos _unit, eyepos _gunner] > 0.7}
) then {
    private _prob = (MAXDISTANCE - _distance)/MAXDISTANCE;
    if (random 1 < _prob) then {
        [_unit] call FUNC(HVTReactExecute);
    };
};
