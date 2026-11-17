private ["_camera"];
private _player = _this select 0;

cutText ["","BLACK IN",15];

_camera = "camera" camcreate [0,0,0];
_camera attachTo [plane, [20, -75, 15]];

_camera cameraEffect ["INTERNAL", "Back"];
showCinemaBorder true;

_camera camsettarget plane;
_camera camCommit 0;
waitUntil {camCommitted _camera};

sleep 5;

[
	[
		["Operation Mackiri","align = 'center' size = '0.7' font='PuristaBold'"],
		["","<br/>"],
		["21.07.2016","align = 'center' size = '0.7'"],
		["","<br/>"],
		["Zagarabad","align = 'center' size = '0.7'"]
	]
] spawn BIS_fnc_typeText2;

waitUNtil {sleep 2; plane distance2D helper_1 < 3000};
detach _camera;

// Cam to oil field
_camera camsettarget getMarkerPos "Task_1";
_camera camsetrelpos [+75, -1, +50];
_camera camPrepareFOV 0.7;
_camera camCommit 10;
waitUntil {camCommitted _camera};

sleep 5;
[["Neuer Stützpunkt der Amerikaner (Ölraffenerie)"]] spawn BIS_fnc_typeText2;
playmusic "EventTrack04_F_EPB";
sleep 7;

// Cam to villa
_camera camsettarget helper_3;
_camera camsetrelpos [-75, +150, +75];
_camera camPrepareFOV 0.7;
_camera camCommit 10;
waitUntil {camCommitted _camera};

sleep 5;
[["Die Villa von Mackiri"]] spawn BIS_fnc_typeText2;
sleep 7;

// Cam to player
_camera camsetTarget _player;
_camera camsetrelpos [-2, -2, +10];
_camera camPrepareFOV 0.7;
_camera camCommit 10;
waitUntil {camCommitted _camera};

sleep 0.125;

cutText ["","BLACK OUT",5];
cutText ["","BLACK IN",5];

showCinemaBorder false;
_camera cameraEffect ["terminate","Back"];
camDestroy _camera;

titleCut ["", "BLACK FADED", 999];
sleep 1;
"dynamicBlur" ppEffectEnable true;
"dynamicBlur" ppEffectAdjust [4];
"dynamicBlur" ppEffectCommit 0;
"dynamicBlur" ppEffectAdjust [0.0];
"dynamicBlur" ppEffectCommit 10;
titleCut ["", "BLACK IN", 2];