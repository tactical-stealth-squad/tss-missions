private _trgt = [trgt_1, trgt_2, trgt_3] - [selectRandom [trgt_1, trgt_2, trgt_3]];

{
	deleteVehicle _x;
	
} forEach _trgt;

{
	{
		_x switchLight "OFF";
	} forEach [lights_offshore_1,lights_offshore_2,lights_offshore_3,lights_offshore_4];

	{
		_x switchLight "OFF";
	} forEach [lights_bunker_1,lights_bunker_2,lights_bunker_3,lights_bunker_4,lights_bunker_5,lights_bunker_6];
} remoteExec["BIS_fnc_call",0,true];

{
	private _uniform = selectRandom ["U_I_C_Soldier_Bandit_1_F", "U_I_C_Soldier_Bandit_2_F", "U_I_C_Soldier_Bandit_3_F","U_I_C_Soldier_Bandit_4_F","U_I_C_Soldier_Bandit_5_F","U_C_Poloshirt_blue","U_C_Poloshirt_tricolour","U_I_L_Uniform_01_tshirt_black_F","U_I_L_Uniform_01_tshirt_skull_F","U_I_L_Uniform_01_tshirt_sport_F","U_C_Mechanic_01_F","U_C_Man_casual_6_F","U_C_Man_casual_4_F","U_C_Man_casual_5_F","U_C_Poor_1"];

	_x forceAddUniform _uniform;
} foreach (units independent);

call compile preprocessFile "loadout_cars.sqf";