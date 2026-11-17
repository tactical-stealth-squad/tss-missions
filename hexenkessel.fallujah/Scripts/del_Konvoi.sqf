private _del = _this select 0;

if (_del isEqualTo 1) exitWith {
	deleteVehicle (crew conv_1);
	deleteVehicle (crew conv_2);
	deleteVehicle (crew conv_3);
	deleteVehicle [conv_1, conv_2, conv_3, trg_delAA, helper];
};