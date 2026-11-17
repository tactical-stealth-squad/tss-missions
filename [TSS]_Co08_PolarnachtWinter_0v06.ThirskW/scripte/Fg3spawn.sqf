if (!isServer) exitWith {};

private _grpArray = ["CUP_B_CDF_Soldier_TL_SNW", "CUP_B_CDF_Soldier_SNW", "CUP_B_CDF_Medic_SNW", "CUP_B_CDF_Soldier_AR_SNW", "CUP_B_CDF_Soldier_GL_SNW"];

"Defpos" setMarkerPos getPos Lar;
sleep 5;

private _Fg3 = [(getMarkerpos "Defpos"), east, _grpArray] call bis_fnc_spawngroup;
sleep 5;
//Position Defpos bewachen
[_Fg3, (getMarkerpos "Defpos")] call BIS_fnc_taskDefend;

sleep 5;
private _Fg4 = [["defpos", 25] call CBA_fnc_randPos, east, _grpArray] call bis_fnc_spawngroup;
sleep 5;
//Position Defpos bewachen
[_Fg4, _Fg4, 150] call CBA_fnc_taskPatrol;

sleep 5;
private _Fg5 = [[feuer, 8] call CBA_fnc_randPos, east, _grpArray] call bis_fnc_spawngroup;
sleep 5;
//Position Defpos bewachen
[_Fg5, getPos feuer] call BIS_fnc_taskDefend