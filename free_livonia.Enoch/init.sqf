diag_log "################################## Free Livonia ##################################";
//Exec Vcom AI function
private _nul = [] spawn compile preprocessFileLineNumbers "Vcom\VcomInit.sqf";

/// Server and player
if (isServer OR HasInterface) then {
	/// Intel file
	if (alive intel_quarry) then {
		[0, intel_quarry] call compile preprocessFileLineNumbers "Scripts\intel.sqf";
	}
};

/// Stuff for HC and Server
if (!hasInterface) then {
	// Function initialization
	zinki_fnc_groupSpawn = compile preprocessFileLineNumbers "scripts\spawn\fnc_groupSpawn.sqf";
	zinki_fnc_infPatrol = compile preprocessFileLineNumbers "scripts\spawn\fnc_infPatrol.sqf";
	// Spawn Eventhandlers
	call compile preprocessFileLineNumbers "scripts\spawn\spawn_EHs.sqf";
	// Group initialization
	call compile preprocessFileLineNumbers "scripts\RU_groups.sqf";
};