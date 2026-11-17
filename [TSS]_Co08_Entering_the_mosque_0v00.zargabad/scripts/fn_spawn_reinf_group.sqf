if (!isServer) exitWith {};

private _count = _this select 0;

private _spos = [getMarkerPos "mrk_spawn_1", getMarkerPos "mrk_spawn_2"];

/// Fahrzeugtypen
private _vehicle_types = ["CUP_O_TK_INS_Soldier", "CUP_O_TK_INS_Soldier_AT", "CUP_O_TK_INS_Soldier_GL", "CUP_O_TK_INS_Soldier_AR"];

for "_i" from 0 to _count do {

    /// Spawn des Fahrzeuges (Richtung (dir) und Fahrzeugtyp wird "gewürfelt")
    private _grp = [selectrandom _spos, east, _vehicle_types] call BIS_fnc_spawnGroup;

    // kein VCOM
    {
		_x setVariable ["Vcm_Disable",true]
	} foreach (units _grp);

    // Gruppe wird auf festes Ziel mit bestimmten Radius gehezt
    [_grp, 2000, 15, [], [], true] spawn lambs_wp_fnc_taskRush;

    // Schlafen bis ddie nächste Gruppe gespawnt wird
    sleep 180;
};