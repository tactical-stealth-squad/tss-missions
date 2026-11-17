#include "script_components.hpp"

DMSG("update units awareness to safe");
{
  if (!(isNull _x)) then {
    if (local _x) then {
      _x setBehaviour "SAFE";
    };
  };
} forEach allGroups;
