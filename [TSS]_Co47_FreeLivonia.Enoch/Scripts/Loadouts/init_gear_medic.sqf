/*

By Nobody ?
Grundidee/Scriptgrundlage BERT

*/

_gear = _this select 0;

_gear addAction [("<t color=""#30fcff"">" + ("Medic (Lead / Doctor)") + "</t>"),"scripts\loadouts\loadout_init_US.sqf", "MEDIC_Lead", 1.5, true, true, "", "true", 5];
_gear addAction [("<t color=""#30fcff"">" + ("Medic (Doctor)") + "</t>"),"scripts\loadouts\loadout_init_US.sqf", "MEDIC_Doctor", 1.5, true, true, "", "true", 5];
_gear addAction [("<t color=""#30fcff"">" + ("Medic (CLS)") + "</t>"),"scripts\loadouts\loadout_init_US.sqf", "MEDIC_CLS", 1.5, true, true, "", "true", 5];
