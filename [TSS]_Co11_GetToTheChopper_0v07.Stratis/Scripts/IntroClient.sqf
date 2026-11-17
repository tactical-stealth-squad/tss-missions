private _player = _this select 0;

cutText ["","BLACK IN",5];
private _camera = "camera" camcreate [0, 0, 0];
_camera setPos [6507.79,4210.68,142.134];
_camera setDir 265;
_camera cameraEffect ["INTERNAL", "Back"];

showCinemaBorder true;
CamUseNVG true;

_camera camsettarget _player;
_camera camCommit 0;
waitUntil {camCommitted _camera};

sleep 5;
["Get to the chopper", "28.01.2013", "Stratis"] spawn BIS_fnc_infoText;

_camera camsettarget _player;
_camera camsetrelpos [+2, 2, +10];
_camera camCommit 10;
waitUntil {camCommitted _camera};

cutText ["","BLACK OUT",5];
cutText ["","BLACK IN",5];

showCinemaBorder false;
CamUseNVG false;

player cameraEffect ["terminate","Back"];
camDestroy _camera