GEA_fnc_loadout = compile preprocessFileLineNumbers "loadout.sqf";
GEA_fnc_spawn_group = compile preprocessFileLineNumbers "spawn_group.sqf";
GEA_fnc_spawn_veh = compile preprocessFileLineNumbers "spawn_veh.sqf";
//CLY_fnc_removeDead = compile preprocessFileLineNumbers "CLY_removeDead.sqf";

[900,0,true] spawn compile preprocessFileLineNumbers "CLY_removeDead.sqf";

{
	_x addEventHandler ["Fired",
		{
			[] spawn {
				private _pos = selectRandom ["spawn_air_0", "spawn_air_1", "spawn_air_2", "spawn_air_3"];
				["O_Plane_Fighter_02_F", _pos, [5005.33,5912.72,0]] call GEA_fnc_spawn_veh;
				sleep 1;
				["O_Plane_Fighter_02_F", _pos, [5005.33,5912.72,0]] call GEA_fnc_spawn_veh;
			};

			_this select 0 removeEventHandler ["Fired", _thisEventHandler];
		}];

} forEach [recon_0,recon_1];

execVM "attack_ground.sqf";
execVM "attack_air.sqf";
execVM "attack_veh.sqf";