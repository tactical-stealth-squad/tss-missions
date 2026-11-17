if (!isServer) exitWith {};

private _grpArray = ["CUP_B_CDF_Soldier_TL_SNW", "CUP_B_CDF_Soldier_SNW", "CUP_B_CDF_Medic_SNW", "CUP_B_CDF_Soldier_AR_SNW", "CUP_B_CDF_Soldier_GL_SNW"];

"At1" setMarkerPos getPos La1;
"At2" setMarkerPos getPos La2;

sleep 5;

{
	private _grp = [(getMarkerpos "Depot"), east, _grpArray] call bis_fnc_spawngroup;
	[_grp, getMarkerpos _x, 200 * _foreachIndex] call bis_fnc_taskAttack;
	sleep 10
} foreach ["At1", "At2"]