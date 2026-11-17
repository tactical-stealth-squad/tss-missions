// Jetspawn Script by Hawk 2010
// for http://www.germany-fun.net
// Aufruf mit: nul = [Startposition, Zielposition,Radius,Anzahl] execvm "scripte\jetspawn.sqf"
// Beispiel: nul = [Jetstart1, Jetziel1, 1000, 2] execvm "scripte\jetspawn.sqf"

if (!isServer) exitWith {};

Params ["_count", "_task"];

private _spos = [getMarkerPos "mrk_spawn_1", getMarkerPos "mrk_spawn_2"];

/// Fahrzeugtypen
private _vehicle_types = [
    ["CUP_O_TK_INS_Soldier_MG", "CUP_O_TK_INS_Soldier_GL", "CUP_O_TK_INS_Soldier_AT", "CUP_O_TK_INS_Soldier", "CUP_O_TK_INS_Soldier_GL", "CUP_O_TK_INS_Soldier_AR"],
    ["CUP_O_TK_INS_Soldier_Enfield", "CUP_O_TK_INS_Soldier_FNFAL", "CUP_O_TK_INS_Soldier_GL", "CUP_O_TK_INS_Soldier_AR"]
];

for "_i" from 0 to _count do {

    /// Spawn des Fahrzeuges (Richtung (dir) und Fahrzeugtyp wird "gewürfelt")
    private _grp = [selectrandom _spos, east, selectrandom _vehicle_types] call BIS_fnc_spawnGroup;

    // kein LAMBS und VCOM
    {
		//_x setVariable ["lambs_danger_disableAI", true];
		_x setVariable ["Vcm_Disable",true]
	} foreach (units _grp);

    // Task
    switch (_task) do {

        case 0: {
            // Gruppe wird auf festes Ziel mit bestimmten Radius gehezt
            [_grp, 2000] spawn lambs_wp_fnc_taskCreep;
        };

        case 1: {
            // Gruppe wird auf festes Ziel mit bestimmten Radius gehezt
            [_grp, 2000] spawn lambs_wp_fnc_taskRush;
        };

    };

    // Schlafen bis ddie nächste Gruppe gespawnt wird
    sleep (60 + random 30);
};