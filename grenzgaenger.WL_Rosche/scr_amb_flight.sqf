/* Spawn air units for overflight roughly every 15 mins
/ by Gearfield
/
/ Script for spawning air units is required: scr_HWK_spawnAircraft.sqf
/
/example (initServer.sqf): [] spawn compile preprocessFileLineNumbers "scr_amb_flight.sqf";
*/

private _typeArray = ["CUP_O_Su25_Dyn_RU", "CUP_O_AN2_TK", "CUP_O_Mi8_RU", "CUP_O_Mi24_P_Dynamic_RU", "CUP_O_Ka50_DL_RU"];
private _marker = ["mrk_flight_1", "mrk_flight_2", "mrk_flight_3"];

// Wait for an hour into the mission for performance reasons
// sleep 3600;

// Spawn air units for overflight roughly every 15 mins
while {time < 14400} do {

	private _type	   = selectRandom _typeArray;
	private _pos_start = selectRandom _marker;
	private _pos_end   = selectRandom (_marker - [_pos_start]);
	private _dir	   = markerDir _pos_start;

	if (_pos_start == "mrk_flight_2") then {
		_pos_start = getMarkerPos [_pos_start, true];
		_pos_start = [_pos_start select 0, (_pos_start select 1) + ([-3000, 3000] call BIS_fnc_randomNum) , 700];
	} else {
		_pos_start = getMarkerPos [_pos_start, true];
		_pos_start = [(_pos_start select 0) + ([-2500, 2000] call BIS_fnc_randomNum), _pos_start select 1, 700];
	};

	if (_pos_end == "mrk_flight_2") then {
		_pos_end = getMarkerPos [_pos_end, true];
		_pos_end = [_pos_end select 0, (_pos_end select 1) + ([-3000, 3000] call BIS_fnc_randomNum) , 50];
	} else {
		_pos_end = getMarkerPos [_pos_end, true];
		_pos_end = [(_pos_end select 0) + ([-2500, 2000] call BIS_fnc_randomNum), _pos_end select 1, 50];
	};

	private _flight_1 = [_type, _pos_start, _pos_end, _dir] spawn HWK_spawnAir;
	sleep 5;
	private _flight_2 = [_type, _pos_start, _pos_end, _dir] spawn HWK_spawnAir;

	sleep ([800, 1000] call BIS_fnc_randomNum);
};

