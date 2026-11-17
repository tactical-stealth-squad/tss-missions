// Jetspawn Script by Hawk 2010
// for http://www.germany-fun.net
// Aufruf mit: nul = [Startposition, Zielposition,Radius,Anzahl] execvm "scripte\jetspawn.sqf"
// Beispiel: nul = [Jetstart1, Jetziel1, 1000, 2] execvm "scripte\jetspawn.sqf"

if (!isServer) exitWith{};

// Position für Fahrzeugspawn
private _sposition = spawn_AA call CBA_fnc_getPos;

// Spawn des Fahrzeuges (Fahrzeugtyp wird "gewürfelt")
private _vehArray = [_sposition, 205, "CUP_I_Ural_ZU23_TK_Gue", independent] call BIS_fnc_spawnVehicle;

// Lambs
if (isClass (configFile >> "CfgPatches" >> "lambs_danger")) then {
	{
		_x setVariable ["lambs_danger_disableAI",true]
	} foreach units group (_vehArray select 0)
};

// Gruppe wird auf festes Ziel mit bestimmten Radius gehezt
[_vehArray select 2, selectRandom [attack_AA_1, attack_AA_2], 25] call CBA_fnc_taskAttack