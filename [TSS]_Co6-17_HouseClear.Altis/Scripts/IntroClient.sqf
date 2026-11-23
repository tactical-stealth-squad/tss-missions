playmusic "LeadTrack01_F_EPA";
cutText ["","BLACK IN",15];
private _camera = "camera" camcreate [97420.81,49573.90,-35270.47];
_camera cameraEffect ["INTERNAL", "Back"];

showCinemaBorder true;

_camera camPrepareTarget [101523.82,45417.16,-29470.07];
_camera camPreparePos [11247.17,14175.84,73.60];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil {camCommitted _camera};

titleText ["- Alikampos -", "PLAIN"];
sleep 3;

_camera camPrepareTarget [101523.82,45417.16,-29470.07];
_camera camPreparePos [11247.17,14175.84,73.60];
_camera camPrepareFOV 0.350;
_camera camCommitPrepared 7;
waitUntil {camCommitted _camera};

sleep 3;

cutText ["","BLACK",6];
sleep 6;
cutText ["","BLACK IN",6];

_camera camPrepareTarget [-32069.71,-65550.34,-47153.94];
_camera camPreparePos [9320.97,12262.75,73.69];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil {camCommitted _camera};

titleText ["- Zaros -", "PLAIN"];
sleep 3;

_camera camPrepareTarget [-32069.71,-65550.34,-47153.94];
_camera camPreparePos [9320.97,12262.75,73.69];
_camera camPrepareFOV 0.350;
_camera camCommitPrepared 7;
waitUntil {camCommitted _camera};

sleep 3;

cutText ["","BLACK",6];
sleep 6;
cutText ["","BLACK IN",6];

_camera camPrepareTarget [83244.62,-13201.45,-54225.04];
_camera camPreparePos [3640.43,13455.79,104.75];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil {camCommitted _camera};

titleText ["- Kavala -", "PLAIN"];
sleep 3;

_camera camPrepareTarget [83244.62,-13201.45,-54225.04];
_camera camPreparePos [3640.43,13455.79,104.75];
_camera camPrepareFOV 0.350;
_camera camCommitPrepared 7;
waitUntil {camCommitted _camera};

sleep 3;

cutText ["","BLACK",6];
sleep 6;
cutText ["","BLACK IN",6];

_camera camPrepareTarget [86710.71,50649.25,-47554.08];
_camera camPreparePos [5862.47,16110.78,94.97];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil {camCommitted _camera};

titleText ["- Fabrik -", "PLAIN"];
sleep 3;

_camera camPrepareTarget [86710.71,50649.25,-47554.08];
_camera camPreparePos [5862.47,16110.78,94.97];
_camera camPrepareFOV 0.350;
_camera camCommitPrepared 7;
waitUntil {camCommitted _camera};

sleep 3;

cutText ["","BLACK",6];
sleep 6;
cutText ["","BLACK IN",6];

_camera camPrepareTarget [-62206.60,69241.30,-36016.16];
_camera camPreparePos [15246.04,17268.81,20.79];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil {camCommitted _camera};

sleep 5;
titleText ["HQ", "PLAIN"];
sleep 3;

cutText ["","BLACK",8];
["House Clearing", "24. Juni 2020", "Mission by zinki"] spawn BIS_fnc_infoText;
sleep 8;
titleText ["Viel Erfolg!", "PLAIN"];
cutText ["","BLACK IN",10];

showCinemaBorder false;

player cameraEffect ["terminate","Back"];
camDestroy _camera;