titleCut ["","BLACK OUT"];
sleep 60;
titleCut ["","BLACK IN"];

playMusic "Msc_Retro_Energy";

_camera = "camera" camcreate [0,0,0];
_camera cameraeffect ["internal", "back"];
showCinemaBorder true;

_camera camPrepareTarget veh_uaz;
_camera camPreparePos [((getPosATL veh_uaz) select 0) - 20, ((getPosATL veh_uaz) select 1) + 100 , 40];
_camera camCommitPrepared 0;

titleText [
"<t size='2'>Die Lage am Elbe-Seitenkanal ist weiterhin unverändert. Die feindlichen Kräfte halten ihre Positionen und die eigenen Teile sehen keinen taktischen Vorteil in der Rückeroberung des besetzten Gebietes.</t>",
"PLAIN", 0, true, true];

sleep 8;

_camera camPrepareTarget obj_net;
_camera camPreparePos [11635.4,3645.26,3];
_camera camCommitPrepared 0;

titleText [
"<t size='2'>Mit Satellitenauflärung konnte jedoch der Transport von SRBM-Werfern in das Gebiet um Rosche bestätigt werden. Die genaue Position dieser ist jedoch nicht zu bestimmen. Durch Agenten im Hinterland des Feindes konnte aber die Route und der Zeitpunkt der Verlegung des Generalstabs bestimmt werden.</t>",
"PLAIN", 0, true, true];

sleep 12;

_camera camPrepareTarget obj_equipment;
_camera camPreparePos [300.969,10899.3,19.317];
_camera camCommitPrepared 0;

titleText [
"<t size='2'>15.08.1989, 1130<br/>
Die beiden Trupps der Fernspäher, die bereits zur Aufnahme von Gefangenen Bundesgrenzschutzpolizisten eingesetzt waren, erholen sich von kräftezehrenden Einsätzen, als sie unsanft in ihrer Unterkunft geweckt werden.</t>",
"PLAIN", 0, true, true];

sleep 3;

playSound "AlarmBell";

sleep 2;

titleCut ["","BLACK OUT"];
sleep 2;
titleCut ["","BLACK IN",10];

showCinemaBorder false;
Player cameraEffect ["terminate","back"];
camDestroy _camera;

nil


////// Aus Misty Mountains 

/*	0: String Island name
	1: Position Position of the camera
	2: Number Direction of the camera
	3: Number FOV
	4: Array [Pitch,Bank]
	5: Number Focus
	6: Number Aperture
	7: Number Daytime
	8: Number Overcast
	9: Number Acctime
	10: Number Brightness
	11: Number Contrast
	12: Number Saturation
*/


/* private _player = _this select 0;

playmusic "MyIntro";

cutText ["","BLACK IN",15];
private _camera = "camera" camcreate [0, 0, 0];
_camera setPos [8845,15140,215];
_camera cameraEffect ["INTERNAL", "Back"];

showCinemaBorder true;

_camera camsettarget _player;
_camera camCommit 0;
waitUntil {camCommitted _camera};

sleep 3;

_camera camsettarget _player;
_camera camsetrelpos [+30, -25, +50];
_camera camCommit 15;
waitUntil {camCommitted _camera};

["Misty Mountains", "28.10.2009", "Chernarus"] spawn BIS_fnc_infoText;

sleep 3;

cutText ["","BLACK OUT",5];
cutText ["","BLACK IN",5];

showCinemaBorder false;

player cameraEffect ["terminate","Back"];
camDestroy _camera */