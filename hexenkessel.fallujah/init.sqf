diag_log "########### Co18 Hexenkessel  ############";

if !(hasInterface) then {
	spawn_reinf_group = compile preprocessFile "scripts\fn_spawn_reinf_group.sqf";
	spawn_AA_group = compile preprocessFile "scripts\spawn_AA_group.sqf";
};

helper setName "MOTHER";