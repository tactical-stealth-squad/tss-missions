player playmove "AinvPknlMstpSlayWrflDnon_medic";
sleep 4;
bomb_end = true;
publicvariable "bomb_end";
hintSilent "Bomb disabled";
deleteVehicle lose;
deleteVehicle kamera_lose;
[NukePos] remoteExecCall ["removeAllActions", 0];