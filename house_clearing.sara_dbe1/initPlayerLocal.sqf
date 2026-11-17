Params ["_player", "_didJIP"];

// HC
if (!hasinterface) exitWith {};

doStop _player;
// Tarrain
setTerrainGrid 3.125;
// Briefing
call compile preprocessFileLineNumbers "scripts\briefing.sqf";
// Loadouts
[_player] call compile preprocessFileLineNumbers "scripts\loadout\loadout_init.sqf";
// Ausrüster
[ausruester] call compile preprocessFileLineNumbers "scripts\loadout\init_gear_inf.sqf";
// Teleport
[teleport] call compile preprocessFileLineNumbers "scripts\fn_addTeleporter.sqf";

[_player] call compile preprocessFileLineNumbers "scripts\sit_down.sqf";
//
private _action_1 = [
	"Intro",
	"UAV Aufklärung (einmalig!!)",
	"",
	{
		["introPlay", [], Allplayers - entities "HeadlessClient_F" - [_player]] call CBA_fnc_targetEvent;
		[_target, 0,["ACE_MainActions", "Intro"]] remoteExecCall ["ace_interact_menu_fnc_removeActionFromObject", 0];
		private _introhandler = [] spawn compile preprocessFileLineNumbers "scripts\introClientHelper.sqf";
		[
			{scriptDone (_this select 0)},
			{
				{deleteVehicle _x} foreach [plane_1, plane_2, plane_3];
			},
			[_introhandler]
		] call CBA_fnc_waitUntilAndExecute
	},
	{
		true
	}
] call ace_interact_menu_fnc_createAction;

[laptop, 0, ["ACE_MainActions"], _action_1] call ace_interact_menu_fnc_addActionToObject;
// Intro für Non JIPler
if (!_didJIP) then {
	private _introHandler_1 = [] spawn compile preprocessFileLineNumbers "scripts\introClient.sqf";
	scriptDone _introHandler_1;
	[
		"introPlay",
		{
   			[_thisType, _thisId] call CBA_fnc_removeEventHandler;
   			[] spawn compile preprocessFileLineNumbers "scripts\introClientHelper.sqf";
		}
	] call CBA_fnc_addEventHandlerArgs
};