diag_log "################################## Ivan spielt verrückt - Teil 1 ##################################";
//Exec Vcom AI function
private _nul = [] spawn compile preprocessFileLineNumbers "Vcom\VcomInit.sqf";

// Stuff for HC and Server
if (!hasInterface) then {
	// Function initialization
	zinki_fnc_groupSpawn = compile preprocessFileLineNumbers "scripts\spawn\fnc_groupSpawn.sqf";
	// Spawn Eventhandlers
	call compile preprocessFileLineNumbers "scripts\spawn\spawn_EHs.sqf";
	// Group initialization
	RU_Groups = call compile preprocessFileLineNumbers "scripts\Opfor_groups.sqf"
}