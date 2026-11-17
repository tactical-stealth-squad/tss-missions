clear_1 = False;
publicVariable "clear_1";

bomb_1 = False;
publicVariable "bomb_1";

bomb_end = False;
publicVariable "bomb_end";

0 setOvercast (random 0.9);
0 setFog (random 0.6);

//Mission parameters
if (isMultiplayer) then {skiptime Param1};

{	_x disableAI 'ALL';
} forEach (units grp_frigate);