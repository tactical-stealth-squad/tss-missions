// SKill
{
	_x setskill ["spotDistance", 1];
	_x setskill ["spotTime", 1];
	_x setskill ["courage", 1];

	// Eventhandler for moving when hit
	if (_x checkAIFeature "PATH") exitWith {};
	_x addEventhandler [
		"HIT",
		{
			if (side (_this select 3) isEqualTo east OR !alive (_this select 0)) exitWith {};
			(_this select 0) removeEventHandler ["HIT", _thisEventHandler];
			(_this select 0) enableAI "PATH";
			(_this select 0) doSuppressiveFire getPosASL (_this select 3);
			[(_this select 0), (_this select 3), 50, true] call CBA_fnc_taskAttack
		}
	];
} foreach (units east);

// Loadouts
call compile preprocessFile "scripts\loadout_cars.sqf";

//fnc_random_grp initialisierung
call compile preprocessFile "enemy_spawn\random_group_creator\fnc_random_grp_init.sqf";

// Loadouts
call compile preprocessFile "scripts\loadout_csat.sqf";

// no VCOM and LAMBS for Theo and Colonel
{
	_x setVariable ["Vcm_Disable",true];
	_x setVariable ["lambs_danger_disableAI", true];
} foreach [target_theo, target];

// Theo
target_theo disableAI "path";
dostop target_theo;