Params ["_target", "_text"];

[
/* 0 object */							_target,
/* 1 action title */					_text,
/* 2 idle icon */						"\a3\ui_f\data\IGUI\Cfg\HoldActions\holdAction_unbind_ca.paa",
/* 3 progress icon */					"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
/* 4 condition to show */				"_this distance _target < 4",
/* 5 condition for action */			"""ACE_wirecutter"" in backpackItems _caller or ""ACE_wirecutter"" in vestItems _caller",
/* 6 code executed on start */			{
											params ["_target", "_caller", "_actionId", "_arguments"];
											if !("ACE_wirecutter" in backpackItems _caller or {"ACE_wirecutter" in vestItems _caller} or {"ACE_UAVBattery" in backpackItems _caller} or {"ACE_UAVBattery" in vestItems _caller} or {"ACE_Cellphone" in backpackItems _caller} or {"ACE_cellphone" in vestItems _caller}) then {
												hintSilent "You have not all items you need (wirecutter, cellphone and battery) in backpack or vest!";
											} else {
												titletext ["Abdeckung abnehmen ...", "PLAIN"];
												sleep 2;
												titletext ["...Elektronik freilegen.", "PLAIN"];
												sleep 2;
												titletext ["Störsender einbauen ...", "PLAIN"]
											};
										},
/* 7 code executed per tick */			{
											params ["_target", "_caller", "_actionId", "_arguments", "_progress", "_maxProgress"];
											if (_progress == 6) then {
												hintSilent "25%!";
											};
											if (_progress == 12) then {
												hintSilent "50%!";
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
											if ("ACE_UAVBattery" in backpackItems _caller) then {_caller removeItemFromBackpack "ACE_UAVBattery"};
											if ("ACE_UAVBattery" in vestItems _caller) then {_caller removeItemFromVest "ACE_UAVBattery"};
											if ("ACE_Cellphone" in backpackItems _caller) then {_caller removeItemFromBackpack "ACE_Cellphone"};
											if ("ACE_cellphone" in vestItems _caller) then {_caller removeItemFromVest "ACE_Cellphone"};

											private _random = selectrandom [1, 2, 3];
											switch (_random) do {
												case 1: {
													titletext ["... fertig ... falsch eingebaut (Strom komplett aus)!", "PLAIN"];
													[[lightsout, 1600], {_this call compile preprocessFileLineNumbers "scripts\fn_lightsout.sqf"}] remoteExecCall ["BIS_fnc_Call", 0];
													["task1", "FAILED", false] remoteExecCall ["BIS_fnc_taskSetState", 2];
													deleteVehicle trg_sup_help
												};
												case 2: {
													titletext ["... fertig ... falsch eingebaut (sie hören es ja)!", "PLAIN"];
													["task1", "FAILED", false] remoteExecCall ["BIS_fnc_taskSetState", 2];
													[[20, [speaker_1, speaker_2]], {_this spawn compile preprocessFileLineNumbers "scripts\fn_AlarmSound.sqf"}] remoteExec ["BIS_fnc_Spawn", 2];
													deleteVehicle trg_sup_help
												};
												case 3: {
													titletext ["... fertig ... erfolgreich eingebaut!", "PLAIN"];
													["task1", "SUCCEEDED", false] remoteExecCall ["BIS_fnc_taskSetState", 2];
													deleteVehicle trg_sup_help
												}
											}
										},
/* 9 code executed on interruption */	{
											hintSilent "You had to Press your Key or you have not all items you need (wirecutter, cellphone and battery) in backpack or vest!";
										},
/* 10 arguments */						[],
/* 11 action duration */				45,
/* 12 priority */						1,
/* 13 remove on completion */			true,
/* 14 show unconscious */				false
] call BIS_fnc_holdActionAdd;

nil