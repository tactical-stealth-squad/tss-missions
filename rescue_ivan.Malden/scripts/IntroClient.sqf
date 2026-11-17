cutText ["","BLACK IN",15];

private _camera = "camera" camcreate [(getPos b_helper_1 select 0) , (getPos b_helper_1 select 1), (getPos b_helper_1 select 2)];
_camera cameraEffect ["INTERNAL", "Back"];

showCinemaBorder true;
CamUseNVG true;

_camera camsettarget b_helper_1;
_camera camsetrelpos [+75, -1, +50];
_camera camPrepareFOV 0.7;
_camera camCommit 0;
waitUntil {camCommitted _camera};

sleep 3;
playMusic "music_intro";

_camera camsettarget b_helper_1;
_camera camsetrelpos [-75, -1, +50];
_camera camPrepareFOV 0.7;
_camera camCommit 8;
waitUntil {camCommitted _camera};

[str("Rescue Ivan") , str(14) + "." + str(10) + "." + str(2015), str("Malden")] spawn BIS_fnc_infoText;

_camera camsettarget b_helper_1;
_camera camsetrelpos [+1, +20, +4];
_camera camPrepareFOV 0.7;
_camera camCommit 5;
waitUntil {camCommitted _camera};

cutText ["","BLACK",12];
waitUntil {b_helper_1 distance2D getMarkerPos "respawn_east" > 450};
sleep 12;
cutText ["","BLACK IN",15];

showCinemaBorder false;
CamUseNVG false;

player cameraEffect ["terminate","Back"];
camDestroy _camera