////////////////////////////////////////////////
//                  BCM                       //
////////////////////////////////////// by D?Z //

Params [
	"_object",
	"_password",
	["_IT", objNull],
	["_code", {}]
];
/// Variable
BCM_Code = _code;

_object setVariable ["BCM_Hack_1", false, true];
_object setVariable ["BCM_Hack_2", false, true];

BCM_Action_Obj = _object;

Password_elec = "";

/// Password
DAZ_mdp_courant = _password;


_object setObjectTextureGlobal  [0, "image\WinLogIN.jpg"];

//_object setObjectTextureGlobal  [0, "DAZ_BCM_POWER_PLANT\images\hack_courant.paa"];

private _action_1 = [
	"DAZ_BCM_Consulter_pc",
	"PC Untersuchen",
	"",
	{
		true
	},
	{
		!(_target getVariable ["BCM_Hack_1", false])
	}
	] call ace_interact_menu_fnc_createAction;
[_object, 0, [], _action_1] call ace_interact_menu_fnc_addActionToObject;



private _action_2 = [
	"DAZ_BCM_COURANT_pc",
	"Passwort Eingabe",
	"",
	{
		createDialog "DAZ_Login_elec";
		_target setVariable ["BCM_Hack_1", true, true];
		[
			{
				!dialog
			},
			{
				if (password_elec == "") then {
					(_this select 0) setVariable ["BCM_hack_1", false, true];
				}
			},
			[_target]
		] call CBA_fnc_waitUntilAndExecute;
	},
	{
		!(_target getVariable ["BCM_Hack_1", false])
	}
	] call ace_interact_menu_fnc_createAction;
[_object, 0, ["DAZ_BCM_Consulter_pc"], _action_2] call ace_interact_menu_fnc_addActionToObject;



private _action_3 = [
	"DAZ_BCM_Hack_pc",
	"PC Hacken",
	"",
	{
		Params ["_target", "_player", "_actionParams"];
		[_target] call DAZ_BCM_fnc_son;
		_target setObjectTextureGlobal [0, "DAZ_BCM_POWER_PLANT\images\hack_En_cours.paa"];
		_target setVariable ["BCM_Hack_1", true, true];
		[
			15,
			[_target, _player],
			{
				_args params ["_target", "_player"];
				_target setVariable ["BCM_Hack_2", true, true];
				deleteVehicle (_target getVariable ["speaker", objNull]);
				hintsilent parseText format ["<t color='#ffffff' size='1.2' shadow='1' shadowColor='#000000' align='center'>Password:</t> <t color='#5ab300' size='1.2' shadow='1' shadowColor='#000000' align='center'>%1</t>", DAZ_mdp_courant];
				_target setObjectTextureGlobal  [0, "image\WinLogIN.jpg"];
				_target setVariable ["BCM_Hack_1", false, true];
			},
			{
				_args params ["_target", "_player"];
				hint "Canceled hacking!";
				_target setVariable ["BCM_hack_2", false, true];
				deleteVehicle (_target getVariable ["speaker", objNull]);
				_target setObjectTextureGlobal  [0, "image\WinLogIN.jpg"];
				_target setVariable ["BCM_Hack_1", false, true];
			},
			"... hacking ..."
		] call ace_common_fnc_progressBar;

	},
	{
		Params ["_target", "_player", "_actionParams"];
		!(_target getVariable ["BCM_Hack_1", false]) && !(_target getVariable ["BCM_Hack_2", false]) && _player == _actionParams select 0
	},
		{

	},
	[
		_IT
	],
	[0,0,0],
	10
	] call ace_interact_menu_fnc_createAction;
[_object, 0, ["DAZ_BCM_Consulter_pc"], _action_3] call ace_interact_menu_fnc_addActionToObject;
