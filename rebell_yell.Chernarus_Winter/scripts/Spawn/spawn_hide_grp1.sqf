// Jetspawn Script by Hawk 2010
// for http://www.germany-fun.net
// Aufruf mit: nul = [Startposition, Zielposition,Radius,Anzahl] execvm "scripte\jetspawn.sqf"
// Beispiel: nul = [Jetstart1, Jetziel1, 1000, 2] execvm "scripte\jetspawn.sqf"

if (!isServer) exitWith {};

/// Position für Fahrzeugspawn
private _sposition = [getPosATL spawn_hide_3, getPosATL spawn_hide_4];

/// Fahrzeugtypen
private _vehicle_type = ["CUP_I_GUE_Local", "CUP_I_GUE_Forester", "CUP_I_GUE_Woodman", "CUP_I_GUE_Woodman", "CUP_I_GUE_Villager", "CUP_I_GUE_Forester"];

for "_i" from 1 to 5 do {

    /// Spawn des Fahrzeuges (Richtung (dir) und Fahrzeugtyp wird "gewürfelt")
    private _grp = [selectrandom _sposition, independent, selectrandom _vehicle_type] call BIS_fnc_spawnGroup;

    /// Gruppe wird auf festes Ziel gehezt
    [_grp, getMarkerPos ["mrk_konvoi", true]] spawn lambs_wp_fnc_taskAssault;

    // Schlafen bis das nächste Fahrzeug gespawnt wird
    sleep (60 + random 30);
};