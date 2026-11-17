/// Skill & Eventhandler///
{
	_x setskill ["spotDistance", 1];
	_x setskill ["spotTime", 1];
	_x setskill ["courage", 1];
	_x unassignItem "NVGoggles_INDEP";
    _x removeItem "NVGoggles_INDEP";
    _x unassignItem "ItemRadio";
	_x removeitem "ItemRadio";
	// Eventhandler for moving when hit
	_x addEventhandler [
		"HIT",
		{
			if (side (_this select 3) isEqualTo independent OR !alive (_this select 0) OR (vehicle (_this select 0) != (_this select 0))) exitWith {};
			(_this select 0) removeEventHandler ["HIT", _thisEventHandler];
			if !((_this select 0) checkAIFeature "PATH") then {(_this select 0) enableAI "PATH"};
			(_this select 0) doSuppressiveFire getPosASL (_this select 3);
			[(_this select 0), (_this select 3), 50, true] call CBA_fnc_taskAttack
		}
	]
} foreach (units independent);

// Lambs
{
	if (_x isEqualTo target OR !(_x checkAIFeature "PATH") OR (vehicle _x != _x)) then {
		_x setVariable ["lambs_danger_disableAI",true];
		_x setVariable ["Vcm_Disable",true]
	}
} foreach (AllUnits-Allplayers);

// Execlude VCOM
target setVariable ["Vcm_Disable",true];
target setVariable ["lambs_danger_disableAI",true];

// Tasks
call compile preprocessFileLineNumbers "scripts\tasks.sqf";

// one Kill Fennek special
{
	_x addEventhandler ["hitPart", {[(_this select 0), false] call compile preprocessFileLineNumbers "scripts\iV_fnc_oneHitKill_fennekSpecial"}]
} foreach [fen_1, fen_2, fen_3, driver_2];

waitUntil {sleep 2; time > 10};
target_veh setVehicleLock "LOCKED"