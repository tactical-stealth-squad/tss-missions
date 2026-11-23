private _type = ["O_Plane_Fighter_02_F", "O_Plane_CAS_02_dynamicLoadout_F"];
private _spawn_air = ["spawn_air_0", "spawn_air_1", "spawn_air_2", "spawn_air_3"];
private _pos = selectRandom _spawn_air;
private _attack = [5005.33,5912.72,0];

sleep 1800;

while {time < 7200} do {

	sleep ((5 + random 5)*60);
	
	private _number = floor(random 4) + 1;

	if (_number < 2) then {
		["O_UAV_02_dynamicLoadout_F", _pos, [5005.33,5912.72,0]] call GEA_fnc_spawn_veh;
	};

	for "_i" from 0 to _number do {
		sleep 1;
		[selectRandom _type, _pos, [5005.33,5912.72,0]] call GEA_fnc_spawn_veh;

	};

	_pos = selectRandom _spawn_air;
};