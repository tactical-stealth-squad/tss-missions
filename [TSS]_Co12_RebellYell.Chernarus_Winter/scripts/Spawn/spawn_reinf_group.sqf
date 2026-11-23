// Jetspawn Script by Hawk 2010
// for http://www.germany-fun.net
// Aufruf mit: nul = [Startposition, Zielposition,Radius,Anzahl] execvm "scripte\jetspawn.sqf"
// Beispiel: nul = [Jetstart1, Jetziel1, 1000, 2] execvm "scripte\jetspawn.sqf"

if (!isServer) exitWith {};

Params ["_sposition", "_zposition", "_count", "_rad"];

private _sposition = getPosATL _sposition;

/// Fahrzeugtypen
private _vehicle_types = [
    ["CUP_I_GUE_Local", "CUP_I_GUE_Forester", "CUP_I_GUE_Woodman", "CUP_I_GUE_Woodman", "CUP_I_GUE_Villager", "CUP_I_GUE_Forester"],
    ["CUP_I_GUE_Soldier_AKM", "CUP_I_GUE_Soldier_MG", "CUP_I_GUE_Soldier_AT", "CUP_I_GUE_Soldier_GL"]
];

for "_i" from 1 to _count do {

    /// Spawn des Fahrzeuges (Richtung (dir) und Fahrzeugtyp wird "gewürfelt")
    private _grp = [_sposition, independent, selectrandom _vehicle_types] call BIS_fnc_spawnGroup;

    // kein LAMBS und VCOM
    {
		//_x setVariable ["lambs_danger_disableAI", true];
		_x setVariable ["Vcm_Disable",true]
	} foreach (units _grp);

    /// Gruppe wird auf festes Ziel gehezt
    [_grp, _zposition, _rad, true] call CBA_fnc_taskAttack;

    // Schlafen bis das nächste Fahrzeug gespawnt wird
    sleep (60 + random 30);
};