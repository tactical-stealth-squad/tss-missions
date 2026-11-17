// Jetspawn Script by Hawk 2010
// for http://www.germany-fun.net
// Aufruf mit: nul = [Startposition, Zielposition,Radius,Anzahl] execvm "scripte\jetspawn.sqf"
// Beispiel: nul = [Jetstart1, Jetziel1, 1000, 2] execvm "scripte\jetspawn.sqf"

if (!isServer) exitWith {};

private _count = _this select 0;

/// Position für Fahrzeugspawn
private _sposition = spawn_sup call CBA_fnc_getPos;
private _AttackPosition = "marker_125" call CBA_fnc_getPos;

/// Fahrzeugtypen
private _vehicle_types = ["CUP_I_T55_TK_GUE", "CUP_I_BRDM2_TK_Gue", "CUP_I_BMP1_TK_GUE"];

for "_i" from 1 to _count do {

    /// Spawn des Fahrzeuges (Fahrzeugtyp wird "gewürfelt")
    private _vehArray = [_sposition, 205, selectrandom _vehicle_types, independent] call BIS_fnc_spawnVehicle;

    /// Gruppe wird auf festes Ziel mit bestimmten Radius gehezt
    [_vehArray select 2, _AttackPosition, 60] call CBA_fnc_taskAttack;

    // Schlafen bis das nächste Fahrzeug gespawnt wird
    sleep (180 + random 30)
}