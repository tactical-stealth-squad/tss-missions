// Jetspawn Script by Hawk 2010
// for http://www.germany-fun.net
// Aufruf mit: nul = [Startposition, Zielposition,Radius,Anzahl] execvm "scripte\jetspawn.sqf"
// Beispiel: nul = [Jetstart1, Jetziel1, 1000, 2] execvm "scripte\jetspawn.sqf"

if (!isServer) exitWith{};

/// Position für Fahrzeugspawn
private _sposition = spawn_hide_5 call CBA_fnc_getPos;

/// Fahrzeugtypen
private _vehicle_types = ["CUP_I_Datsun_PK", "CUP_I_Hilux_SPG9_NAPA", "CUP_I_Hilux_DSHKM_NAPA"];

for "_i" from 1 to 4 do {

    /// Spawn des Fahrzeuges (Fahrzeugtyp wird "gewürfelt")
    private _vehArray = [_sposition, 205, selectrandom _vehicle_types, independent] call BIS_fnc_spawnVehicle;

    /// Gruppe wird auf festes Ziel mit bestimmten Radius gehezt
    [_vehArray select 2, getMarkerPos ["mrk_konvoi", true], 25] call CBA_fnc_taskAttack;

    // Schlafen bis das nächste Fahrzeug gespawnt wird
    sleep (180 + random 30);
};