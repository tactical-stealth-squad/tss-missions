diag_log "### Spawn auf dem Server: spawn_hq_support ###";
"spawn_hq_support" call CBA_fnc_localEvent;

if (!isNil "HC_1") then {
	diag_log "### Spawn auf dem HC: spawn_hq_support ###";
	["spawn_hq_support", [], owner HC_1] call CBA_fnc_ownerEvent;
};

nil