Params ["_target", "_caller", "_id"];
titleText ["Danke für die Rettung!","PLAIN DOWN"];
[_target, _id] remoteExec ["removeAction", 0, false];
sleep 2;
[_target,  "Acts_AidlPsitMstpSsurWnonDnon_out"] remoteExec ["switchMove", 0];
sleep 0.1;
_target setCaptive false;
[[_target, "Jones Miller"], {_this spawn compile preprocessFileLineNumbers "scripts\sush_pow_script.sqf";}] remoteExec ["BIS_fnc_spawn", 0];