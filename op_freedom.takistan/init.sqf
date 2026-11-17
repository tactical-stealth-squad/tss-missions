diag_log "########### Co02-10 Operation Fredom ############";
// Intel
if (isServer OR HasInterface) then {
	if (alive Intel) then {
		[intel] call compile preprocessFileLineNumbers "scripts\intel.sqf"
	}
};