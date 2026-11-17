///////////////////////////////////////////////////////////////////////////////////////
// random_grp_i_fia by sion. 													     //
// erstellt ein Array mit INDEPENDENT-FIA Einheiten für die BIS_fnc_spawnGroup       //
/////////////////////////////////////////////////////////////////////////////////////// 

fnc_random_grp_i_fia = 
{
private ["_type","_SQL","_TL","_AR","_gren","_specialists","_unitpool","_new_member","_created_group"];

_type = _this select 0; // 2 Men Patrol = small // 4 Men Fireteam = FT // 6 Men Patrol = big // 8 Men Section = Sec 
if (isnil ("_type")) then {_type="FT";};



_SQL = ["I_G_Soldier_SL_F"];

_TL = ["I_G_Soldier_TL_F"];

_AR = ["I_G_Soldier_AR_F"];

_gren = ["I_G_Soldier_GL_F"];

_specialists = ["I_G_Soldier_F",
		"I_G_Soldier_lite_F",
	    "I_G_soldier_M_F",
		"I_G_Soldier_LAT_F",
		"I_G_medic_F",
		"I_G_soldier_exp_F",
		"I_G_Soldier_A_F"
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