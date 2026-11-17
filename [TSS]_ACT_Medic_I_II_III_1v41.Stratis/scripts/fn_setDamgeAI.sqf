/* ----------------------------------------------------------------------------
Function: fn_setDamageAI.sqf

Version: v0.01

Description:

Parameters:

Example:

Author:
    =TSS= zinki (https://tactical-stealth-squad.de/forums/)
---------------------------------------------------------------------------- */

params [
	"_target",
	"_caller",
	"_Id",
	"_arguments"
];

[_target, _ID] remoteExecCall ["removeAction", 0];

_pat = (group _caller) createUnit ["tss_infantry_soldier", _arguments select 0, [], 0, "NONE"];

_pat setUnitPos "DOWN";
_pat disableAI "PATH";

[_pat, ["Patient löschen", {params ["_target", "_caller", "_Id"]; deleteVehicle _target}, nil, 1.5, true, true, "", "true", 3]] remoteExecCall ["addAction", 0];

switch (_arguments select 1) do {
	case "Full": {
		[_pat, selectRandom [0.7,0.8,0.9,1.0], "RightLeg", selectrandom ["stab", "bullet", "falling"]] call ace_medical_fnc_addDamageToUnit;
		[_pat, selectRandom [0.7,0.8,0.9,1.0], "LeftLeg", selectrandom ["stab", "bullet", "falling"]] call ace_medical_fnc_addDamageToUnit;
		[_pat, selectRandom [0.7,0.8,0.9,1.0], "body", selectrandom ["stab", "bullet", "falling"]] call ace_medical_fnc_addDamageToUnit;
		[_pat, selectRandom [0.7,0.8,0.9,1.0], "head", selectrandom ["stab", "bullet", "falling"]] call ace_medical_fnc_addDamageToUnit;
		[_pat, selectRandom [0.7,0.8,0.9,1.0], "RightArm", selectrandom ["stab", "bullet", "falling"]] call ace_medical_fnc_addDamageToUnit;
		[_pat, selectRandom [0.7,0.8,0.9,1.0], "LeftArm", selectrandom ["stab", "bullet", "falling"]] call ace_medical_fnc_addDamageToUnit;

		waitUntil {sleep 5; isNull _pat};
		[_target, ["Patient kreieren (Full)", "scripts\fn_setDamgeAI.sqf", _arguments, 1.5, true, true, "", "true", 3]] remoteExecCall ["addAction", 0]
	};
	case "Medium": {
		[_pat, selectRandom [0.5,0.6,0.7], "RightLeg", selectrandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;
		[_pat, selectRandom [0.5,0.6,0.7], "LeftLeg", selectrandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;
		[_pat, selectRandom [0.5,0.6,0.7], "body", selectrandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;
		[_pat, selectRandom [0.5,0.6,0.7], "head", selectrandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;
		[_pat, selectRandom [0.5,0.6,0.7], "RightArm", selectrandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;
		[_pat, selectRandom [0.5,0.6,0.7], "LeftArm", selectrandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;

		waitUntil {sleep 5; isNull _pat};
		[_target, ["Patient kreieren (Medium)", "scripts\fn_setDamgeAI.sqf", _arguments, 1.5, true, true, "", "true", 3]] remoteExecCall ["addAction", 0]
	};
	case "Light": {
		[_pat, selectRandom [0,0.3,0.5], "RightLeg", selectrandom ["stab", "bullet", "falling"]] call ace_medical_fnc_addDamageToUnit;
		[_pat, selectRandom [0,0.3,0.5], "LeftLeg", selectrandom ["stab", "bullet", "falling"]] call ace_medical_fnc_addDamageToUnit;
		[_pat, selectRandom [0,0.3,0.5], "body", selectrandom ["stab", "bullet", "falling"]] call ace_medical_fnc_addDamageToUnit;
		[_pat, selectRandom [0,0.3,0.5], "head", selectrandom ["stab", "bullet", "falling"]] call ace_medical_fnc_addDamageToUnit;
		[_pat, selectRandom [0,0.3,0.5], "RightArm", selectrandom ["stab", "bullet", "falling"]] call ace_medical_fnc_addDamageToUnit;
		[_pat, selectRandom [0,0.3,0.5], "LeftArm", selectrandom ["stab", "bullet", "falling"]] call ace_medical_fnc_addDamageToUnit;

		waitUntil {sleep 5; isNull _pat};
		[_target, ["Patient kreieren (Light)", "scripts\fn_setDamgeAI.sqf", _arguments, 1.5, true, true, "", "true", 3]] remoteExecCall ["addAction", 0]
	}
}