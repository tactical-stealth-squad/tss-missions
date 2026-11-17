#include "script_components.hpp"

DMSG("update units awareness");
if (GVAR(aware)) exitWith {DMSG("stoped -- already ran")};
{
  if (!(isNull _x)) then {
    private _behaviour = behaviour (leader _x);
    if (_behaviour != "AWARE" && _behaviour != "COMBAT") then {
      [QGVAR(set_behaviour),[_x, "COMBAT"], groupOwner _x] call CBA_fnc_ownerEvent;
    };
  };
} forEach GVAR(start_groups);
