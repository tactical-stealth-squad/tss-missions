playmusic "LeadTrack02_F_Tank";
cutText ["","BLACK IN",15];
private _camera = "camera" camcreate [97420.81,49573.90,-35270.47];
_camera cameraEffect ["INTERNAL", "Back"];

showCinemaBorder true;

_camera camPrepareTarget [97420.81,49573.90,-35270.47];
_camera camPreparePos [13104.71,9044.67,54.60];
_camera camPrepareFOV 0.600;
_camera camCommitPrepared 0;
waitUntil {camCommitted _camera};

titleText ["- Feindlichen AA-Stellungen in Corazol -", "PLAIN"];
sleep 3;

_camera camPrepareTarget [96375.86,57519.76,-26700.64];
_camera camPreparePos [13104.71,9044.67,54.60];
_camera camPrepareFOV 0.125;
_camera camCommitPrepared 10;
waitUntil {camCommitted _camera};

sleep 3;

_camera camPrepareTarget [81431.35,81990.41,-3164.15];
_camera camPreparePos [13104.71,9044.67,54.60];
_camera camPrepareFOV 0.150;
_camera camCommitPrepared 10;
waitUntil {camCommitted _camera};

sleep 3;

cutText ["","BLACK",6];
sleep 6;
cutText ["","BLACK IN",6];

_camera camPrepareTarget [16123.34,103695.16,-40331.41];
_camera camPreparePos [15104.99,12285.27,26.37];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil {camCommitted _camera};

sleep 3;
titleText ["- Checkpoint am San Marco Pass -", "PLAIN"];

_camera camPrepareTarget [30470.93,107471.82,-26358.71];
_camera camPreparePos [15104.99,12285.28,26.37];
_camera camPrepareFOV 0.230;
_camera camCommitPrepared 10;
waitUntil {camCommitted _camera};

sleep 4;

_camera camPrepareFOV 0.700;
_camera camCommitPrepared 8;
waitUntil {camCommitted _camera};

_camera camPrepareTarget [93244.92,53589.93,-51280.80];
_camera camPreparePos [17128.88,14052.23,110.36];
_camera camPrepareFOV 0.550;
_camera camCommitPrepared 15;
waitUntil {camCommitted _camera};

titleText ["HQ ""Hamburg""", "PLAIN"];

cutText ["","BLACK",8];
["Ivan spielt verrückt", "30. Oktober 2012", "Mission by zinki"] spawn BIS_fnc_infoText;
sleep 8;
titleText ["Viel Erfolg!", "PLAIN"];
cutText ["","BLACK IN",10];

showCinemaBorder false;

player cameraEffect ["terminate","Back"];
camDestroy _camera;