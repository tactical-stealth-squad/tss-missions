diag_log "### Spawn auf dem Server: LastRun_Corzaol ###";
"LastRun_Corzaol" call CBA_fnc_localEvent;

if (!isNil "HC_1") then {
	diag_log "### Spawn auf dem HC: LastRun_Corzaol ###";
	["LastRun_Corzaol", [], owner HC_1] call CBA_fnc_ownerEvent;
};

nil