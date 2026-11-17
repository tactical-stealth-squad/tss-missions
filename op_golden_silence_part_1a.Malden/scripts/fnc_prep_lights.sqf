#include "script_components.hpp"

params["_pos", "_radius"];

if (isServer) then {
  GVAR(blackout_once) = false;
  publicVariable QGVAR(blackout_once);
};

GVAR(lights) = nearestObjects [[7100, 10100, 100], [
  "Lamps_base_F",
  "PowerLines_base_F",
  "PowerLines_Small_base_F"
], 700];

DMSG("prep lights done");
