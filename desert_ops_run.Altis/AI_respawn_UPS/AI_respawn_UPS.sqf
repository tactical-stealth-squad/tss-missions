// AI_respawn_UPS.sqf
// © JULY 2009 - norrin

if (!isServer) exitWith {};

_unit 			= _this select 0;
_lives			= _this select 1;
_delay 			= _this select 2;
_respawn_point	= _this select 3;
_marker	= _this select 4;
_group			= _this select 5;
_side 			= _this select 6;
_AI_unitArray	= _this select 7;
_AI_magArray	= _this select 8;
_AI_wepArray	= _this select 9; 
_AI_skillArray  = _this select 10;
_unitsGroup = units (group _unit);

_fullCount = count _AI_unitArray;
_validAreas = 
	[
	ArenaArea_0,
	ArenaArea_1,
	ArenaArea_2,
	ArenaArea_3,
	ArenaArea_4,
	ArenaArea_5,
	ArenaArea_6,
	ArenaArea_7,
	ArenaArea_8
	];

while {(count _unitsGroup) > 0} do
{	
		{
		//if ("bis_" in (toLower (str _x))) then
			//{
			//deleteVehicle _x
			//}
	//	else
			//{
			_uPos = position _x;
			if (({(_uPos inArea _x)} count _validAreas) < 1) then
				{
				_areas = _validAreas - [ArenaArea_0];
				_telPos = position (selectRandom _areas);
				_telPos set [2,0.01];
				_x setPos _telPos;
				};
			//};
		}
	foreach _unitsGroup;
	
	_remainingUnits = [];
	{if (not (isNull _x) and {(alive _x)}) then {_remainingUnits pushBack _x}} forEach _unitsGroup;
	_unitsGroup = _remainingUnits;
	
	/*if (((isNull _group) or {(not (isNull _x) and {(alive _x)})} count (units _group)) < 1) then
		{
		_unitsGroup = [];
		};*/
	
	if (not ((count _unitsGroup) > ((_fullCount * 0.25) max 1)) and {((count allPlayers) > 0)}) then
		{
			{
			if not (_x getVariable ["RYD_DA_Rushed",false]) then
				{
				if (_x in (units _group)) then
					{
					_newGp = createGroup [(side _x),true];
					[_x] joinSilent _newGp;
					};
					
				_x doMove (getPosATL (selectRandom allPlayers));
				_x getVariable ["RYD_DA_Rushed",true]
				}
			else
				{
				_x setVariable ["RYD_DA_Rushed",not ((unitReady _x) and {((abs (speed _x)) < 0.1)})]
				}
			}
		foreach _unitsGroup
		}
	else
		{
		if ((time - (_group getVariable ["RYD_DA_isHunting",0])) > (random [(random [30,60,60]),90,120])) then
			{
			_potentials = +_unitsGroup;
			_hunters = [];
			_cnt = 2 min (count _potentials);
			_knownPlayers = [];
			
				{
				if ((_group knowsAbout _x) > 0) then
					{
					_knownPlayers pushBack _x
					}
				}
			foreach allPlayers;
			
			if ((count _knownPlayers) > 0) then
				{
				_group setVariable ["RYD_DA_isHunting",time];
				for "_i" from 1 to _cnt do
					{
					_hunter = selectRandom _potentials;
					_potentials = _potentials - [_hunter];
					_tgt = selectRandom _knownPlayers;
					_blds = nearestObjects [_tgt, ["house"],10,true];
					_bld = objNull;
					
						{
						if ((count ( _x buildingPos -1)) > 1) exitWith
							{
							_bld = _x
							}
						}
					foreach _blds;

					_mPos = if not (isNull _bld) then
						{
						_hPositions = _bld buildingPos -1;
						if ((count _hPositions) > 0) then
							{
							(selectRandom _hPositions)
							}
						else
							{
							(getPosATL _tgt)
							}
						}
					else
						{
						(getPosATL _tgt)
						};

					_hunter doMove _mPos;
					}
				}
			}
		};
	
	sleep 1;
};

deleteGroup _group;
if (_lives == 0) exitWith {};
_lives = _lives - 1;
_wait = Time + _delay;
waitUntil {Time > _wait};
_group = createGroup _side; 

	{
	_sPos = (getMarkerPos _respawn_point) getPos [(1 + (1 * (sqrt (random 1)))),(random 360)];
	_sPos set [2,0.01];
	_un = _group createUnit [_x, _sPos, [], 0, "CAN_COLLIDE"];
	_un addMPEventHandler ["MPKilled",RYD_DA_atKilledH];
	_un setPos _sPos
	} 
forEach _AI_unitArray;

sleep 2;
hint "a new enemy AI squad has spawned and is on patrol!";
_unitsGroup = units _group;
{_x disableAI "MOVE"} forEach _unitsGroup;

for [{ _loop = 0 },{ _loop < count  _unitsGroup},{ _loop = _loop + 1}] do
{
	_guy = _unitsGroup select _loop;
	removeAllWeapons _guy;
	{_guy removeMagazine _x} forEach magazines _guy;
	removeAllItems _guy;
	{_guy addMagazine _x} forEach (_AI_magArray select _loop);
	{_guy addWeapon _x}   forEach (_AI_wepArray select _loop);
	_guy selectWeapon (primaryWeapon _guy);
	_guy setSkill (_AI_skillArray select _loop);
	sleep 0.1;
};
{_x enableAI "MOVE"} forEach _unitsGroup;
_leader = leader _group;
[_leader, _lives, _delay, _respawn_point, _marker, _group, _side, _AI_unitArray,_AI_magArray, _AI_wepArray, _AI_skillArray] execVM "AI_respawn_UPS\AI_respawn_UPS.sqf"; 	
[_leader, _marker] execVM "AI_respawn_UPS\UPS_init.sqf";

if (true) exitWith {};
