// Aufruf:
// [ObejktVarName] call compile preprocessFileLineNumbers "boxer.sqf"

private _object = _this select 0;

private _actionMain = [
	"Box auswählen",
	"Box auswählen",
	"",
	{
		true
	},
	{
		true
	}
] call ace_interact_menu_fnc_createAction;

[_object, 0, [], _actionMain] call ace_interact_menu_fnc_addActionToObject;


private _action_2 = [
	"Ammo Kiste",
	"Ammo Kiste",
	"",
	{
		Params ["_target", "_player", "_actionParams"];
		// Save position
		private _pos = ((getPosATL _player) vectorAdd ((vectorDir _player) vectorMultiply -2));
		// Create Box
		private _dummy = (_actionParams select 0) createVehicle [0,0];
		// Clear cargo
		clearweaponcargoGlobal _dummy;
		clearmagazinecargoGlobal _dummy;
		clearitemcargoGlobal _dummy;
		// Move to save position
		_dummy setPosATL _pos
	},
	{
		true
	},
	{
	},
	[
		"ACE_Box_Ammo"
	],
	[0,0,0],
	10
] call ace_interact_menu_fnc_createAction;
[_object, 0, ["Box auswählen"], _action_2] call ace_interact_menu_fnc_addActionToObject;


private _action_3 = [
	"Granaten Kiste",
	"Granaten Kiste",
	"",
	{
		Params ["_target", "_player", "_actionParams"];
		// Save position
		private _pos = ((getPosATL _player) vectorAdd ((vectorDir _player) vectorMultiply -2));
		// Create Box
		private _dummy = (_actionParams select 0) createVehicle [0,0];
		// Clear cargo
		clearweaponcargoGlobal _dummy;
		clearmagazinecargoGlobal _dummy;
		clearitemcargoGlobal _dummy;
		// Move to save position
		_dummy setPosATL _pos
	},
	{
		true
	},
	{
	},
	[
		"Box_NATO_Grenades_F"
	],
	[0,0,0],
	10
] call ace_interact_menu_fnc_createAction;
[_object, 0, ["Box auswählen"], _action_3] call ace_interact_menu_fnc_addActionToObject;


private _action_4 = [
	"Launcher Kiste",
	"Launcher Kiste",
	"",
	{
		Params ["_target", "_player", "_actionParams"];
		// Save position
		private _pos = ((getPosATL _player) vectorAdd ((vectorDir _player) vectorMultiply -2));
		// Create Box
		private _dummy = (_actionParams select 0) createVehicle [0,0];
		// Clear cargo
		clearweaponcargoGlobal _dummy;
		clearmagazinecargoGlobal _dummy;
		clearitemcargoGlobal _dummy;
		clearBackpackCargoGlobal _dummy;
		// Move to save position
		_dummy setPosATL _pos
	},
	{
		true
	},
	{
	},
	[
		"Box_NATO_WpsLaunch_F"
	],
	[0,0,0],
	10
] call ace_interact_menu_fnc_createAction;
[_object, 0, ["Box auswählen"], _action_4] call ace_interact_menu_fnc_addActionToObject;



private _action_5 = [
	"Explosives Kiste",
	"Explosives Kiste",
	"",
	{
		Params ["_target", "_player", "_actionParams"];
		// Save position
		private _pos = ((getPosATL _player) vectorAdd ((vectorDir _player) vectorMultiply -2));
		// Create Box
		private _dummy = (_actionParams select 0) createVehicle [0,0];
		// Clear cargo
		clearweaponcargoGlobal _dummy;
		clearmagazinecargoGlobal _dummy;
		clearitemcargoGlobal _dummy;
		// Move to save position
		_dummy setPosATL _pos
	},
	{
		true
	},
	{
	},
	[
		"ACE_Box_82mm_Mo_HE"
	],
	[0,0,0],
	10
] call ace_interact_menu_fnc_createAction;
[_object, 0, ["Box auswählen"], _action_5] call ace_interact_menu_fnc_addActionToObject;



private _action_6 = [
	"Support Kiste",
	"Support Kiste",
	"",
	{
		Params ["_target", "_player", "_actionParams"];
		// Save position
		private _pos = ((getPosATL _player) vectorAdd ((vectorDir _player) vectorMultiply -2));
		// Create Box
		private _dummy = (_actionParams select 0) createVehicle [0,0];
		// Clear cargo
		clearweaponcargoGlobal _dummy;
		clearmagazinecargoGlobal _dummy;
		clearitemcargoGlobal _dummy;
		clearBackpackCargoGlobal _dummy;
		// Move to save position
		_dummy setPosATL _pos
	},
	{
		true
	},
	{
	},
	[
		"ACE_Box_Misc"
	],
	[0,0,0],
	10
] call ace_interact_menu_fnc_createAction;
[_object, 0, ["Box auswählen"], _action_6] call ace_interact_menu_fnc_addActionToObject;


private _action_7 = [
	"Waffen Kiste",
	"Waffen Kiste",
	"",
	{
		Params ["_target", "_player", "_actionParams"];
		// Save position
		private _pos = ((getPosATL _player) vectorAdd ((vectorDir _player) vectorMultiply -2));
		// Create Box
		private _dummy = (_actionParams select 0) createVehicle [0,0];
		// Clear cargo
		clearweaponcargoGlobal _dummy;
		clearmagazinecargoGlobal _dummy;
		clearitemcargoGlobal _dummy;
		// Move to save position
		_dummy setPosATL _pos
	},
	{
		true
	},
	{
	},
	[
		"ACE_Box_Chemlights"
	],
	[0,0,0],
	10
] call ace_interact_menu_fnc_createAction;
[_object, 0, ["Box auswählen"], _action_7] call ace_interact_menu_fnc_addActionToObject;


private _action_8 = [
	"Medic Kiste",
	"Medic Kiste",
	"",
	{
		Params ["_target", "_player", "_actionParams"];
		// Save position
		private _pos = ((getPosATL _player) vectorAdd ((vectorDir _player) vectorMultiply -2));
		// Create Box
		private _dummy = (_actionParams select 0) createVehicle [0,0];
		// Clear cargo
		clearweaponcargoGlobal _dummy;
		clearmagazinecargoGlobal _dummy;
		clearitemcargoGlobal _dummy;
		// Move to save position
		_dummy setPosATL _pos
	},
	{
		true
	},
	{
	},
	[
		"ACE_medicalSupplyCrate"
	],
	[0,0,0],
	10
] call ace_interact_menu_fnc_createAction;
[_object, 0, ["Box auswählen"], _action_8] call ace_interact_menu_fnc_addActionToObject;


private _action_del = [
	"Kiste löschen",
	"Kiste löschen",
	"",
	{
		Params ["_target", "_player", "_actionParams"];
		// Delete box
		deleteVehicle _target
	},
	{
		true
	}
] call ace_interact_menu_fnc_createAction;

{
	[_x, 0, ["ACE_MainActions"], _action_del] call ace_interact_menu_fnc_addActionToClass
} foreach ["ACE_Box_Ammo", "Box_NATO_Grenades_F", "Box_NATO_WpsLaunch_F", "ACE_Box_82mm_Mo_HE", "ACE_Box_Misc", "ACE_Box_Chemlights", "ACE_medicalSupplyCrate"];

_object