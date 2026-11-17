private _player = _this select 0;

cutText ["","BLACK IN",5];
private _camera = "camera" camcreate [0, 0, 0];
_camera setPos [3452.65,6865.29,7.44337];
_camera setDir 265;
_camera cameraEffect ["INTERNAL", "Back"];

showCinemaBorder true;
CamUseNVG true;

["Lost Leo", "20.03.2019", "Tanoa"] spawn BIS_fnc_infoText;

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