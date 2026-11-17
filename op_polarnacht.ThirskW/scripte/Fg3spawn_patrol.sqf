if (!isServer) exitWith {};

private _grpArray = ["CUP_B_CDF_Soldier_TL_SNW", "CUP_B_CDF_Soldier_SNW", "CUP_B_CDF_Medic_SNW", "CUP_B_CDF_Soldier_AR_SNW", "CUP_B_CDF_Soldier_GL_SNW"];

{
	private _grp = [(getMarkerpos _x),east,_grpArray] call bis_fnc_spawngroup;
	_grp setBehaviour "SAFE";
	_grp setCombatMode "YELLOW";
	sleep 5;
	[_grp, leader _grp, 350, 6] call lambs_wp_fnc_taskPatrol;
	sleep 5
} foreach ["la1", "la2", "at1", "at2"]