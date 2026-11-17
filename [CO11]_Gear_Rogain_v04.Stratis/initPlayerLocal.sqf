GEA_fnc_sat_view = compile preprocessFileLineNumbers "sat_view.sqf";

private _action = [	
	"sat_view", 
	"Satellitenansicht", 
	"", 
	{
    	Params ["_target", "_player", "_actionParams"];
		[_player] spawn GEA_fnc_sat_view;
    },
    {
		true
	}
] call ace_interact_menu_fnc_createAction;
[screen, 0,["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

if (typeOf (player) == "B_soldier_repair_F") then {
	private _action = [	
		"repair", 
		"Systeme reparieren", 
		"", 
		{
			Params ["_target", "_player", "_actionParams"];
			[
    			15,
    			[_target], {
        		_args params ["_target"];
         		_target setDamage 0;
    			},
				{
				_args params ["_target", "_player"];
				hint "Canceled repairing!";
				},
				"Repairing ..."
			] call ace_common_fnc_progressBar;
		},
		{
			true
		}
	] call ace_interact_menu_fnc_createAction;

	{
		[_x, 0,["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;
	} forEach [sam_0,sam_1,radar,cram];
};

execVM "briefing.sqf";

sleep 10;
[["Camp Rogain, Agios Efstratios",3,2],
 ["2 Stunden nach erstem Beschuss",3,2]]
 call BIS_fnc_EXP_camp_SITREP;
