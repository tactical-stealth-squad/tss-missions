Params ["_mrk_pos", "_rad"];

private _delObjectsVehicle = getMarkerPos [_mrk_pos, true] nearEntities [["Car", "Tank"], _rad];
{deleteVehicle _x;} foreach _delObjectsVehicle;
sleep 1;
private _delObjectsMen = getMarkerPos [_mrk_pos, true] nearEntities [["Man"], _rad];
{deleteVehicle _x;} foreach _delObjectsMen;
sleep 1;
{deleteVehicle _x;} forEach allDead;