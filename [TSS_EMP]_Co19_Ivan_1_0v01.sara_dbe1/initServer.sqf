// Function for handling the spawn events
zinki_fnc_handleEvent = compile preprocessFileLineNumbers "scripts\fnc_handleEvent.sqf";

// SKill and EH when unit get`s hit
[
	"CAManBase",
	"init",
	{
		if (side (_this select 0) isEqualTo west) exitWith {};
		(_this select 0) setskill ["spotDistance", 1];
		(_this select 0) setskill ["spotTime", 1];
		(_this select 0) setskill ["courage", 1];
		// Eventhandler for moving when hit
		(_this select 0) addEventhandler [
			"HIT",
			{
				if (side (_this select 3) isEqualTo EAST OR !alive (_this select 0)) exitWith {};
				(_this select 0) removeEventHandler ["HIT", _thisEventHandler];
				(_this select 0) enableAI "PATH";
				(_this select 0) doSuppressiveFire getPosASL (_this select 3);
				[(_this select 0), (_this select 3), 50, true] call CBA_fnc_taskAttack;
				if ((_this select 0) getVariable "Vcm_Disable") then {
					[
						{
							private _unit = _this select 0;
							_unit setVariable ["Vcm_Disable", false]
						},
						[
							_this select 0
						],
						5
					] call CBA_fnc_waitAndExecute
				}
			}
		]
	},
	true,
	[],
	true
] call CBA_fnc_addClassEventHandler;

// Loadout Box
call compile preprocessFileLineNumbers "scripts\loadout\box.sqf";

// Mortar support
(gunner arty_1) addEventhandler [
	"KILLED",
	{
		{
			_x setVariable ["Vcm_Disable", false];
			_x enableAI "PATH"
		} foreach crew alc_sup_1;
		[alc_sup_1, (_this select 2), 100] call CBA_fnc_taskAttack
	}
];

// First fallies when radar gets destroyed
o_target_1 addEventhandler [
	"KILLED",
	{
		["spawn_fallies_1", 10] call zinki_fnc_handleEvent
	}
];

// No VCOM for editor units
{
	if (side _x isEqualTo east) then {
		_x setVariable ["Vcm_Disable", true]
	}
} foreach (Allunits - Allplayers);

// Reveal Mines
{
	east revealMine _x
} foreach AllMines;