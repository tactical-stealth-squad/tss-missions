private _player = _this select 0;

private _camera = "camera" camcreate [0, 0, 0];
_camera camsetTarget _player;
_camera setPos [5004, 5929, 350];
_camera cameraEffect ["External", "Back"];
_camera camCommit 1;
true setCamUseTI 0;
showCinemaBorder false;

sleep 15;

false setCamUseTI 0;
_player cameraEffect ["terminate","Back"];
camDestroy _camera;