#include "script_components.hpp"

if (GVAR(aware)) then {
  DMSG("Fences damaged pfh stoped");
  [_this select 1] call CBA_fnc_removePerFrameHandler;
};

{
  if (damage _x > 0.99) then {
    DMSG("Fence damaged");
    GVAR(damaged_fences) pushBack _x;
    if (!GVAR(fence_pfh_running)) then {
      GVAR(fence_pfh_running) = true;
      [FUNCS(server,pfh_fence_detect), 1] call CBA_fnc_addPerFrameHandler;
    };
  };
} forEach GVAR(fences);

GVAR(fences) = GVAR(fences) - GVAR(damaged_fences);
