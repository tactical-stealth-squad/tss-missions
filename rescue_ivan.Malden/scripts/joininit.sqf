private _object = _this select 0;
_object setIdentity "Ivan";
///////////////////////////////////////////
//                                       //
///////////////////////////////////////////
private _action_1 = [
	"MAIN_Action",
	"Mit Geisel interagieren",
	"",
	{
		true
	},
	{
		true
	},
	{

	},
	[

	],
	[0,0,0],
	10
] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions"], _action_1] call ace_interact_menu_fnc_addActionToObject;
///////////////////////////////////////////
//                                       //
///////////////////////////////////////////
private _action_2 = [
	"Unterhalten",
	"Unterhalten",
	"",
	{
		Params ["_target", "_player", "_actionParams"];
		/// Gesprochener Text für alle im Umkreis von 10 Meter um den Ziviliste
		private _allPlayers = call BIS_fnc_listPlayers;
		private _playerlist = [];
		{
			if (_x distance _target < 10) then {
				_playerlist pushback _x
			}
		} foreach _allPlayers;
		[
			//Displays 4 subtitles, with 15 seconds in between them
			[name _target, "Ufff...danke für die Rettung.", 0],
			[name _target, "Arrrgh ... ich kann später euren Exfil anfordern, sobald ihr euch sicher seid, dass wir fliegen können!", 15]
		] remoteExec [
			"BIS_fnc_EXP_camp_playSubtitles",
			_playerlist
		]
	},
	{
		true
	},
	{

	},
	[

	],
	[0,0,0],
	10
] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions", "MAIN_Action"], _action_2] call ace_interact_menu_fnc_addActionToObject;
///////////////////////////////////////////
//                                       //
///////////////////////////////////////////
private _action_3 = [
	"Weste",
	"Weste anlegen",
	"",
	{
		Params ["_target", "_player", "_actionParams"];
		if (((backpackItems _player) find "V_CarrierRigKBT_01_Olive_F") isEqualTo -1) then {
			hintsilent "Du hast nicht die Weste für ihn!"
		} else {
			_player removeItemFromBackpack "V_CarrierRigKBT_01_Olive_F";
			_target addVest "V_CarrierRigKBT_01_Olive_F";
			[_target, 0,["ACE_MainActions", "MAIN_Action", "Weste"]] remoteExecCall ["ace_interact_menu_fnc_removeActionFromObject", 0]
		}
	},
	{
		true
	},
	{

	},
	[

	],
	[0,0,0],
	10
] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions", "MAIN_Action"], _action_3] call ace_interact_menu_fnc_addActionToObject;
///////////////////////////////////////////
//                                       //
///////////////////////////////////////////
private _action_4 = [
	"Exfil",
	"Exfil rufen!",
	"",
	{
		if !(vest _target isEqualTo "V_CarrierRigKBT_01_Olive_F") exitWIth {Hintsilent "Ich brauche die Weste!"};
		Params ["_target", "_player", "_actionParams"];
		[
			"Exfil_server",
			[
				_target
			]
		] call CBA_fnc_serverEvent;
		// Remove Ace_Interaction
		[_target, 0,["ACE_MainActions", "MAIN_Action", "Exfil"]] remoteExecCall ["ace_interact_menu_fnc_removeActionFromObject", 0]
	},
	{
		true
	},
	{

	},
	[

	],
	[0,0,0],
	10
] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions", "MAIN_Action"], _action_4] call ace_interact_menu_fnc_addActionToObject;
///////////////////////////////////////////
//                                       //
///////////////////////////////////////////
private _action_5 = [
	"FOLGEN",
	"Folgen",
	"",
	{
		Params ["_target", "_player", "_actionParams"];
		[[_target, "Ivan"], {_this spawn compile preprocessFileLineNumbers "scripts\sush_pow_script.sqf";}] remoteExec ["BIS_fnc_spawn", 0];
		[_target, 0,["ACE_MainActions", "MAIN_Action", "FOLGEN"]] remoteExecCall ["ace_interact_menu_fnc_removeActionFromObject", 0]
	},
	{
		true
	},
	{

	},
	[

	],
	[0,0,0],
	10
] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions", "MAIN_Action"], _action_5] call ace_interact_menu_fnc_addActionToObject;

nil