Params ["_target", "_text"];

[
/* 0 object */							_target,
/* 1 action title */					_text,
/* 2 idle icon */						"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_hack_ca.paa",
/* 3 progress icon */					"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_hack_ca.paa",
/* 4 condition to show */				"_this distance _target < 5",
/* 5 condition for action */			"typeof _caller isEqualTo ""O_soldier_exp_F""",
/* 6 code executed on start */			{
											params ["_target", "_caller", "_actionId", "_arguments"];
											_target setObjectTextureGlobal [0, "images\hacking.jpg"]
										},
/* 7 code executed per tick */			{
											params ["_target", "_caller", "_actionId", "_arguments", "_progress", "_maxProgress"];
											if (_progress == 1) then {
												private _logic = createVehicle ["Land_HelipadEmpty_F", position _target, [], 0, "CAN_COLLIDE"];
												_target setVariable ["speaker", _logic];
												[_logic,"DAZ_Hack_son"] remoteExec ["say3d"]
											};
											if (_progress == 6) then {
												hintSilent "25%!";
											};
											if (_progress == 12) then {
												hintSilent "50%!";
												[(_target getVariable ["speaker", objNull]),"DAZ_Hack_son"] remoteExec ["say3d"];
												_target setObjectTextureGlobal [0, "images\hack_En_cours.paa"]
											};
											if (_progress == 18) then {
												hintSilent "75%!";
											};
										},
/* 8 code executed on completion */		{
											params ["_target", "_caller", "_actionId", "_arguments"];
											[_target, _actionId] remoteExecCall ["bis_fnc_holdActionRemove", -2];
											hint "";
											sleep 1;
											deleteVehicle (_target getVariable ["speaker", objNull]);

											private _random = selectrandom [1, 2];
											switch (_random) do {
												case 1: {
													titletext ["... fertig ... (Die Verstärkung sollte nicht kommen)!", "PLAIN"];
													_target setObjectTextureGlobal [0, "images\hacksucced.jpg"];
													[_target,"DAZ_mdp_ok"] remoteExec ["say3d"];
													{sup_car_1 deleteVehicleCrew _x} forEach crew sup_car_1;
													{sup_car_2 deleteVehicleCrew _x} forEach crew sup_car_2;
													{sup_palne deleteVehicleCrew _x} forEach crew sup_plane;
													{
														deleteVehicle _x
													} foreach [sup_car_1, sup_car_2, sup_plane, trg_sup]
												};
												case 2: {
													titletext ["... das ging schief ... !", "PLAIN"];
													_target setObjectTextureGlobal [0, "images\hackFail.jpg"];
													[_target,"DAZ_mdp_erreur"] remoteExec ["say3d"];
												}
											}
										},
/* 9 code executed on interruption */	{
											params ["_target", "_caller", "_actionId", "_arguments"];
											hintSilent "You had to Press your Key or you have no abilities!";
											deleteVehicle (_target getVariable ["speaker", objNull]);
											_target setObjectTextureGlobal [0, "images\winlogin.jpg"]
										},
/* 10 arguments */						[],
/* 11 action duration */				60,
/* 12 priority */						1,
/* 13 remove on completion */			true,
/* 14 show unconscious */				false
] call BIS_fnc_holdActionAdd;

nil