private _player = _this select 0;

_player allowDammage false;

cutText ["","BLACK IN",8];

private _camera = "camera" camcreate [(getPos b_help_1 select 0) , (getPos b_help_1 select 1), (getPos b_help_1 select 2)];
_camera cameraEffect ["INTERNAL", "Back"];

showCinemaBorder true;
CamUseNVG true;

_camera camsettarget b_help_1;
_camera camsetrelpos [+75, -1, +50];
_camera camPrepareFOV 0.7;
_camera camCommit 0;
waitUntil {camCommitted _camera};

sleep 3;
playMusic "music_intro";
sleep 3;

_camera camsettarget b_help_1;
_camera camsetrelpos [-75, -1, +50];
_camera camPrepareFOV 0.7;
_camera camCommit 15;
waitUntil {camCommitted _camera};

[str("Geheimakte 39") , str(14) + "." + str(10) + "." + str(2012), str("Utes")] spawn BIS_fnc_infoText;

_camera camsettarget b_help_1;
_camera camsetrelpos [+1, +20, +4];
_camera camPrepareFOV 0.7;
_camera camCommit 5;
waitUntil {camCommitted _camera};

while {b_help_1 distance2D getMarkerPos "respawn_west" > 250} do {

	_camera camsettarget b_help_1;
	_camera camsetrelpos [+1, -1, +1];
	_camera camPrepareFOV 0.7;
	_camera camCommit 1;
	waitUntil {camCommitted _camera};
};

cutText ["","BLACK",8];

sleep 11;
_player say3D ["boot_defect", 500, 1];
sleep 1;

if !(isnil "s1") then {
	titletext [format["Ihr ""Captain"" %1 war wohl etwas zu schnell unterwegs! Das Boot hat ein Leck bekommen. Weichen Sie daher nach Ihrer Mission über Strelka aus. Dort sollten Fischerboote zu finden sein!", name s1],"PLAIN DOWN"]
} else {
	titletext ["Ihr ""Captain"" war wohl etwas zu schnell unterwegs! Das Boot hat ein Leck bekommen. Weichen Sie daher nach Ihrer Mission über Strelka aus. Dort sollten Fischerboote zu finden sein!","PLAIN DOWN"]
};

cutText ["","BLACK IN",10];

showCinemaBorder false;
CamUseNVG false;

_player allowDammage true;

player cameraEffect ["terminate","Back"];
camDestroy _camera;