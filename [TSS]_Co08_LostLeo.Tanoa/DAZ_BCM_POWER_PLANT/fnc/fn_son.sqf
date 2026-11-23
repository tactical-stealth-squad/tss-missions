////////////////////////////////////////////////
//                  BCM                       //
////////////////////////////////////// by DÄZ //



private _object = _this select 0;

private _logic = createVehicle ["Land_HelipadEmpty_F", position _object, [], 0, "CAN_COLLIDE"];
[_logic,"DAZ_Hack_son"] remoteExec ["say3d"];
_object setVariable ["speaker", _logic];