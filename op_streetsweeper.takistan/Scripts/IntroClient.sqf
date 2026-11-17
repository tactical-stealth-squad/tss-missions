private _player = _this select 0;

cutText ["","BLACK IN",5];
private _camera = "camera" camcreate [0, 0, 0];
_camera setPos [2085.66,-2.14307,64.9995];
_camera setDir 265;
_camera cameraEffect ["INTERNAL", "Back"];

showCinemaBorder true;

_camera camsettarget _player;
_camera camCommit 0;
waitUntil {camCommitted _camera};

sleep 5;
["OP Streetsweeper", "25.07.2016", "Takistan"] spawn BIS_fnc_infoText;

_camera camsettarget _player;
_camera camsetrelpos [+2, 2, +10];
_camera camCommit 10;
waitUntil {camCommitted _camera};

cutText ["","BLACK OUT",5];
cutText ["","BLACK IN",5];

showCinemaBorder false;

player cameraEffect ["terminate","Back"];
camDestroy _camera