// SKill
{
	// SKill
	_x setskill ["spotDistance", 1];
	_x setskill ["spotTime", 1];
	_x setskill ["courage", 1];

	// grr CFP and Alive ...
	_x setVariable ["CFP_DisableRandom", true];
	_x setVariable ["ALiVE_OverrideLoadout", true];

	// Eventhandler for moving when hit
	_x addEventhandler [
		"HIT",
		{
			if (side (_this select 1) isEqualTo east OR !alive (_this select 0)) exitWith {};
			(_this select 0) removeEventHandler ["HIT", _thisEventHandler];
			if !((_this select 0) checkAIFeature "PATH") then {(_this select 0) enableAI "PATH"};
			(_this select 0) doSuppressiveFire getPosASL (_this select 1);
		}
	]
} foreach (units east);


// Keine Bewegung
private _static_groups = [];
{
	_static_groups append _x;
} foreach [units static_war_1, units static_war_2, units static_war_3, units static_tank_1, units static_tank_2, units static_transmit_1];

{
	dostop _x;
	_x disableAI "PATH";
	_x removeMagazines "smokeshell";

	// no LAMBS and VCOM for editor units
	_x setVariable ["lambs_danger_disableAI", true];
	_x setVariable ["Vcm_Disable", true];
} foreach _static_groups;


// NVG
private _NVG_groups = [];
{
	_NVG_groups append _x;
} foreach [units static_war_2, units static_war_3, units static_war_4, units static_tank_2, units pat_trans];

{
	_x addItem "CUP_NVG_PVS15_black";
	_x assignItem "CUP_NVG_PVS15_black";
	_x setUnitPos "MIDDLE";
} foreach _NVG_groups;

[KAT, UAZ_1] call ace_cargo_fnc_loadItem;