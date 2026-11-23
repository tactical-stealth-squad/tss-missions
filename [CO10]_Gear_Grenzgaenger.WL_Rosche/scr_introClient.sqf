cutText ["", "BLACK", 0.1];

sleep 60;

playMusic "Msc_Voyager";

sleep 4;

titleText [
"<t size='2'>Der kalte Krieg wurde heiß. Die Spannungen zwischen den West- und Ostmächten führten letzten Endes zu einem konventionellen Krieg in Europa. Gemäß den Erwartungen stießen die östlichen Kräfte zunächst hauptsächlich im Raum Fulda mit Ziel Frankfurt vor.</t>",
"PLAIN", 0, true, true];

sleep 12;

titleText [
"<t size='2'>Die Topographie der norddeutschen Tiefebene bietet gleichfalls wenig natürliche Hindernisse gegen einen Panzerangriff. Dennoch war es den eigenen Kräften mit Hilfe guter Aufklärung und schnellen Eingreiftruppen möglich, den Feind am Überqueren des Elbe-Seitenkanals zu hindern. Die feindlichen Kräfte erlitten hierbei massive Verluste, wichen zurück und gingen in eine hastig eingerichtete Verteidigung über.</t>",
"PLAIN", 0, true, true];

sleep 12;

titleText [
"<t size='2'>Im Rahmen des stellenweise chaotischen Ausweichens der feindlichen Truppen wurde eine gefangengenommene Streife des BGS schlicht vergessen. Diese konnte sich selbstständig befreien und Teile ihrer Ausrüstung in einem zurückgelassenen Fahrzeug wiederfinden. Mit einem erbeuteten Funkgerät war es möglich, ihren ungefähren Standort zu ermitteln.</t>",
"PLAIN", 0, true, true];

sleep 12;

titleText [
"<t size='2'>08.08.1989, 0300<br/>
Zwei Trupps der Fernspäher, die im Rahmen der Verteidigung des Elbe-Seitenkanals eingesetzt waren, werden im Schutz der Dunkelheit an den nächstgelegene Basis verlegt.<br/><br/>Ihr Auftrag: Lokalisieren, Aufnehmen und Verbringen der BGS Streife.</t>",
"PLAIN", 0, true, true];

sleep 5;

cutText ["", "BLACK IN", 5];


//////////////////////////

_camera = "camera" camcreate [0,0,0];
_camera cameraeffect ["internal", "back"];
showCinemaBorder true;

_camera camPrepareTarget veh_bmp_1;
_camera camPreparePos [((getPosATL veh_bmp_1) select 0) - 20, ((getPosATL veh_bmp_1) select 1) + 75 , 50];
_camera camCommitPrepared 0;
waitUntil {camCommitted _camera};

sleep 5;

_camera camPrepareTarget veh_leo_1;
_camera camPreparePos [((getPosATL veh_leo_1) select 0) - 0, ((getPosATL veh_leo_1) select 1) + 200 , 50];
_camera camCommitPrepared 20;
waitUntil {camCommitted _camera};

sleep 5;

_camera camPrepareTarget [716.432,4662.54,0];
_camera camPreparePos [786.17,4270.66,40];
_camera camCommitPrepared 20;
waitUntil {camCommitted _camera};

sleep 1;
["Grenzgänger", "08.08.1989, 0300", "Deutschland"] spawn BIS_fnc_infoText;
sleep 4;

titleCut ["","BLACK OUT",4];
sleep 4;
titleCut ["","BLACK IN",2];

showCinemaBorder false;
Player cameraEffect ["terminate","back"];
camDestroy _camera;

nil


////// Aus Misty Mountains 


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