playmusic "Atrocities";
titleCut ["","BLACK IN",15];
private _camera = "camera" camcreate [0,0,0];
_camera cameraeffect ["internal", "back"];
CamUseNVG true;

_camera camPrepareTarget [-64581.23,72878.84,-4901.58];
_camera camPreparePos [4461.15,705.04,6.16];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil {camCommitted _camera};

sleep 10;

_camera camPrepareTarget [-57810.90,79154.84,4.99];
_camera camPreparePos [4349.97,820.15,1.50];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 60;
waitUntil {camCommitted _camera};

titleCut ["","BLACK OUT",2];
sleep 2;
titleCut ["","BLACK IN",2];
_camera cameraEffect ["terminate","back"];
camDestroy _camera