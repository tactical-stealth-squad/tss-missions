#include "script_components.hpp"

if (GVAR(aware)) then {
  DMSG("Fence detect pfh stoped");
  [_this select 1] call CBA_fnc_removePerFrameHandler;
};

{
  private _unit = _x;
  {
    private _range = _x distance _unit;
    if (_range < GVAR(fence_detect_range)) then {
      DMSG_1("fence breach has been detected by", _unit);
      private _group = group _unit;
      private _groupOwner = groupOwner _group;
      if (isNil "_groupOwner" && {isNull _groupOwner}) then {
        [QGVAR(set_behaviour),[_group, "COMBAT"], _groupOwner] call CBA_fnc_ownerEvent;
      };
    };
  } forEach GVAR(damaged_fences);
} forEach GVAR(enemies);
