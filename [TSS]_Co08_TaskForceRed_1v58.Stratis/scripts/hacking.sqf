private _object = _this select 0;

private _action = [
	"PC Hacken",
	"PC Hacken",
	"",
	{
		Params ["_target", "_player", "_actionParams"];
		_target setVariable ["Global_var_Hack", true, true];
		[
			100,
			[_target, _player],
			{
				_args params ["_target", "_player"];
				hacked = true;
				PublicVariable "hacked"
			},
			{
				_args params ["_target", "_player"];
				hint "Canceled hacking!";
				_target setVariable ["Global_var_Hack", false, true]
			},
			"... hacking ..."
		] call ace_common_fnc_progressBar
	},
	{
		Params ["_target", "_player", "_actionParams"];
		!(_target getVariable "Global_var_Hack")
	},
	{
	},
	[
	],
	[0,0,0],
	5
] call ace_interact_menu_fnc_createAction;

[
	_object,
	0,
	[
	],
	_action
] call ace_interact_menu_fnc_addActionToObject;

nil