playmusic "Track13_StageC_negative";
cutText ["","BLACK IN",15];
private _camera = "camera" camcreate [89598.10,-46128.07,-17011.12];
_camera cameraEffect ["INTERNAL", "Back"];

showCinemaBorder true;

_camera camPrepareTarget [89598.10,-46128.07,-17011.12];
_camera camPreparePos [8994.81,10478.28,173.41];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil {camCommitted _camera};

titleText ["- Flughafen südlich von Paraiso -", "PLAIN"];
sleep 3;

_camera camPrepareTarget [89598.10,-46128.07,-17011.12];
_camera camPreparePos [8994.81,10478.28,173.41];
_camera camPrepareFOV 0.275;
_camera camCommitPrepared 10;
waitUntil {camCommitted _camera};

sleep 3;
cutText ["","BLACK",6];
sleep 6;
cutText ["","BLACK IN",6];

_camera camPrepareTarget [99387.84,32948.13,-39346.73];
_camera camPreparePos [10842.72,8809.22,152.42];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil {camCommitted _camera};

titleText ["- Panzerwerkstatt -", "PLAIN"];
sleep 3;

_camera camPrepareTarget [99387.84,32948.13,-39346.73];
_camera camPreparePos [10842.72,8809.22,152.42];
_camera camPrepareFOV 0.150;
_camera camCommitPrepared 10;
waitUntil {camCommitted _camera};

cutText ["","BLACK",6];
sleep 6;
cutText ["","BLACK IN",6];

_camera camPrepareTarget [87785.08,61262.92,-40676.22];
_camera camPreparePos [13033.59,8972.24,95.31];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil {camCommitted _camera};

sleep 5;
titleText ["F.O.B. ""Kiel""", "PLAIN"];
sleep 3;

cutText ["","BLACK",8];
["Ivan spielt verrückt", "30. Oktober 2012", "Mission by zinki"] spawn BIS_fnc_infoText;
sleep 8;
titleText ["Viel Erfolg!", "PLAIN"];
cutText ["","BLACK IN",10];

showCinemaBorder false;

player cameraEffect ["terminate","Back"];
camDestroy _camera