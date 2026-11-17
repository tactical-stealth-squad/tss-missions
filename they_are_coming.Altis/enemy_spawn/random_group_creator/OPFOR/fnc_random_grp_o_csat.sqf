///////////////////////////////////////////////////////////////////////////////////////
// random_grp_o_csat by sion. 													     //
// erstellt ein Array mit OPFOR-CSAT Einheiten für die BIS_fnc_spawnGroup            //
/////////////////////////////////////////////////////////////////////////////////////// 

fnc_random_grp_o_csat = 
{
private ["_type","_SQL","_TL","_AR","_gren","_specialists","_unitpool","_new_member","_created_group"];

_type = _this select 0; // 2 Men Patrol = small // 4 Men Fireteam = FT // 6 Men Patrol = big // 8 Men Section = Sec 
if (isnil ("_type")) then {_type="FT";};



_SQL = ["O_Soldier_SL_F"];

_TL = ["O_Soldier_TL_F"];

_AR = ["O_Soldier_AR_F"];

_gren = ["O_Soldier_GL_F"];

_specialists = ["O_Soldier_F",
		"O_Soldier_lite_F",
	    "O_soldier_M_F",
		"O_Soldier_LAT_F",
		"O_medic_F",
		"O_soldier_exp_F",
		"O_Soldier_A_F",
		"O_Soldier_AT_F",
		"O_Soldier_AA_F"
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


//Aufruf
//_array = [] call fnc_random_grp_csat;