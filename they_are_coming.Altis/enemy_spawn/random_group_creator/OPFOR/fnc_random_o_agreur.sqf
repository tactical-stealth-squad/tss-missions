///////////////////////////////////////////////////////////////////////////////////////
// random_grp_o_agreur by sion. 													 //
// erstellt ein Array mit OPFOR-EUR-Terroristen Einheiten für die BIS_fnc_spawnGroup //
/////////////////////////////////////////////////////////////////////////////////////// 

fnc_random_grp_o_agreur = 
{
private ["_type","_SQL","_TL","_AR","_gren","_specialists","_unitpool","_new_member","_created_group"];

_type = _this select 0; // 2 Men Patrol = small // 4 Men Fireteam = FT // 6 Men Patrol = big // 8 Men Section = Sec 
if (isnil ("_type")) then {_type="FT";};



_SQL = ["CAF_AG_EUR_AK47"];

_TL = ["CAF_AG_EUR_AK47"];

_AR = ["CAF_AG_EUR_RPK"];

_gren = ["CAF_AG_EUR_AK74GL"];

_specialists = ["CAF_AG_EUR_AK74",
				"CAF_AG_EUR_AK47",
				"CAF_AG_EUR_PK",
				"CAF_AG_EUR_RPG",
				"CAF_AG_EUR_SVD",
				"CAF_AG_EUR_AA"
                     ]; 
_created_group=[];

switch (_type) do {

	case "small" : 
	{
	_unit_pool = _specialists;
	_unit_pool set [count _unit_pool,_AR select 0];
	_unit_pool set [count _unit_pool,_gren select 0];

	_new_member = _unit_pool call BIS_fnc_selectRandom;

	_created_group set [count _created_group,_TL select 0];
	_created_group set [count _created_group,_new_member];
	}; 

	case "FT" : 
	{
	_unit_pool = _specialists;
	_created_group set [count _created_group,_TL select 0];
	_created_group set [count _created_group,_AR select 0];
	_created_group set [count _created_group,_gren select 0];
	_new_member = _unit_pool call BIS_fnc_selectRandom;
	_created_group set [count _created_group,_new_member];

	}; 

	case "big" : 
	{
	_unit_pool = _specialists;
	_created_group set [count _created_group,_TL select 0];
	_created_group set [count _created_group,_AR select 0];
	_created_group set [count _created_group,_gren select 0];
	_new_member = _unit_pool call BIS_fnc_selectRandom;
	_created_group set [count _created_group,_new_member];
	_new_member = _unit_pool call BIS_fnc_selectRandom;
	_created_group set [count _created_group,_new_member];
	_new_member = _unit_pool call BIS_fnc_selectRandom;
	_created_group set [count _created_group,_new_member];
	}; 

	case "Sec" : 
	{
	_unit_pool = _specialists;
	_created_group set [count _created_group,_SQL select 0];
	_created_group set [count _created_group,_AR select 0];
	_created_group set [count _created_group,_gren select 0];
	_new_member = _unit_pool call BIS_fnc_selectRandom;
	_created_group set [count _created_group,_new_member];
	_unit_pool = _specialists;
	_created_group set [count _created_group,_TL select 0];
	_created_group set [count _created_group,_AR select 0];
	_created_group set [count _created_group,_gren select 0];
	_new_member = _unit_pool call BIS_fnc_selectRandom;
	_created_group set [count _created_group,_new_member];
	}; 

}; 
			  


_created_group
};


