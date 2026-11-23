private _seatlist = [seat_1, seat_2, seat_3, seat_4, seat_5, seat_6, seat_7, seat_8, seat_9, seat_10, seat_11, seat_12, seat_13, seat_14, seat_15, seat_16, seat_17, seat_18];

private _unit = _this select 0;
private _klasse = vehicleVarName _unit;

switch (_klasse) do {
	case "s1": {
		[seat_chef1, _unit] call aceX_sitting_fnc_sit
	};

	default {
		sleep 1 + random 1;
		private _seatNumber = _seatlist findIf {[_x, _unit] call acex_sitting_fnc_canSit};
		private _seat = _seatlist select _seatNumber;
		[_seat, _unit] call aceX_sitting_fnc_sit
	}
}

/*
/// Danke an [=TSS=] Brainslush
_local_var_seatlist = [seat_1, seat_2, seat_3, seat_4, seat_5, seat_6, seat_7, seat_8, seat_9, seat_10, seat_11, seat_12, seat_13, seat_14, seat_15, seat_16, seat_17, seat_18, seat_19, seat_20, seat_21, seat_22, seat_23, seat_24];
_local_var_Chefseat = [seat_chef1, seat_chef2];
{
	if (local _x) then {
    	if (_x == s1) then {
    		// Chef
    		[_local_var_Chefseat select _forEachIndex, _x] call aceX_sitting_fnc_sit;
    	} else {
    		// FußVolk
    		[_local_var_seatlist select _forEachIndex, _x] call aceX_sitting_fnc_sit;
    	};
  	};
} forEach allPlayers - (entities "HeadlessClient_F");





private _player = _this select 0;

private _local_var_seatlist = [seat_1, seat_2, seat_3, seat_4, seat_5, seat_6, seat_7, seat_8, seat_9, seat_10, seat_11, seat_12, seat_13, seat_14, seat_15, seat_16, seat_17, seat_18];

if (typeOf _player isEqualTo "CUP_B_BAF_Soldier_Officer_DDPM") then {
    // Chef
    [seat_chef_1, _player] call aceX_sitting_fnc_sit
} else {
    sleep random 2;
	private _seatNumber = _local_var_seatlist findIf {[_x, _player] call acex_sitting_fnc_canSit};
	private _seat = _local_var_seatlist select _seatNumber;
	[_seat, _player] call aceX_sitting_fnc_sit
};
*/