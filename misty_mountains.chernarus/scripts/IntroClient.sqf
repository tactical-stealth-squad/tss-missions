private _player = _this select 0;

playmusic "MyIntro";

cutText ["","BLACK IN",15];
private _camera = "camera" camcreate [0, 0, 0];
_camera setPos [8845,15140,215];
_camera cameraEffect ["INTERNAL", "Back"];

showCinemaBorder true;

_camera camsettarget _player;
_camera camCommit 0;
waitUntil {camCommitted _camera};

sleep 3;

_camera camsettarget _player;
_camera camsetrelpos [+30, -25, +50];
_camera camCommit 15;
waitUntil {camCommitted _camera};

["Misty Mountains", "28.10.2009", "Chernarus"] spawn BIS_fnc_infoText;

sleep 3;

cutText ["","BLACK OUT",5];
cutText ["","BLACK IN",5];

showCinemaBorder false;

player cameraEffect ["terminate","Back"];
camDestroy _camera