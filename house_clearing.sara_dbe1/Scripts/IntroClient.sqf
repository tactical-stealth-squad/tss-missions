cutText ["","BLACK IN", 30];
private _camera = "camera" camcreate [0, 0, 0];
_camera attachTo [plane_1, [0, 0, -1]];
true setCamUseTI 0;
_camera cameraEffect ["INTERNAL", "Back"];

showCinemaBorder true;

sleep 24;

//cutText ["","BLACK",6];
sleep 6;
playmusic "LeadTrack01a_F";
cutText ["","BLACK IN", 15];

_camera camPrepareTarget getMarkerPos "marker_2";
_camera camPreparePos getMarkerPos "marker_2";
_camera camPrepareFOV 0.400;
_camera camCommitPrepared 0;
waitUntil {camCommitted _camera};

titleText ["- Nachrichtenstation -", "PLAIN"];
sleep 3;

_camera camPrepareTarget getMarkerPos "marker_2";
_camera camPreparePos getMarkerPos "marker_2";
_camera camPrepareFOV 0.100;
_camera camCommitPrepared 7;
waitUntil {camCommitted _camera};

sleep 3;

cutText ["","BLACK",6];
sleep 6;
_camera attachTo [plane_2, [0, 0, -1]];
cutText ["","BLACK IN",6];

_camera camPrepareTarget getMarkerPos "marker_1";
_camera camPreparePos getMarkerPos "marker_1";
_camera camPrepareFOV 0.400;
_camera camCommitPrepared 0;
waitUntil {camCommitted _camera};

titleText ["- Corazol -", "PLAIN"];
sleep 3;

_camera camPrepareTarget getMarkerPos "marker_1";
_camera camPreparePos getMarkerPos "marker_1";
_camera camPrepareFOV 0.100;
_camera camCommitPrepared 7;
waitUntil {camCommitted _camera};

sleep 3;

cutText ["","BLACK",6];
sleep 6;
_camera attachTo [plane_3, [0, 0, -1]];
cutText ["","BLACK IN",6];

_camera camPrepareTarget getMarkerPos "marker_0";
_camera camPreparePos getMarkerPos "marker_0";
_camera camPrepareFOV 0.400;
_camera camCommitPrepared 0;
waitUntil {camCommitted _camera};

titleText ["- Paraiso -", "PLAIN"];
sleep 3;

_camera camPrepareTarget getMarkerPos "marker_0";
_camera camPreparePos getMarkerPos "marker_0";
_camera camPrepareFOV 0.100;
_camera camCommitPrepared 7;
waitUntil {camCommitted _camera};

sleep 3;

cutText ["","BLACK",6];
sleep 6;
false setCamUseTI 0;
detach _camera;
cutText ["","BLACK IN",6];

_camera camPrepareTarget [110438.86,32125.12,-31304.58];
_camera camPreparePos [17210.71,14102.62,49.23];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil {camCommitted _camera};

sleep 5;
titleText ["HQ", "PLAIN"];
sleep 3;

cutText ["","BLACK",8];
["House Clearing", "11. Mai 2020", "Mission by zinki"] spawn BIS_fnc_infoText;
sleep 8;
titleText ["Viel Erfolg!", "PLAIN"];
cutText ["","BLACK IN",10];

showCinemaBorder false;

player cameraEffect ["terminate","Back"];
camDestroy _camera;