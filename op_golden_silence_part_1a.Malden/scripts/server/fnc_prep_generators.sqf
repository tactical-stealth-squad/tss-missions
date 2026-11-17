#include "script_components.hpp"

if (!isServer) exitWith {};

{
  _x addEventhandler ["hit", {_this call FUNCS(server,eh_generator)}];
  _x setVariable [QGVAR(manipulated), false, true];
} forEach [gen1, gen2];

DMSG("prep generator done");
