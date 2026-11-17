waitUntil {sleep 3; time > 2};

if (!isNil "HC_1") then {
	[
		"Amb_Civ",
		[
		],
		owner HC_1
	] call CBA_fnc_ownerEvent;
} else {
	diag_log "### Kein HC ###";
	for "_i" from 1 to 10 do {
		sleep random 4;
		[
			[spawn_zarg_1, spawn_zarg_2, spawn_zarg_3],
			[spawn_zarg_4, "Area7", "Area0"],
			["CUP_C_TK_Man_08_Waist", "CUP_C_TK_Man_07_Waist", "CUP_C_TK_Man_03_Waist", "CUP_C_TK_Man_01_Waist", "CUP_C_TK_Man_01_Coat", "CUP_C_TK_Man_04", "CUP_C_TK_Man_02"],
			3,
			true
		] call zinki_fnc_CivSpawn;
	};
	sleep 1;
	for "_i" from 1 to 4 do {
		[
			[spawn_zarg_5, spawn_zarg_6],
			["Area1"],
			["CUP_C_TK_Man_08_Waist", "CUP_C_TK_Man_07_Waist", "CUP_C_TK_Man_03_Waist", "CUP_C_TK_Man_01_Waist", "CUP_C_TK_Man_01_Coat", "CUP_C_TK_Man_04", "CUP_C_TK_Man_02"],
			3,
			true
		] call zinki_fnc_CivSpawn
	}
}