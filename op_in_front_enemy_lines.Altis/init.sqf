diag_log "########### CoXX Missionsname ############";

//Vcom
[] spawn compile preprocessFileLineNumbers "Vcom\VcomInit.sqf";

//MarkerScript
//call compile preprocessFileLineNumbers "scripts\fnc_hideMarkers.sqf";
player addEventhandler ['respawn', {call compile preprocessFileLineNumbers "scripts\fnc_hideMarkers.sqf"}];

//Boxspawner
[box] call compile preprocessFileLineNumbers "scripts\boxer.sqf";

//Plank
call compile preprocessFileLineNumbers "plank\plank_init.sqf";
KBunker_1 	addaction ["Kleiner Bunker", "scripts\fn_plankSetzen.sqf", 1, 3, true, true, "", "typeOf _this isEqualTo ""tss_infantry_engineer"" ", 5]; 
KBunker_2 	addaction ["Kleiner Bunker", "scripts\fn_plankSetzen.sqf", 1, 3, true, true, "", "typeOf _this isEqualTo ""tss_infantry_engineer"" ", 5]; 
KBunker_3 	addaction ["Kleiner Bunker", "scripts\fn_plankSetzen.sqf", 1, 3, true, true, "", "typeOf _this isEqualTo ""tss_infantry_engineer"" ", 5]; 
Sandsack_1 	addaction ["Sandsackwall Lang", "scripts\fn_plankSetzen.sqf", 2, 3, true, true, "", "typeOf _this isEqualTo ""tss_infantry_engineer"" ", 5]; 
Sandsack_2 	addaction ["Sandsackwall Lang", "scripts\fn_plankSetzen.sqf", 2, 3, true, true, "", "typeOf _this isEqualTo ""tss_infantry_engineer"" ", 5]; 
Sandsack_3 	addaction ["Sandsackwall Lang", "scripts\fn_plankSetzen.sqf", 2, 3, true, true, "", "typeOf _this isEqualTo ""tss_infantry_engineer"" ", 5]; 
Sandsack_4 	addaction ["Sandsackwall Lang", "scripts\fn_plankSetzen.sqf", 2, 3, true, true, "", "typeOf _this isEqualTo ""tss_infantry_engineer"" ", 5]; 
Sandsack_5 	addaction ["Sandsackwall Lang", "scripts\fn_plankSetzen.sqf", 2, 3, true, true, "", "typeOf _this isEqualTo ""tss_infantry_engineer"" ", 5]; 
Sandsack_6 	addaction ["Sandsackwall Lang", "scripts\fn_plankSetzen.sqf", 2, 3, true, true, "", "typeOf _this isEqualTo ""tss_infantry_engineer"" ", 5]; 
Sandsack_7 	addaction ["Sandsackwall Lang", "scripts\fn_plankSetzen.sqf", 2, 3, true, true, "", "typeOf _this isEqualTo ""tss_infantry_engineer"" ", 5]; 
Sandsack_8 	addaction ["Sandsackwall Lang", "scripts\fn_plankSetzen.sqf", 2, 3, true, true, "", "typeOf _this isEqualTo ""tss_infantry_engineer"" ", 5]; 
Sandsack_9 	addaction ["Sandsackwall Lang", "scripts\fn_plankSetzen.sqf", 2, 3, true, true, "", "typeOf _this isEqualTo ""tss_infantry_engineer"" ", 5]; 
Sandsack_10	addaction ["Sandsackwall Lang", "scripts\fn_plankSetzen.sqf", 2, 3, true, true, "", "typeOf _this isEqualTo ""tss_infantry_engineer"" ", 5]; 
Sandsack_11	addaction ["Sandsackwall Lang", "scripts\fn_plankSetzen.sqf", 2, 3, true, true, "", "typeOf _this isEqualTo ""tss_infantry_engineer"" ", 5]; 
Sandsack_12	addaction ["Sandsackwall Lang", "scripts\fn_plankSetzen.sqf", 2, 3, true, true, "", "typeOf _this isEqualTo ""tss_infantry_engineer"" ", 5]; 
Sandsack_13	addaction ["Sandsackwall Lang", "scripts\fn_plankSetzen.sqf", 2, 3, true, true, "", "typeOf _this isEqualTo ""tss_infantry_engineer"" ", 5]; 
Sandsack_14	addaction ["Sandsackwall Lang", "scripts\fn_plankSetzen.sqf", 2, 3, true, true, "", "typeOf _this isEqualTo ""tss_infantry_engineer"" ", 5]; 
Sandsack_15	addaction ["Sandsackwall Lang", "scripts\fn_plankSetzen.sqf", 2, 3, true, true, "", "typeOf _this isEqualTo ""tss_infantry_engineer"" ", 5]; 
Wire_1 		addaction ["Stacheldraht", "scripts\fn_plankSetzen.sqf", 3, 3, true, true, "", "typeOf _this isEqualTo ""tss_infantry_engineer"" ", 5]; 
Wire_2 		addaction ["Stacheldraht", "scripts\fn_plankSetzen.sqf", 3, 3, true, true, "", "typeOf _this isEqualTo ""tss_infantry_engineer"" ", 5]; 
Wire_3 		addaction ["Stacheldraht", "scripts\fn_plankSetzen.sqf", 3, 3, true, true, "", "typeOf _this isEqualTo ""tss_infantry_engineer"" ", 5]; 
Wire_4 		addaction ["Stacheldraht", "scripts\fn_plankSetzen.sqf", 3, 3, true, true, "", "typeOf _this isEqualTo ""tss_infantry_engineer"" ", 5]; 
Wire_5 		addaction ["Stacheldraht", "scripts\fn_plankSetzen.sqf", 3, 3, true, true, "", "typeOf _this isEqualTo ""tss_infantry_engineer"" ", 5]; 
Wire_6 		addaction ["Stacheldraht", "scripts\fn_plankSetzen.sqf", 3, 3, true, true, "", "typeOf _this isEqualTo ""tss_infantry_engineer"" ", 5]; 
Wire_7 		addaction ["Stacheldraht", "scripts\fn_plankSetzen.sqf", 3, 3, true, true, "", "typeOf _this isEqualTo ""tss_infantry_engineer"" ", 5]; 