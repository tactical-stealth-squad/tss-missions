private _KAT = _this select 0;

if (_KAT isEqualTo 1) then {
	deleteVehicle [KAT_1, KAT_2, KAT_3, KAT_4, KAT_back_1, KAT_back_2];
} else {
	{_x addBackpackCargoGlobal ["B_Kitbag_cbr", 13]} foreach [KAT_back_1, KAT_back_2];
};