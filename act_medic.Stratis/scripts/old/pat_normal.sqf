_group1=createGroup west;
"b_survivor_F" createUnit [getmarkerPos "PatientSpawn", _group1,"pat1=this; dostop pat1"];
[pat1, selectRandom[0.3,0.5,0.7], "leg_r", selectrandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;
[pat1, selectRandom[0.3,0.5,0.7], "leg_l", selectrandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;
[pat1, selectRandom[0.3,0.5,0.7], "body", selectrandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;
[pat1, selectRandom[0,0.3,0.5,0.7], "head", selectrandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;
[pat1, selectRandom[0.3,0.5,0.7], "hand_r", selectrandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;
[pat1, selectRandom[0.3,0.5,0.7], "hand_l", selectrandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;
[pat1] call ace_medical_fnc_handleDamage_advancedSetDamage;
pat1 setUnitPos "DOWN";
pat1 disableAI "PATH";

/*
params [
	"_target",
	"_caller",
	"_Id",
	"_arguments"
];

[_target, _ID] remoteExecCall ["removeAction", 0];

_pos = _arguments call CBA_fnc_getPos;
_pat = (group _caller) createUnit ["b_survivor_F", _pos, [], 0, "NONE"];

[_pat, selectRandom [0.3,0.5,0.7], "RightLeg", selectrandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;
[_pat, selectRandom [0.3,0.5,0.7], "LeftLeg", selectrandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;
[_pat, selectRandom [0.3,0.5,0.7], "body", selectrandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;
[_pat, selectRandom [0,0.3,0.5,0.7], "head", selectrandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;
[_pat, selectRandom [0.3,0.5,0.7], "RightArm", selectrandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;
[_pat, selectRandom [0.3,0.5,0.7], "LeftArm", selectrandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;

_pat setUnitPos "DOWN";
_pat disableAI "PATH";

[_pat, ["Patient löschen", {params ["_target", "_caller", "_Id"]; deleteVehicle _target}, nil, 1.5, true, true, "", "true", 3]] remoteExecCall ["addAction", 0];

waitUntil {sleep 5; isNull _pat};
[_target, ["Patient kreieren (Normal)", "scripts\pat_full.sqf", _arguments, 1.5, true, true, "", "true", 3]] remoteExecCall ["addAction", 0];
*/