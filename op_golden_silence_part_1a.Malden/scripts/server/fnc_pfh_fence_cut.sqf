#include "script_components.hpp"

if (GVAR(cut_fences) isEqualTo []) then {
  DMSG("Fence cut pfh stoped");
  [_this select 1] call CBA_fnc_removePerFrameHandler;
};

private _delete = [];
{
  if (getdammage _x > 0.95) then {
    _delete pushBack _x;
  };
  private _fence = _x;
  {
    private _leader = leader _x;
    if ((_leader distance _fence) < 8) then {
      _fence setDamage 1;
      DMSG_2("fence cut down", _fence, _leader);
      _delete pushBack _fence;
    };
  } forEach GVAR(enemy_groups);
} forEach GVAR(cut_fences);

GVAR(cut_fences) = GVAR(cut_fences) - _delete;
