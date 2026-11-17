if (!isServer) exitWith {};
// gather enemies present at mission start
Arry_enemies = [];
{
   	Arry_enemies pushBack _x
} forEach (units east - units convCar_0);

// run radio check every 300s aka 5min
[
	{
		if (!radio_check) then {
			//"radio check pfh stoped"
		  	[_this select 1] call CBA_fnc_removePerFrameHandler;
		};

		{
		  	if (!(alive _x) || {_x getVariable ["ACE_isUnconscious", false]}) then {
			    //"unresponsive unit detected via radio check!"
			    [recon_2, 1500] spawn lambs_wp_fnc_taskRush;
			    if (radio_check) then {radio_check = false};
			    [20, [Speaker_2]] spawn compile preprocessFileLineNumbers "scripts\fn_Alarmsound.sqf";
			};
		} forEach Arry_enemies;
	},
	300
] call CBA_fnc_addPerFrameHandler;

nil