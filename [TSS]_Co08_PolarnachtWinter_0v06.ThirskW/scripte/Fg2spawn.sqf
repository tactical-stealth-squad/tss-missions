if (!isServer) exitWith {};

private _grpArray = ["CUP_B_CDF_Soldier_TL_SNW", "CUP_B_CDF_Soldier_SNW", "CUP_B_CDF_Medic_SNW", "CUP_B_CDF_Soldier_AR_SNW", "CUP_B_CDF_Soldier_GL_SNW"];

private _grp = [(getMarkerpos "Depot"), east, _grpArray] call bis_fnc_spawngroup;
sleep 5;
"At2" setMarkerPos getPos La2;
[_grp, getMarkerpos "At2", 400] call bis_fnc_taskAttack