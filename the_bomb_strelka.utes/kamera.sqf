titleCut [" ","BLACK IN"]; titleFadeOut 8;
TitleText ["  ", "Plain Down"]; titleFadeOut 9;



_cam = "camera" camcreate [(((getMarkerPos "bomb") select 0)+200),(((getMarkerPos "bomb") select 1)+200),60];

_cam camsettarget NukePos;
_cam camPreparepos [(((getMarkerPos "bomb") select 0)+200),(((getMarkerPos "bomb") select 1)+200),60];
_cam camSetFOV 0.700;
_cam cameraeffect ["internal", "back"];
_cam camcommit 0;

sleep 3;


_cam camsettarget NukePos;
_cam camPrepareFOV 1.0;
_cam camcommit 15;
waitUntil {camcommitted _cam};
_cam cameraeffect ["terminate", "back"];
camdestroy _cam;
titlecut [" ","BLACK IN",6]; titleFadeOut 6;

sleep 3;
'EveryoneLost' call BIS_fnc_endMissionServer;