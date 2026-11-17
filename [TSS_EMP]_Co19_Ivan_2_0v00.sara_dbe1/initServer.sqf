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

// No VCOM for editor units
{
	if (side _x isEqualTo east) then {
		_x setVariable ["Vcm_Disable", true];
		vehicle _x setVariable ["Vcm_Disable", true]
	}
} foreach (Allunits - Allplayers);

// Reveal Mines
{
	east revealMine _x
} foreach AllMines;

// End
[
	"End_c130",
	{
    	[_thisType, _thisId] call CBA_fnc_removeEventHandler;
    	call compile preprocessFileLineNumbers "scripts\spawn\spawn_c130.sqf"
	}
] call CBA_fnc_addEventHandlerArgs