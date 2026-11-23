private _spawn_inf_north = ["spawn_inf_1","spawn_inf_2"];
private _spawn_inf_south = ["spawn_inf_3","spawn_inf_4"];
private _pos_north = selectRandom _spawn_inf_north;
private _pos_south = selectRandom _spawn_inf_south;
private _attack = [5005.33,5912.72,0];
private _delay = 5;

sleep 900; // 6300 left

{
	[_x, _attack] call GEA_fnc_spawn_group;
	
} forEach ["spawn_inf_1","spawn_inf_2","spawn_inf_3","spawn_inf_4"];

while {time < 7200} do {

	[_pos_north, _attack] call GEA_fnc_spawn_group;
	sleep 1;
	// [_pos_north, _attack] call GEA_fnc_spawn_group;
	// sleep 1;
	// [_pos_south, _attack] call GEA_fnc_spawn_group;
	// sleep 1;
	[_pos_south, _attack] call GEA_fnc_spawn_group;

	sleep (_delay*60);

	_pos_north = selectRandom _spawn_inf_north;
	_pos_south = selectRandom _spawn_inf_south;
	_delay = _delay - 1/18; // Berechnung: Zeit = Gewünschte Zeit - (Startdelay - 1/n) Anzahl) Anzahl
};

"Evakuierung der Inseln abgeschlossen.\nEingeschränkte Kommunikation möglich.\nAuftrag: Sofortige Flucht nach Norden." remoteExec ["hint", -2, false];

{
	[_x, _attack] call GEA_fnc_spawn_group;
	
} forEach ["spawn_inf_1","spawn_inf_2","spawn_inf_3","spawn_inf_4"];

{
	_x enableSimulationGlobal true;
	_x hideObjectGlobal false;
	_x setUnitPos "UP";
	[_x, false] remoteExec ["hideObject", -2, false];
} forEach [sniper,spotter];