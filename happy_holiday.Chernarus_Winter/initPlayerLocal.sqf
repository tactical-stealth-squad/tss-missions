params ["_player", "_didJIP"];

call compile preprocessFileLineNumbers "briefing.sqf";
[teleport] call compile preprocessFileLineNumbers "fn_addTeleporter.sqf";

[trgt_brother] call compile preprocessFileLineNumbers "talk_brother.sqf";
[trgt_leader] call compile preprocessFileLineNumbers "talk_leader.sqf";

{
	[_x] call compile preprocessFileLineNumbers "talk_outside.sqf";
} forEach [trgt_outside_1,trgt_outside_2];

{
	[_x] call compile preprocessFileLineNumbers "talk_pat_action.sqf";
} forEach [pat_1,pat_2];

[_player] call compile preprocessFileLineNumbers "loadout_own.sqf";

if (!_didJIP) then {
	call compile preprocessFileLineNumbers "CUL_snow.sqf";
};
sleep 10;
[["Hinterland von Chernarus",3,2],
 ["Irgendwann in den 90igern",3,2],
 ["Mitten im Urlaub",3,2]]
 call BIS_fnc_EXP_camp_SITREP;