private _player = _this select 0;

cutText ["","BLACK IN",5];
private _camera = "camera" camcreate [0, 0, 0];
_camera setPos [9353.9,21091.9,21.867];
_camera setDir 30;
_camera cameraEffect ["INTERNAL", "Back"];

_camera camsettarget _player;
_camera camCommit 0;
waitUntil {camCommitted _camera};

showCinemaBorder true;

["They are coming", "22.11.2021", "Altis"] spawn BIS_fnc_infoText;

sleep 10;

cutText ["","BLACK OUT",5];
cutText ["","BLACK IN",5];

showCinemaBorder false;

player cameraEffect ["terminate","Back"];
camDestroy _camera