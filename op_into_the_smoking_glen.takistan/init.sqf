diag_log "########### CoXX Missionsname ############";

//Vcom
[] spawn compile preprocessFileLineNumbers "Vcom\VcomInit.sqf";

//MarkerScript
//call compile preprocessFileLineNumbers "scripts\fnc_hideMarkers.sqf";
player addEventhandler ['respawn', {call compile preprocessFileLineNumbers "scripts\fnc_hideMarkers.sqf"}];

//Boxspawner
[box] call compile preprocessFileLineNumbers "scripts\boxer.sqf";

