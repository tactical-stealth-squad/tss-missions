Params ["_target", "_text"];

[
/* 0 object */							_target,
/* 1 action title */					_text,
/* 2 idle icon */						"\a3\ui_f\data\IGUI\Cfg\HoldActions\holdAction_unbind_ca.paa",
/* 3 progress icon */					"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
/* 4 condition to show */				"_this distance _target < 5",
/* 5 condition for action */			"""ACE_wirecutter"" in backpackItems _caller or ""ACE_wirecutter"" in vestItems _caller",
/* 6 code executed on start */			{
											params ["_target", "_caller", "_actionId", "_arguments"];
											if !("ACE_wirecutter" in backpackItems _caller or {"ACE_wirecutter" in vestItems _caller}) then {
												hintSilent "You have not all items you need (wirecutter, cellphone and battery) in backpack or vest!";
											};
										},
/* 7 code executed per tick */			{
											params ["_target", "_caller", "_actionId", "_arguments", "_progress", "_maxProgress"];
											if (_progress == 6) then {
												titletext ["Abdeckung abnehmen ...", "PLAIN"];
												hintSilent "25%!";
											};
											if (_progress == 12) then {
												hintSilent "50%!";
												titletext ["... Kabel trennen ...", "PLAIN"];
											};
											if (_progress == 18) then {
												hintSilent "75%!";
												titletext ["... wieder verschließen ...", "PLAIN"];
											};
										},
/* 8 code executed on completion */		{
											params ["_target", "_caller", "_actionId", "_arguments"];
											[_target, _actionId] remoteExecCall ["bis_fnc_holdActionRemove", -2];
											hint "";
											sleep 1;
											titletext ["... fertig!", "PLAIN"];
											[[powerline, 400], {_this call compile preprocessFileLineNumbers "scripts\lightsout.sqf"}] remoteExecCall ["BIS_fnc_Call", 0];
										},
/* 9 code executed on interruption */	{
											hintSilent "You had to Press your Key or you have no Wirecutter in backpack or vest!";
										},
/* 10 arguments */						[],
/* 11 action duration */				45,
/* 12 priority */						1,
/* 13 remove on completion */			true,
/* 14 show unconscious */				false
] call BIS_fnc_holdActionAdd;

nil