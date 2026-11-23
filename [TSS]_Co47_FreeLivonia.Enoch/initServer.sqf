// Function for handling the spawn events
zinki_fnc_handleEvent = compile preprocessFileLineNumbers "scripts\fn_handleEvent.sqf";

// Everybody stands still expect helipilots
{
	if !(typeOf _x isEqualTo "O_helipilot_F") then {
		_x disableAI "PATH";
	};
	_x setVariable ["Vcm_Disable", true];
	_x setVariable ["lambs_danger_disableAI",true];
} foreach (units east);

// Custom loadouts for russian units (Class-EH) && bluefore "ausrüster"
call compile preprocessFileLineNumbers "scripts\loadouts\customsLoadouts.sqf";
// Custom loadouts for russian tanks (Class-EH)
call compile preprocessFileLineNumbers "scripts\loadouts\RU_tanks.sqf";
// Other Class EHs
call compile preprocessFileLineNumbers "scripts\class_EHs.sqf";

// Arty ACE/BI fault
arty_1 setVariable ["ace_mk6mortar_exclude", true];

// Intel files
[1, intel_hq_1] call compile preprocessFileLineNumbers "Scripts\intel.sqf";
[2, intel_hq_2] call compile preprocessFileLineNumbers "Scripts\intel.sqf";

// Bluefore units in base
if (!isNil "HC_1") then {
	diag_log "### HC: Spawn Bluefore Base Units ###";
	call compile preprocessFileLineNumbers "scripts\spawn\SpawnBluefore.sqf";
} else {
	diag_log "### Server: Spawn Bluefore Base Units ###";
	call compile preprocessFileLineNumbers "scripts\spawn\SpawnBluefore.sqf";
};

//Box onto the quads (back)
box_1 attachTo [quad_1, [0,-0.83,-0.25]];
quad_1 lockCargo true;

box_2 attachTo [quad_2, [0,-0.83,-0.25]];
quad_2 lockCargo true;

// Spawns
["Spawn_Glinska", 10 + random 30] call zinki_fnc_handleEvent;
["Spawn_toplin", 20 + random 30] call zinki_fnc_handleEvent;
["Spawn_Rail", 30 + random 30] call zinki_fnc_handleEvent;
["Spawn_airport", 40 + random 30] call zinki_fnc_handleEvent;
["Spawn_patrol", 50 + random 30] call zinki_fnc_handleEvent;
["Spawn_TankPatrol", 60 + random 30] call zinki_fnc_handleEvent;

// Task Toplin (destroy all trucks)
private _ArrayTrucks = [o_fuel_1, o_fuel_2, o_fuel_3, o_ammo_1, o_ammo_2, o_ammo_3, o_ammo_4];
{
	_x addEventhandler [
		"KILLED",
		{
			(_this select 0) removeEventHandler ["KILLED", _thisEventHandler];
			if ({alive _x} count _ArrayTrucks isEqualTo 0) exitWith {
				["Spawn_toplin_support_2", 10] call zinki_fnc_handleEvent;
			}
		}
	]
} foreach _ArrayTrucks;