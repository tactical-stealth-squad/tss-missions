private _spawn_veh = ["spawn_veh_0","spawn_veh_1","spawn_veh_2"];
private _pos = selectRandom _spawn_veh;
private _attack = [5005.33,5912.72,0];

sleep 3600;

while {time < 7200} do {
	sleep ((10 + random [-1, 0, 1])*60);

	["O_LSV_02_armed_F", _pos, [5005.33,5912.72,0]] call GEA_fnc_spawn_veh;
	sleep 5;
	["O_LSV_02_AT_F", _pos, [5005.33,5912.72,0]] call GEA_fnc_spawn_veh;

	_pos = selectRandom _spawn_veh;

	if (time > 5400) then {
		
		sleep 5;
		[selectRandom ["I_APC_Wheeled_03_cannon_F","O_APC_Tracked_02_cannon_F"], _pos, [5005.33,5912.72,0]] call GEA_fnc_spawn_veh;
		_pos = selectRandom _spawn_veh;
	};	
};