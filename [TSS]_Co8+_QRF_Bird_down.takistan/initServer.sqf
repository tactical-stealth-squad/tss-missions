#include "script_components.hpp"

PREP(spotter);

[spotter1] call FUNC(spotter);
[spotter2] call FUNC(spotter); 

heli1 setPos [(getPos heli1)#0, (getPos heli1)#1, 0]; 
heli1 flyInHeight 0;

[
	{[spg9, spg9_gunner, currentWeapon spg9] call ace_csw_fnc_ai_reload;},
	[],
	10
] call CBA_fnc_waitAndExecute;