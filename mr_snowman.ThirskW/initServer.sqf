// SKill and EH when unit get`s hit
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
			if !((_this select 0) checkAIFeature "PATH") then {(_this select 0) enableAI "PATH"};
			(_this select 0) doSuppressiveFire getPosASL (_this select 3);
			[(_this select 0), (_this select 3), 50, true] call CBA_fnc_taskAttack
		}
	]
} foreach (units east);

// Rucksack für nicht DLCler
boat_backpack addBackpackCargoGlobal ["CUP_B_AssaultPack_Coyote",1];

// Marker verstecken
"marker_07" setMarkerAlpha 0;

// Intel Radarstellung
[intel02] call compile preprocessFileLineNumbers "scripts\intel02.sqf";

// keine Bewegung für Towerguards
{_x disableAI "PATH"; _x setUnitPos "UP"} foreach (units grp_towerGuard);

//
[grp_RadarDefend] call CBA_fnc_taskDefend;

//
call compile preprocessFile "scripts\custom_cars.sqf";

//
{_x disableAI "PATH"; _x setVariable ["Vcm_Disable",true]} grp_church_2;
{_x disableAI "PATH"; _x setVariable ["Vcm_Disable",true]} grp_church_1;
{_x disableAI "PATH"; _x setVariable ["Vcm_Disable",true]} grp_exfil;

// Reveal Mines
{
	east revealMine _x
} foreach AllMines