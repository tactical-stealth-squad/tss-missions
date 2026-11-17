/// Skill & Eventhandler///
{
	_x setskill ["spotDistance", 1];
	_x setskill ["spotTime", 1];
	_x setskill ["courage", 1];
	_x addItem "NVGoggles_INDEP";
	_x assignItem "NVGoggles_INDEP";
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
	if !(_x checkAIFeature "PATH") then {
		_x setVariable ["lambs_danger_disableAI",true]
	}
} foreach AllUnits;

//
[
	"Exfil_server",
	{
		[_thisType, _thisId] call CBA_fnc_removeEventHandler;
		private _targ = _this select 0;
		["Exfil", _targ, "I_Heli_Transport_02_F", EAST, "ION", {[(_this select 0)] call compile preprocessFileLineNumbers "scripts\end.sqf"}] spawn compile preprocessFileLineNumbers "scripts\fn_heliExfil.sqf"
	}
] call CBA_fnc_addEventHandlerArgs;

// Tasksystem
call compile preprocessFileLineNumbers "scripts\tasks.sqf";

// Box Loadout
call compile preprocessFileLineNumbers "scripts\loadout\box.sqf";

// Loadout Henker
{
	_x setUnitLoadout [[],[],["hgun_Pistol_heavy_02_F","","","",["6Rnd_45ACP_Cylinder",6],[],""],["U_I_CombatUniform",[["FirstAidKit",1],["SmokeShellGreen",1,1]]],["V_HarnessOGL_ghex_F",[["SmokeShellOrange",1,1],["SmokeShellPurple",1,1],["Chemlight_green",2,1]]],[],"H_Shemag_olive","G_Combat",[],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch",""]]
} foreach [o_officer_1, o_officer_2];

// Some things for the "geisel"
{
	_x setUnitLoadout [[],[],[],["U_I_C_Soldier_Bandit_5_F",[]],[],[],"","",[],["","","","","",""]]
} foreach [o_target_1, o_target_2];

// Random delete
private _result = selectrandom [[o_officer_2, o_target_2], [o_target_1, o_officer_1]];
{deleteVehicle _x} foreach _result