// Jetspawn Script by Hawk 2010
// for http://www.germany-fun.net
// Aufruf mit: nul = [Startposition, Zielposition,Radius,Anzahl] execvm "scripte\jetspawn.sqf"
// Beispiel: nul = [Jetstart1, Jetziel1, 1000, 2] execvm "scripte\jetspawn.sqf"

if (!isServer) exitWith {};

/// Position für Fahrzeugspawn
private _sposition = [getPosATL spawn_hide_1, getPosATL spawn_hide_2, getPosATL spawn_hide_6];

/// Fahrzeugtypen
private _vehicle_type = ["CUP_I_GUE_Soldier_AKM", "CUP_I_GUE_Soldier_MG", "CUP_I_GUE_Soldier_AT", "CUP_I_GUE_Soldier_GL"];

for "_i" from 1 to 5 do {

    /// Spawn des Fahrzeuges (Richtung (dir) und Fahrzeugtyp wird "gewürfelt")
    private _grp = [selectrandom _sposition, independent, selectrandom _vehicle_type] call BIS_fnc_spawnGroup;

    /// Gruppe wird auf festes Ziel mit bestimmten Radius gehezt
	[_grp, 2000] spawn lambs_wp_fnc_taskRush;

    // Schlafen bis das nächste Fahrzeug gespawnt wird
    sleep (75 + random 30);
};