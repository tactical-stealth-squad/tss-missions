cutText ["","BLACK IN",10];
playmusic "LeadTrack02a_F_EPB";
private _camera = "camera" camcreate [3125.17,7651.24,25];
_camera cameraEffect ["INTERNAL", "Back"];

showCinemaBorder true;

_camera camsettarget getMarkerPos "bridge_1";
_camera camsetrelpos [-25, 100, 75];
_camera camPrepareFOV 0.7;
_camera camCommit 10;
waitUntil {camCommitted _camera};

titleText ["Unser letzter - mittlerweile verlorener - Checkpoint!", "PLAIN"];
sleep 3;

_camera camsettarget getMarkerPos "bridge_2";
_camera camsetrelpos [-25, -100, +50];
_camera camPrepareFOV 0.7;
_camera camCommit 10;
waitUntil {camCommitted _camera};

titleText ["Der letzte Übergang für die Panzer!", "PLAIN"];
sleep 3;

_camera camsettarget getMarkerPos "respawn_west";
_camera camsetrelpos [0, -50, 75];
_camera camPrepareFOV 0.7;
_camera camCommit 20;
waitUntil {camCommitted _camera};

cutText ["","BLACK",12];
["Free Livonia", "24. Juni 2024", "Mission by zinki"] spawn BIS_fnc_infoText;
sleep 7;
titleText ["Viel Erfolg!", "PLAIN"];
sleep 5;
cutText ["","BLACK IN",15];

showCinemaBorder false;

player cameraEffect ["terminate","Back"];
camDestroy _camera