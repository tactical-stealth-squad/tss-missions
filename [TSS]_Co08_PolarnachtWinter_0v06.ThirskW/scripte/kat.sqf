private _KAT = _this select 0;

if (_KAT isEqualTo 1) then {
	deleteVehicle KAT_1;
} else {
	KAT_1 addBackpackCargoGlobal ["B_Kitbag_cbr", 10];
};