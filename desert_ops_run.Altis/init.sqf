if (isServer) then {

call compileFinal preprocessFileLineNumbers "factions.sqf";

[] call RYD_DA_InitAll;

fnc_cleanup = compileFinal preprocessFileLineNumbers "cleanup.sqf";
publicVariable "fnc_cleanup";

[] spawn {

    while {true} do { 

     [] call fnc_cleanup;

     sleep 240;
    };
 };
};

// Compile scripts
getLoadout = compile preprocessFileLineNumbers 'get_loadout.sqf';
setLoadout = compile preprocessFileLineNumbers 'set_loadout.sqf';
               					                                    
// Save loadout every 2 seconds
[] spawn {
   /* while{true} do {
        if(alive player) then {
            respawnLoadout = [player] call getLoadout;
        };
    sleep 2; 
    };*/
	
	waitUntil
		{
		sleep 0.1;
		(alive player)
		};
		
	savedLoadout = [player] call getLoadout;
};

// Added load and save actions to player ammo boxes
{
	    _x addAction ["<t color='#ff1111'>Save loadout</t>", { savedLoadout = [player] call getLoadout; }];
	    _x addAction ["<t color='#00cc00'>Load loadout</t>", { [player, savedLoadout] spawn setLoadout; }];   
	}
forEach [box1,box2,box3,box4];

[] spawn
	{
	waitUntil
		{
		sleep 0.1;
		not (isNil "RYD_DA_RestoreStuff")
		};
		
	[] call RYD_DA_RestoreStuff;
	
	/*while {true} do
		{
		diag_log format ["deltime: %1 alive: %2 dead: %3 fps: %4",time,(resistance countSide allUnits),(count allDead),diag_fps];
		
			{
			if ((side _x) == resistance) then 
				{
				_x setDamage 1
				}
			} 
		foreach allUnits;
		
		hintSilent format ["Deleted. FPS: %1",diag_fps];
		
		sleep 20;
		}*/
	};

//Vcom
[] spawn compile preprocessFileLineNumbers "Vcom\VcomInit.sqf";