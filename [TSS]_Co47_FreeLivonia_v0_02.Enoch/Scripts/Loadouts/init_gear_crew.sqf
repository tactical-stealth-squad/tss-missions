/*

By Nobody ?
Grundidee/Scriptgrundlage BERT

*/

private _gear = _this select 0;

_gear addAction [("<t color=""#30fcff"">" + ("Crew Leader") + "</t>"),"scripts\loadouts\loadout_init_US.sqf", "CREW_Lead", 1.5, true, true, "", "true", 5];
_gear addAction [("<t color=""#30fcff"">" + ("Crew") + "</t>"),"scripts\loadouts\loadout_init_US.sqf", "CREW", 1.5, true, true, "", "true", 5];
_gear addAction [("<t color=""#30fcff"">" + ("(Co-)Pilot") + "</t>"),"scripts\loadouts\loadout_init_US.sqf", "HELI", 1.5, true, true, "", "true", 5];