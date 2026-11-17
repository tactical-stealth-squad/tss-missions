if (!isServer) exitWith {};

Base_init = true;
PublicVariable "Base_init";

if (alive base_init_trigger_1) then {deleteVehicle base_init_trigger_1};
if (alive base_init_trigger) then {deleteVehicle base_init_trigger};

call compile preprocessFileLineNumbers "scripts\base\ServerSpawn.sqf";

if (isNil "HC_1") then {
	diag_log "### Kein HC ###";
	call compile preprocessFileLineNumbers "scripts\base\HCSpawn.sqf";
	[BLUEGroup] spawn compile preprocessFileLineNumbers "scripts\base\AI_Spawn.sqf"
} else {
	[
		"AI_Base",
		[
			BLUEGroup
		],
		owner HC_1
	] call CBA_fnc_ownerEvent
};