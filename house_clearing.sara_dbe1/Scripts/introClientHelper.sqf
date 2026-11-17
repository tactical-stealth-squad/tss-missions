cutText ["","BLACK IN", 10];
private _camera = "camera" camcreate [0, 0, 0];
_camera cameraEffect ["INTERNAL", "Back"];

_camera attachTo [plane_1, [0, 0, -1]];
true setCamUseTI 0;

showCinemaBorder true;

_camera camPrepareTarget getMarkerPos "marker_2";
_camera camPreparePos getMarkerPos "marker_2";
_camera camPrepareFOV 0.400;
_camera camCommitPrepared 0;
waitUntil {camCommitted _camera};

titleText ["- Nachrichtenstation -", "PLAIN"];
sleep 5;

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
sleep 5;

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
sleep 5;

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

showCinemaBorder false;

player cameraEffect ["terminate","Back"];
camDestroy _camera;