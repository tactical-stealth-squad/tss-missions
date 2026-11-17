diag_log "########### CoXX Missionsname ############";

// VCOM
[] spawn compile preprocessFileLineNumbers "Vcom\VcomInit.sqf";

//MarkerScript
call compile preprocessFileLineNumbers "scripts\fnc_hideMarkers.sqf";

//Plank
call compile preprocessFileLineNumbers "plank\plank_init.sqf";
KBunker_1 	addaction ["Kleiner Bunker", "scripts\fn_plankSetzen.sqf", 1, 3, true, true, "", "typeOf _this isEqualTo ""B_Survivor_F"" ", 5]; 
KBunker_2 	addaction ["Kleiner Bunker", "scripts\fn_plankSetzen.sqf", 1, 3, true, true, "", "typeOf _this isEqualTo ""B_Survivor_F"" ", 5]; 
KBunker_3 	addaction ["Kleiner Bunker", "scripts\fn_plankSetzen.sqf", 1, 3, true, true, "", "typeOf _this isEqualTo ""B_Survivor_F"" ", 5]; 
KBunker_4 	addaction ["Kleiner Bunker", "scripts\fn_plankSetzen.sqf", 1, 3, true, true, "", "typeOf _this isEqualTo ""B_Survivor_F"" ", 5]; 
KBunker_5 	addaction ["Kleiner Bunker", "scripts\fn_plankSetzen.sqf", 1, 3, true, true, "", "typeOf _this isEqualTo ""B_Survivor_F"" ", 5]; 
Sandsack_1 	addaction ["Sandsackwall Lang", "scripts\fn_plankSetzen.sqf", 2, 3, true, true, "", "typeOf _this isEqualTo ""B_Survivor_F"" ", 5]; 
Sandsack_2 	addaction ["Sandsackwall Lang", "scripts\fn_plankSetzen.sqf", 2, 3, true, true, "", "typeOf _this isEqualTo ""B_Survivor_F"" ", 5]; 
Sandsack_3 	addaction ["Sandsackwall Lang", "scripts\fn_plankSetzen.sqf", 2, 3, true, true, "", "typeOf _this isEqualTo ""B_Survivor_F"" ", 5]; 
Sandsack_4 	addaction ["Sandsackwall Lang", "scripts\fn_plankSetzen.sqf", 2, 3, true, true, "", "typeOf _this isEqualTo ""B_Survivor_F"" ", 5]; 
Sandsack_5 	addaction ["Sandsackwall Lang", "scripts\fn_plankSetzen.sqf", 2, 3, true, true, "", "typeOf _this isEqualTo ""B_Survivor_F"" ", 5]; 
Sandsack_6 	addaction ["Sandsackwall Lang", "scripts\fn_plankSetzen.sqf", 2, 3, true, true, "", "typeOf _this isEqualTo ""B_Survivor_F"" ", 5]; 
Sandsack_7 	addaction ["Sandsackwall Lang", "scripts\fn_plankSetzen.sqf", 2, 3, true, true, "", "typeOf _this isEqualTo ""B_Survivor_F"" ", 5]; 
Sandsack_8 	addaction ["Sandsackwall Lang", "scripts\fn_plankSetzen.sqf", 2, 3, true, true, "", "typeOf _this isEqualTo ""B_Survivor_F"" ", 5]; 
Sandsack_9 	addaction ["Sandsackwall Lang", "scripts\fn_plankSetzen.sqf", 2, 3, true, true, "", "typeOf _this isEqualTo ""B_Survivor_F"" ", 5]; 
Sandsack_10	addaction ["Sandsackwall Lang", "scripts\fn_plankSetzen.sqf", 2, 3, true, true, "", "typeOf _this isEqualTo ""B_Survivor_F"" ", 5]; 
BBarriere_1 addaction ["Beton Barriere", "scripts\fn_plankSetzen.sqf", 3, 3, true, true, "", "typeOf _this isEqualTo ""B_Survivor_F"" ", 5]; 
BBarriere_2 addaction ["Beton Barriere", "scripts\fn_plankSetzen.sqf", 3, 3, true, true, "", "typeOf _this isEqualTo ""B_Survivor_F"" ", 5]; 
BBarriere_3 addaction ["Beton Barriere", "scripts\fn_plankSetzen.sqf", 3, 3, true, true, "", "typeOf _this isEqualTo ""B_Survivor_F"" ", 5]; 
BBarriere_4 addaction ["Beton Barriere", "scripts\fn_plankSetzen.sqf", 3, 3, true, true, "", "typeOf _this isEqualTo ""B_Survivor_F"" ", 5]; 
BBarriere_5 addaction ["Beton Barriere", "scripts\fn_plankSetzen.sqf", 3, 3, true, true, "", "typeOf _this isEqualTo ""B_Survivor_F"" ", 5]; 
BBarriere_6 addaction ["Beton Barriere", "scripts\fn_plankSetzen.sqf", 3, 3, true, true, "", "typeOf _this isEqualTo ""B_Survivor_F"" ", 5]; 
BBarriere_7 addaction ["Beton Barriere", "scripts\fn_plankSetzen.sqf", 3, 3, true, true, "", "typeOf _this isEqualTo ""B_Survivor_F"" ", 5]; 
BBarriere_8 addaction ["Beton Barriere", "scripts\fn_plankSetzen.sqf", 3, 3, true, true, "", "typeOf _this isEqualTo ""B_Survivor_F"" ", 5]; 
BBarriere_9 addaction ["Beton Barriere", "scripts\fn_plankSetzen.sqf", 3, 3, true, true, "", "typeOf _this isEqualTo ""B_Survivor_F"" ", 5]; 
Wire_1 		addaction ["Stacheldraht", "scripts\fn_plankSetzen.sqf", 4, 3, true, true, "", "typeOf _this isEqualTo ""B_Survivor_F"" ", 5]; 
Wire_2 		addaction ["Stacheldraht", "scripts\fn_plankSetzen.sqf", 4, 3, true, true, "", "typeOf _this isEqualTo ""B_Survivor_F"" ", 5]; 
Wire_3 		addaction ["Stacheldraht", "scripts\fn_plankSetzen.sqf", 4, 3, true, true, "", "typeOf _this isEqualTo ""B_Survivor_F"" ", 5]; 
Wire_4 		addaction ["Stacheldraht", "scripts\fn_plankSetzen.sqf", 4, 3, true, true, "", "typeOf _this isEqualTo ""B_Survivor_F"" ", 5]; 
Wire_5 		addaction ["Stacheldraht", "scripts\fn_plankSetzen.sqf", 4, 3, true, true, "", "typeOf _this isEqualTo ""B_Survivor_F"" ", 5]; 
Wire_6 		addaction ["Stacheldraht", "scripts\fn_plankSetzen.sqf", 4, 3, true, true, "", "typeOf _this isEqualTo ""B_Survivor_F"" ", 5]; 
Wire_7 		addaction ["Stacheldraht", "scripts\fn_plankSetzen.sqf", 4, 3, true, true, "", "typeOf _this isEqualTo ""B_Survivor_F"" ", 5]; 
Wire_8 		addaction ["Stacheldraht", "scripts\fn_plankSetzen.sqf", 4, 3, true, true, "", "typeOf _this isEqualTo ""B_Survivor_F"" ", 5]; 
Wire_9 		addaction ["Stacheldraht", "scripts\fn_plankSetzen.sqf", 4, 3, true, true, "", "typeOf _this isEqualTo ""B_Survivor_F"" ", 5]; 
Wire_10		addaction ["Stacheldraht", "scripts\fn_plankSetzen.sqf", 4, 3, true, true, "", "typeOf _this isEqualTo ""B_Survivor_F"" ", 5]; 
Wire_11		addaction ["Stacheldraht", "scripts\fn_plankSetzen.sqf", 4, 3, true, true, "", "typeOf _this isEqualTo ""B_Survivor_F"" ", 5]; 
Wire_12		addaction ["Stacheldraht", "scripts\fn_plankSetzen.sqf", 4, 3, true, true, "", "typeOf _this isEqualTo ""B_Survivor_F"" ", 5]; 