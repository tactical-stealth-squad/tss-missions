	
RYD_DA_GroupsFind = 
	{
	_groups = [];
	_faction = _this select 0;
	_arr = _this select 1;
	_min = _arr select 0;
	_max = _arr select 1;
	
	_sideRef = _this select 2;
	
	_gpClass = configFile >> "CfgGroups";
	_vehClass = configFile >> "CfgVehicles";
		
	for "_i" from 0 to ((count _gpClass) - 1) do
		{
		_class = _gpClass select _i;
		
		if (isClass _class) then
			{
			_side = configName _class;
			_rSide = east;
			
			switch (toLower _side) do
				{
				case ("east") : {_rSide = east};
				case ("west") : {_rSide = west};
				case ("indep") : {_rSide = resistance};
				default {_rSide = civilian};
				};

			if (_rSide in [civilian]) exitWith {};
			if ((_rSide in [west]) and {(_sideRef == 1)}) exitWith {};	
			if ((_rSide in [east]) and {(_sideRef == 0)}) exitWith {};
			if ((_rSide in [resistance]) and {(_sideRef == 2)}) exitWith {};	

			_path = _gpClass >> _side;
			
			for "_j" from 0 to ((count _path) - 1) do
				{
				_class = _path select _j;
				
				if (isClass _class) then
					{
					_fc = configName _class;
					if not ((toLower _fc) isEqualTo _faction) exitWith {};
					
					_path2 = _path >> _fc;
					
					for "_k" from 0 to ((count _path2) - 1) do
						{
						_class = _path2 select _k;
				
						if (isClass _class) then
							{
							_kind = configName _class;
							
							_path3 = _path2 >> _kind;
							
							for "_l" from 0 to ((count _path3) - 1) do
								{
								_class = _path3 select _l;
								
								if (isClass _class) then
									{
									_gp = configName _class;
									
									_path4 = _path3 >> _gp;
									
									_name = getText (_path4 >> "name");
									if ((toLower _name) in ["diver team"]) exitWith {};
									
									_cnt = count _path4;
									_ct = 0;
									_type = "inf";
									
									for "_m" from 0 to (_cnt - 1) do
										{
										_class = _path4 select _m;
										
										if (isClass _class) then
											{
											_ct = _ct + 1;
											_unit = configName _class;
											_veh = _path4 >> _unit >> "vehicle";
											
											if (isText _veh) then
												{
												_veh = toLower (getText _veh);
												_base = _veh;
												_wrong = false;
												
												while {not (_base in ["air","ship","tank","car","wheeled_apc_f","ugv_01_base_f"])} do
													{
													_base = inheritsFrom (_vehClass >> _base);
													if not (isClass _base) exitWith {};
													_base = toLower (configName _base);
													if (_base in ["allvehicles","all"]) exitWith {};
													};

												if (_base in ["ugv_01_base_f"]) then {_wrong = true;_gpType = "ugv_01_base_f"};
													
												if not (_wrong) then
													{
													if (_base in ["air","ship","tank","car","wheeled_apc_f"]) then
														{
														_type = _base
														};
													};
												};
											};
											
										if not (_type in ["inf"]) exitWith {};
										};

									if ((_type in ["inf"]) and {((_ct >= _min) and {(_ct <= _max)})}) then
										{
										_groups pushBack [_rSide,_path4]
										}
									};
								};
							};
						};
					};
				};
			};
		};
		
	_groups
	};
	
publicVariable "RYD_DA_GroupsFind";

RYD_DA_CollectOpposingFactions = 
	{
	RYD_DA_HostileFactions = [];

	_facClass = configFile >> "CfgFactionClasses";
	_opforSides = switch (RYD_DA_PlayerSide) do
		{
		case (2) : {[0,1]};
		case (0) : {[1,2]};
		default {[0,2]}
		};

	for "_i" from 0 to ((count _facClass) - 1) do
		{
		_class = _facClass select _i;
		
		if (isClass _class) then
			{
			_faction = toLower (configName _class);

			_side = getNumber (_facClass >> _faction >> "side");
			if (_side in _opforSides) then
				{
				_gps = [_faction,[8,12],RYD_DA_PlayerSide] call RYD_DA_GroupsFind;
				if ((count _gps) < 1) exitWith {};
				
				_displayName = getText (_facClass >> _faction >> "displayName");
				RYD_DA_HostileFactions pushBack [_faction,_displayName,_gps];
				};
			}
		};
	
	publicVariable "RYD_DA_HostileFactions";
	};

publicVariable "RYD_DA_CollectOpposingFactions";	

RYD_DA_atKilledH = 
	{
	params ["_unit","_killer"];
	
	if (not (local _killer) or {not (isPlayer _killer)}) exitWith {};
	
	_unit removeMPEventHandler ["MPKilled",_thisEventHandler];
	_hisKills = _killer getVariable ["RYD_DA_myKills",0];
	_killer setVariable ["RYD_DA_myKills",(_hisKills + 1)];
	};
	
publicVariable "RYD_DA_atKilledH";

RYD_DA_atKilledP = 
	{
	params ["_unit","_killer"];
	
	if (not (local _unit) or {not (isPlayer _unit)}) exitWith {};	
	//if not (_unit isEqualTo player) exitWith {};
	
	_unit removeMPEventHandler ["MPKilled",_thisEventHandler];
	_unit removeAction (_unit getVariable ["RYD_DA_mySpawnAction",-1]);
	
	_hisDeaths = _unit getVariable ["RYD_DA_myDeaths",0];
	_unit setVariable ["RYD_DA_myDeaths",(_hisDeaths + 1)];
	};
	
publicVariable "RYD_DA_atKilledP";

RYD_DA_PlaceHostiles = 
	{
	waitUntil
		{
		sleep 0.1;
		not (isNil "RYD_DA_Groups")
		};
	
	if ((["PatrolSpawn",0] call BIS_fnc_getParamValue) == 0) then
		{
		for "_i" from 1 to 4 do
			{
			_gp = selectRandom RYD_DA_Groups;
			_gp = [[0,0,0],(_gp select 0), (_gp select 1)] call BIS_fnc_spawnGroup;
			_gp deleteGroupWhenEmpty true;
			
				{
				_mk = format ["s%1m%2",_i,(_foreachIndex + 1)];
				_myPos = getMarkerPos _mk;
				
				deleteMarker _mk;
				
				_myPos set [2,0.01];
				
				_x setPos _myPos;
				_x addMPEventHandler ["MPKilled",RYD_DA_atKilledH];
				sleep 0.01;
				}
			foreach (units _gp);
			
			[(leader _gp), 75, 10, (format ["spawn%1",_i]),"mark1"] execVM "AI_respawn_UPS\AI_respawn_UPS_init.sqf";
			sleep 0.2;
			};
		};
		
	//_mk = "mGar1";
	//_myPos = getMarkerPos _mk;		
	//_myPos set [2,0.01];
	
	waitUntil
		{
		sleep 0.1;

		not (isNil "RYD_DA_Groups2")
		};

	_garrisons = [];
	if ((count RYD_DA_Groups2) > 0) then
		{
		for "_i" from 1 to (["Garrison",2] call BIS_fnc_getParamValue) do
			{
			_gp = selectRandom RYD_DA_Groups2;
			_gp = [[0,0,0],(_gp select 0), (_gp select 1)] call BIS_fnc_spawnGroup;
			_gp deleteGroupWhenEmpty true;
			_garrisons appEnd (units _gp);
			
				{			
				//_x setPos _myPos;
				_x addMPEventHandler ["MPKilled",RYD_DA_atKilledH];
				}
			foreach (units _gp);
			
			[(leader _gp)] execVM "tog_garrison_script.sqf";
			sleep 0.2;
			};
		};
		
	RYD_DA_Garrisons = +_garrisons;
	publicVariable "RYD_DA_Garrisons";
	
	//deleteMarker "mGar1";
	
	RYD_DA_EndFacInit2 = true;
	publicVariable "RYD_DA_EndFacInit2";
	};
	
RYD_DA_SpawnPatrolA = 
	{	
	if not (isNil "RYD_DA_SpawnPatrol") then
		{
		missionNameSpace setVariable ["RYD_DA_LastPatrolSpawn",serverTime,true];	
		[] remoteExec ["RYD_DA_SpawnPatrol",0];
		}
	};
	
publicVariable "RYD_DA_SpawnPatrolA";

RYD_DA_SpawnPatrol = 
	{
	_gp = selectRandom RYD_DA_Groups;
	_gp = [[0,0,0],(_gp select 0), (_gp select 1)] call BIS_fnc_spawnGroup;
	_gp deleteGroupWhenEmpty true;
	
	_slot = selectRandom [1,2,3,4];
	
		{
		_mk = format ["s%1m%2",_slot,(_foreachIndex + 1)];
		_myPos = getMarkerPos _mk;
		
		//deleteMarker _mk;
		
		_myPos set [2,0.01];
		
		_x setPos _myPos;
		_x addMPEventHandler ["MPKilled",RYD_DA_atKilledH];
		}
	foreach (units _gp);
	
	[(leader _gp),"mark1"] execVM "AI_respawn_UPS\UPS_init.sqf";
	
	_mess = format ["New patrol entering the arena!\nAll units count: %1",(count allUnits)];
	_mess remoteExec ["RYD_DA_Hint",0];

	_unitsGroup = units _gp;
	_fullCount = {not (isNull _x) and {(alive _x)}} count _unitsGroup;
	
	while {(({not (isNull _x) and {(alive _x)}} count _unitsGroup) > 0)} do
		{
		if (not (({not (isNull _x) and {(alive _x)}} count _unitsGroup) > ((_fullCount * 0.25) max 1)) and {((count allPlayers) > 0)}) then
			{
				{
				if not (_x getVariable ["RYD_DA_Rushed",false]) then
					{
					if (_x in (units _gp)) then
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
			if ((time - (_gp getVariable ["RYD_DA_isHunting",0])) > (random [(random [30,60,60]),90,120])) then
				{
				_potentials = +_unitsGroup;
				_hunters = [];
				_cnt = 2 min (count _potentials);
				_knownPlayers = [];
				
					{
					if ((_gp knowsAbout _x) > 0) then
						{
						_knownPlayers pushBack _x
						}
					}
				foreach allPlayers;
				
				if ((count _knownPlayers) > 0) then
					{
					_gp setVariable ["RYD_DA_isHunting",time];
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
	};
	
publicVariable "RYD_DA_SpawnPatrol";
	
RYD_DA_SwitchPlayers = 
	{
	_arr = if (RYD_DA_PlayerSide == 0) then
		{
		RYD_DA_OpforPlayers
		}
	else
		{
		RYD_DA_ResistancePlayers
		};

		{
		//_x enableSimulationGlobal true;
		//_x setCaptive true;
		_myRef = _x getVariable ["RYD_DA_myRefPlayer",[player,"Pl1"]];
		_pl = _myRef select 0;
		_mk = _myRef select 1;
		_myPos = getMarkerPos _mk;
		_myPos set [2,0.01];
		_x setDir (markerDir _mk);
		_x setPos _myPos;

		[_x,_pl] remoteExec ["RYD_DA_SelectNewPlayer",_pl];	
		}
	foreach _arr;
	};
	
RYD_DA_SelectNewPlayer = 
	{
	_this spawn
		{
		params ["_unit","_old"];
		
		selectPlayer _unit;
		
		waitUntil
			{
			(not (isPlayer _old) and {(isPlayer _unit)})
			};

		deleteVehicle _old;
		//_unit allowDamage true;
		//_unit setCaptive false;
		
		_unit setVariable ["RYD_DA_Switched",true,true];
		}		
	};

publicVariable "RYD_DA_SelectNewPlayer";	
	
RYD_DA_PlayerSide = 1;
publicVariable "RYD_DA_PlayerSide";
	
RYD_DA_SidesFill = 
	{
	disableSerialization;

	_ctrlFill = 20000;

	lbClear _ctrlFill;
	
		{
		_name = switch (_x) do
			{
			case (east) : {"OPFOR"};
			case (west) : {"BLUFOR"};
			case (resistance) : {"INDEPENDENT"};
			};
		
		_newIx = lbAdd [_ctrlFill, _name];

		missionNamespace setVariable [(str _newIx)+"_sl_"+(str _ctrlFill),[_newIx,_name,_x]];
		}
	foreach [east,west,resistance];
	
	lbSetCurSel [20000,1];
	
	RYD_eh_Side = ((findDisplay 2500) displayCtrl 20000) ctrlAddEventHandler ["LBSelChanged","RYD_DA_PlayerSide = _this select 1;[] call RYD_DA_CollectOpposingFactions;[] call RYD_DA_FactionFill;"];
	
	true
	};
	
publicVariable "RYD_DA_SidesFill";
		
RYD_DA_FactionFill = 
	{
	private ["_ctrlFill","_fac","_name","_newIx"];
	
	disableSerialization;

	_ctrlFill = 21000;

	lbClear _ctrlFill;
				
		{
		_fac = _x select 0;
		_name = _x select 1;
		_gps = _x select 2;

		_newIx = lbAdd [_ctrlFill, _name];

		missionNamespace setVariable [(str _newIx)+"_fl_"+(str _ctrlFill),[_newIx,_name,toLower _fac,_gps]];
		}
	foreach RYD_DA_HostileFactions;
	
	if ((["Garrison",2] call BIS_fnc_getParamValue) > 0) then
		{
		_ctrlFill = 21001;

		lbClear _ctrlFill;
					
			{
			_fac = _x select 0;
			_name = _x select 1;
			_gps = _x select 2;
			
			_newIx = lbAdd [_ctrlFill, _name];

			missionNamespace setVariable [(str _newIx)+"_fl_"+(str _ctrlFill),[_newIx,_name,toLower _fac,_gps]];
			}
		foreach RYD_DA_HostileFactions;
		};
		
	true
	};
	
publicVariable "RYD_DA_FactionFill";

RYD_DA_setFriend = 
	{
	params ["_side"];
	
	switch (_side) do
		{
		case (0) :
			{			
			resistance setFriend [west ,1];
			west setFriend [resistance ,1];
			resistance setFriend [east ,0];
			east setFriend [resistance ,0];
			west setFriend [east ,0];
			east setFriend [west ,0];
			};

		case (1) :
			{			
			resistance setFriend [west ,0];
			west setFriend [resistance ,0];
			resistance setFriend [east ,1];
			east setFriend [resistance ,1];
			west setFriend [east ,0];
			east setFriend [west ,0];
			};
			
		case (2) :
			{			
			resistance setFriend [west ,0];
			west setFriend [resistance ,0];
			resistance setFriend [east ,0];
			east setFriend [resistance ,0];
			west setFriend [east ,1];
			east setFriend [west ,1];
			};
		};
		
	[] call RYD_DA_fillPlayers
	};
	
publicVariable "RYD_DA_setFriend";

RYD_DA_fillPlayers = 
	{
		{
		_refMk = _x select 0;
		_pl = objNull;
		if not (isNil _refMk) then
			{
			_pl = call compile _refMk
			};
		
		RYD_DA_PlayersArray set [_foreachIndex,[_pl,_refMk]]
		}
	foreach RYD_DA_PlayersArray;

		{
		if not (isNull (_x select 0)) then
			{
			_gp = createGroup [east,true];
			_unit = _gp createUnit ["O_recon_F", (getMarkerPos "opforPlayers"), [], 0, "NONE"];
			_unit setVariable ["RYD_DA_myRefPlayer",_x];
			//_unit setCaptive true;
			//_unit allowDamage false;
			//_unit enableSimulationGlobal false;
			RYD_DA_OpforPlayers pushBack _unit;
			}
		}
	foreach RYD_DA_PlayersArray;
	
	RYD_DA_ResistancePlayers = [];
	
		{
		if not (isNull (_x select 0)) then
			{
			_gp = createGroup [resistance,true];
			_unit = _gp createUnit ["I_Soldier_TL_F", (getMarkerPos "resistancePlayers"), [], 0, "NONE"];
			_unit setVariable ["RYD_DA_myRefPlayer",_x];
			//_unit setCaptive true;
			//_unit allowDamage false;
			//_unit enableSimulationGlobal false;
			RYD_DA_ResistancePlayers pushBack _unit;
			};
		}
	foreach RYD_DA_PlayersArray;
	
	RYD_DA_EndFacInitB = true;
	publicVariable "RYD_DA_EndFacInitB";
	};
	
publicVariable "RYD_DA_fillPlayers";
	
RYD_DA_TakeValues = 
	{	
	publicVariable "RYD_DA_PlayerSide";
	[RYD_DA_PlayerSide] remoteExec ["RYD_DA_setFriend",2];
	
	//[] remoteExec ["RYD_DA_fillPlayers",2];
		
	_ix = lbCurSel 21000;

	RYD_DA_Groups = (missionNamespace getVariable [(str _ix)+"_fl_21000",[0,"AAF","ind_f",[[resistance,(configFile >> "CfgGroups" >> "Indep" >> "IND_F" >> "Infantry" >> "HAF_InfSquad")]]]]) select 3;
	publicVariable "RYD_DA_Groups";
	
	if ((["Garrison",2] call BIS_fnc_getParamValue) > 0) then
		{
		_ix = lbCurSel 21001;
		
		RYD_DA_Groups2 = (missionNamespace getVariable [(str _ix)+"_fl_21001",[0,"AAF","ind_f",[[resistance,(configFile >> "CfgGroups" >> "Indep" >> "IND_F" >> "Infantry" >> "HAF_InfSquad")]]]]) select 3;
		publicVariable "RYD_DA_Groups2";
		}
	else
		{
		RYD_DA_Groups2 = [];
		};
		
	RYD_DA_Reset = false;
	publicVariable "RYD_DA_Reset";
	
	closeDialog 1;
	
	RYD_DA_EndFacInit = true;
	publicVariable "RYD_DA_EndFacInit";
	};
	
publicVariable "RYD_DA_TakeValues";

RYD_DA_Reset = true;
publicVariable "RYD_DA_Reset";
	
RYD_DA_Dialog = 
	{
	_dl = createDialog "RscDA";

	waitUntil {dialog};

	[] call RYD_DA_SidesFill;
	[] call RYD_DA_FactionFill;
	
	lbSetCurSel [21000,0];
	lbSetCurSel [21001,0];
	
	waitUntil 
		{
		not (dialog)
		};
	
	if (RYD_DA_Reset) then
		{		
		[] call RYD_DA_Dialog;
		};
	};
	
publicVariable "RYD_DA_Dialog";

//nul = [this, 75, 20, "spawn1","mark1"] execVM "AI_respawn_UPS\AI_respawn_UPS_init.sqf";
//nul = [this] execVM "tog_garrison_script.sqf";

RYD_DA_AddAction =
	{
	params ["_tgt","_pars","_vn"];

	private _id = _tgt addAction _pars;
	_tgt setVariable [_vn,_id,true];
	};
	
publicVariable "RYD_DA_AddAction";
	
RYD_DA_myStats = 
	{
	_target = _this select 0;
	_myKills = _target getVariable ["RYD_DA_myKills",0];
	_myDeaths = _target getVariable ["RYD_DA_myDeaths",0];
	
	hint format ["Kills: %1\nDeaths: %2\nGarrison: %3",_myKills,_myDeaths,({(not (isNull _x) and {(alive _x)})} count RYD_DA_Garrisons)];
	};
	
publicVariable "RYD_DA_myStats";

RYD_DA_Hint = 
	{	
	hint _this;
	};
	
publicVariable "RYD_DA_Hint";

RYD_DA_checkFriend = 
	{
	_weF = [west, east] call BIS_fnc_sideIsFriendly;
	_ewF = [east, west] call BIS_fnc_sideIsFriendly;
	_wrF = [west, resistance] call BIS_fnc_sideIsFriendly;
	_rwF = [resistance, west] call BIS_fnc_sideIsFriendly;
	_erF = [east, resistance] call BIS_fnc_sideIsFriendly;
	_reF = [resistance, east] call BIS_fnc_sideIsFriendly;
	
	//diag_log format ["F[isServer,_weF,_ewF,_wrF,_rwF,_erF,_reF]: %1",[isServer,_weF,_ewF,_wrF,_rwF,_erF,_reF]];
	
	_weE = [west, east] call BIS_fnc_sideIsEnemy;
	_ewE = [east, west] call BIS_fnc_sideIsEnemy;
	_wrE = [west, resistance] call BIS_fnc_sideIsEnemy;
	_rwE = [resistance, west] call BIS_fnc_sideIsEnemy;
	_erE = [east, resistance] call BIS_fnc_sideIsEnemy;
	_reE = [resistance, east] call BIS_fnc_sideIsEnemy;
	
	diag_log format ["E[isServer,_weE,_ewE,_wrE,_rwE,_erE,_reE]: %1",[isServer,_weE,_ewE,_wrE,_rwE,_erE,_reE]];
	};
	
publicVariable "RYD_DA_checkFriend";

RYD_DA_InitAll = 
	{	
	RYD_DA_EndFacInit = false;
	publicVariable "RYD_DA_EndFacInit";
	RYD_DA_EndFacInitB = false;
	publicVariable "RYD_DA_EndFacInitB";
	RYD_DA_EndFacInit2 = false;
	publicVariable "RYD_DA_EndFacInit2";


	RYD_DA_OpforPlayers = [];
	RYD_DA_PlayersArray = [["Pl1"],["Pl2"],["Pl3"],["Pl4"],["Pl5"],["Pl6"],["Pl7"],["Pl8"]];
	
	
	RYD_DA_Buildings = nearestObjects [ArenaArea_0, ["house"],100,true];
	RYD_DA_BuildingPositions = [];
	
		{
		RYD_DA_BuildingPositions appEnd (_x buildingPos -1)
		}
	foreach RYD_DA_Buildings;
	
	waitUntil
		{
		sleep 1;
		
		((count allPlayers) > 0)
		};
		
	sleep 1;
		
	[] call RYD_DA_CollectOpposingFactions;

	sleep 1;	
	
	_headlessClients = entities "HeadlessClient_F";
	_humanPlayers = allPlayers - _headlessClients;
	
		/*{
		[_x,["<t color='#fe8701'>Stats</t>", RYD_DA_myStats, true, 1, false, true, "", "_this == _target"],"RYD_DA_myStatsAction"] remoteExec ["RYD_DA_AddAction",_x];
		_x addMPEventHandler ["MPKilled",RYD_DA_atKilledP];
		}
	foreach _humanPlayers;*/

	if ((count _humanPlayers) > 0) then
		{
		[] remoteExec ["RYD_DA_Dialog",(_humanPlayers select 0), false];
		};
		
	sleep 0.1;

	waitUntil
		{
		sleep 0.1;
		
		((RYD_DA_EndFacInit) and {(RYD_DA_EndFacInitB)})
		};
		
	if not (RYD_DA_PlayerSide == 1) then
		{
		[] call RYD_DA_SwitchPlayers;
		
		waitUntil
			{
			sleep 0.1;
			
			(({(_x getVariable ["RYD_DA_Switched",false])} count (allPlayers - (entities "HeadlessClient_F"))) == (count (allPlayers - (entities "HeadlessClient_F"))))
			};
					
		/*_headlessClients = entities "HeadlessClient_F";
		_humanPlayers = allPlayers - _headlessClients;
		
			{
			[_x,["<t color='#fe8701'>Stats</t>", RYD_DA_myStats, true, 1, false, true, "", "_this == _target"],"RYD_DA_myStatsAction"] remoteExec ["RYD_DA_AddAction",_x];
			_x addMPEventHandler ["MPKilled",RYD_DA_atKilledP];
			}
		foreach _humanPlayers;*/
		};
		
	[] call RYD_DA_PlaceHostiles;
	
	if (RYD_DA_PlayerSide == 2) then
		{
		_arr = 
			[
			"O_officer_F",
			"O_Soldier_TL_F",
			"O_Soldier_SL_F"
			];
			
		_comm = iscom;
		_unit1 = isf1;
		_unit2 = isf2;
		
		_gp = createGroup [east,true];
		_sPos = getMarkerPos "opforPlayers";
		
			{
			_unit = _gp createUnit [(_arr select _foreachIndex),_sPos, [], 0, "NONE"];
			
			switch (_foreachIndex) do
				{
				case (0) : 
					{
					_unit setVariable ["NoRandom",true,true];
					iscom = _unit;
					};
					
				case (1) : 
					{
					isf1 = _unit;
					};
					
				case (2) : 
					{
					isf2 = _unit;
					};
				};
				
			deleteVehicle _x;
			}
		foreach [_comm,_unit1,_unit2];
		};
		
	_placePos = getMarkerPos (selectRandom ["m1","m2","m3", "m4", "m5", "m6"]);
	
		{
		_x addMPEventHandler ["MPKilled",RYD_DA_atKilledH];
		
		_pos = _placePos getPos [_foreachIndex,(random 360)];
		_pos set [2,((_placePos select 2) max 0.01)];
		_x setPosATL _pos
		}
	foreach [iscom,isf1,isf2];
	
	RYD_DA_EndFacInit3 = true;
	publicVariable "RYD_DA_EndFacInit3";
	
		{
		_x setMarkerAlpha 0
		}
	foreach 
		[
		"Pl1",
		"Pl2",
		"Pl3",
		"Pl4",
		"Pl5",
		"Pl6",
		"Pl7",
		"Pl8",
		"s1m1",
		"s1m2",
		"s1m3",
		"s1m4",
		"s1m5",
		"s1m6",
		"s1m7",
		"s1m8",
		"s1m9",
		"s1m10",
		"s1m11",
		"s1m12",
		"s2m1",
		"s2m2",
		"s2m3",
		"s2m4",
		"s2m5",
		"s2m6",
		"s2m7",
		"s2m8",
		"s2m9",
		"s2m10",
		"s2m11",
		"s2m12",
		"s3m1",
		"s3m2",
		"s3m3",
		"s3m4",
		"s3m5",
		"s3m6",
		"s3m7",
		"s3m8",
		"s3m9",
		"s3m10",
		"s3m11",
		"s3m12",
		"s4m1",
		"s4m2",
		"s4m3",
		"s4m4",
		"s4m5",
		"s4m6",
		"s4m7",
		"s4m8",
		"s4m9",
		"s4m10",
		"s4m11",
		"s4m12",
		"mGar1",
		"opforPlayers",
		"resistancePlayers"
		];

	sleep 0.1;

	waitUntil
		{
		sleep 0.1;
		
		RYD_DA_EndFacInit2
		};
		
	_tex = switch (RYD_DA_PlayerSide) do
		{
		case (0) : {"\A3\Data_F\Flags\Flag_CSAT_CO.paa"};
		case (1) : {"\A3\Data_F\Flags\Flag_nato_CO.paa"};
		default {"\A3\Data_F\Flags\Flag_AAF_CO.paa"};
		};
		
		{
		_x setFlagTexture _tex
		}
	foreach [Flag1,Flag2,Flag3,Flag4];

		{
		deleteVehicle _x
		}
	foreach [Obst1,Obst2,Obst3,Obst4];
	
	//[] remoteExec ["RYD_DA_checkFriend",0];
	};
		
RYD_DA_RestoreStuff = 
	{
	waitUntil
		{
		sleep 0.1;
		
		(not (isNil "RYD_DA_EndFacInit3") and {(RYD_DA_EndFacInit3) and {not (isNil "RYD_DA_PlayerSide")}})
		};
		
	if not (RYD_DA_PlayerSide == 1) then
		{
		_null = [] execVM "diary.sqf";
		
		player setCustomAimCoef 0.2;
		player addMPEventhandler ["MPRespawn", {player setCustomAimCoef 0.2}];

		player setUnitRecoilCoefficient 0.2;
		player addEventHandler ["Respawn", {player setUnitRecoilCoefficient 0.2}];
		};

	if ((count (simpleTasks player)) < 1) then
		{
		_title = "Ammo Cache 1";
		_desc = "Ammo caches supply the enemy forces locate ammo cache 1 and destroy it!";		
		[player, "objb1", [_desc,_title,""], objNull, "ASSIGNED", -1, true, "box", false] call BIS_fnc_taskCreate;
		
		[] spawn
			{
			waitUntil
				{
				sleep 0.5;
				
				not (alive ca1)
				};
			
			["objb1","SUCCEEDED", true] call BIS_fnc_taskSetState;
			
			deleteMarker "marker_20";
			};
			
		_title = "Ammo Cache 2";
		_desc = "Ammo caches supply the enemy forces locate ammo cache 2 and destroy it!";		
		[player, "objb2", [_desc,_title,""], objNull, "ASSIGNED", -1, true, "box", false] call BIS_fnc_taskCreate;
		
		[] spawn
			{
			waitUntil
				{
				sleep 0.5;
				
				not (alive ca2)
				};
			
			["objb2","SUCCEEDED", true] call BIS_fnc_taskSetState;
			
			deleteMarker "marker_19";
			};
			
		_title = "Ammo Cache 3";
		_desc = "Ammo caches supply the enemy forces locate ammo cache 3 and destroy it!";		
		[player, "objb3", [_desc,_title,""], objNull, "ASSIGNED", -1, true, "box", false] call BIS_fnc_taskCreate;
		
		[] spawn
			{
			waitUntil
				{
				sleep 0.5;
				
				not (alive ca3)
				};
			
			["objb3","SUCCEEDED", true] call BIS_fnc_taskSetState;
			
			deleteMarker "marker_18";
			};
			
		_title = "Ammo Cache 4";
		_desc = "Ammo caches supply the enemy forces locate ammo cache 4 and destroy it!";		
		[player, "objb4", [_desc,_title,""], objNull, "ASSIGNED", -1, true, "box", false] call BIS_fnc_taskCreate;
		
		[] spawn
			{
			waitUntil
				{
				sleep 0.5;
				
				not (alive ca4)
				};
			
			["objb4","SUCCEEDED", true] call BIS_fnc_taskSetState;
			
			deleteMarker "marker_15";
			};
			
		_title = "Ammo Cache 5";
		_desc = "Ammo caches supply the enemy forces locate ammo cache 5 and destroy it!";		
		[player, "objb5", [_desc,_title,""], objNull, "ASSIGNED", -1, true, "box", false] call BIS_fnc_taskCreate;
		
		[] spawn
			{
			waitUntil
				{
				sleep 0.5;
				
				not (alive ca5)
				};
			
			["objb5","SUCCEEDED", true] call BIS_fnc_taskSetState;
			
			deleteMarker "marker_16";
			};
			
		_title = "Ammo Cache 6";
		_desc = "Ammo caches supply the enemy forces locate ammo cache 6 and destroy it!";		
		[player, "objb6", [_desc,_title,""], objNull, "ASSIGNED", -1, true, "box", false] call BIS_fnc_taskCreate;
		
		[] spawn
			{
			waitUntil
				{
				sleep 0.5;
				
				not (alive ca6)
				};
			
			["objb6","SUCCEEDED", true] call BIS_fnc_taskSetState;
			
			deleteMarker "marker_17";
			};
			
		_title = "Ammo Cache 7";
		_desc = "Ammo caches supply the enemy forces locate ammo cache 7 and destroy it!";		
		[player, "objb7", [_desc,_title,""], objNull, "ASSIGNED", -1, true, "box", false] call BIS_fnc_taskCreate;
		
		[] spawn
			{
			waitUntil
				{
				sleep 0.5;
				
				not (alive ca7)
				};
			
			["objb7","SUCCEEDED", true] call BIS_fnc_taskSetState;
			
			deleteMarker "marker_21";
			};
		
		_title = "Locate and kill the Commander";
		_desc = "There is an enemy commander in the area, his exact location is unknown. You will need to locate and elminate him. He is guarded by a couple of elite fighters, so be cautious when you do locate and engage him.";		
		[player, "objb8", [_desc,_title,""], objNull, "ASSIGNED", -1, true, "kill", false] call BIS_fnc_taskCreate;
		
		[] spawn
			{
			waitUntil
				{
				sleep 0.5;
				
				not (alive iscom)
				};
			
			["objb8","SUCCEEDED", true] call BIS_fnc_taskSetState;
			
			hint "Good job! You have successfully eliminated the Commander!";
			deleteMarker "iscom1";
			};
		
		if ((["Garrison",2] call BIS_fnc_getParamValue) > 0) then
			{
			_title = "Garrisoned Enemy";
			_desc = "There is enemy garrisoned soldiers in the surrounding buildings, locate and eliminate all of them!";		
			[player, "objb9", [_desc,_title,""], objNull, "ASSIGNED", -1, true, "kill", false] call BIS_fnc_taskCreate;
			
			[] spawn
				{
				waitUntil
					{
					sleep 0.5;
					
					(not (isNil "RYD_DA_Garrisons") and {(({alive _x} count RYD_DA_Garrisons) < 1)})
					};
				
				["objb9","SUCCEEDED",true] call BIS_fnc_taskSetState;
				
				deleteMarker "ge";
				};
			};
		};
	
	if (((["StatsMode",1] call BIS_fnc_getParamValue) == 2)) then
		{
		player addAction ["<t color='#fe8701'>Stats</t>",RYD_DA_myStats, true, 1, false, true, "", "_this == _target"];
		};

	if ((["PatrolSpawn",0] call BIS_fnc_getParamValue) == 1) then
		{
		_cond = "(_this == _target) and {((serverTime - (missionNameSpace getVariable ['RYD_DA_LastPatrolSpawn',0])) > 5) and {((count allUnits) < 120) and {not (isNil 'RYD_DA_SpawnPatrolA')}}}";
		_id = player addAction ["<t color='#fe8701'>Spawn Patrol</t>",RYD_DA_SpawnPatrolA, true, 1, false, true, "", _cond];
		player setVariable ["RYD_DA_mySpawnAction",_id,true];
		};
	
	player addMPEventHandler ["MPKilled",RYD_DA_atKilledP];
		
		// Load saved loadout on respawn
	player addEventHandler 
		["Respawn", 
			{
			params ["_unit","_corpse"];
			
			_myKills = _corpse getVariable ["RYD_DA_myKills",0];
			_myDeaths = _corpse getVariable ["RYD_DA_myDeaths",0];
			
			player setVariable ["RYD_DA_myKills",_myKills];
			player setVariable ["RYD_DA_myDeaths",_myDeaths];
			
			if (((["StatsMode",1] call BIS_fnc_getParamValue) == 2)) then
				{
				player addAction ["<t color='#fe8701'>Stats</t>",RYD_DA_myStats, true, 1, false, true, "", "_this == _target"];
				};
			
			if ((["PatrolSpawn",0] call BIS_fnc_getParamValue) == 1) then
				{
				_cond = "(_this == _target) and {((serverTime - (missionNameSpace getVariable ['RYD_DA_LastPatrolSpawn',0])) > 5) and {((count allUnits) < 120) and {not (isNil 'RYD_DA_SpawnPatrolA')}}}";
				_id = player addAction ["<t color='#fe8701'>Spawn Patrol</t>",RYD_DA_SpawnPatrolA, true, 1, false, true, "", _cond];
				player setVariable ["RYD_DA_mySpawnAction",_id,true];
				};
			
			player addMPEventHandler ["MPKilled",RYD_DA_atKilledP];
			
			[player, savedLoadout] spawn setLoadout;
			}
		];

	if ((["StatsMode",1] call BIS_fnc_getParamValue) == 1) then
		{
		RYD_DA_mHUD = "RYD_DA_MHlayer" cutRsc ["DA_Main_HUD","PLAIN",-1,false];
		RYD_DA_loadEH = addMissionEventHandler ["loaded",
			{
			[] spawn
				{
				sleep 1;
				RYD_DA_mHUD = "RYD_DA_MHlayer" cutRsc ["DA_Main_HUD","PLAIN",-1,false];
				}
			}];
		};	
	};
	
publicVariable "RYD_DA_RestoreStuff";

RYD_DA_HUDLoad =
	{
	disableSerialization;
	_displayHUD = _this select 0;
	_kills = _displayHUD displayCtrl 1;	
	_deaths = _displayHUD displayCtrl 2;
	_garrison = _displayHUD displayCtrl 3;

	while {(true)} do
		{
		waitUntil
			{
			sleep 0.1;
			
			not (isNull player)
			};		

		_myKills = player getVariable ["RYD_DA_myKills",0];
		_myDeaths = player getVariable ["RYD_DA_myDeaths",0];		
		
		_kills ctrlSetText (format ["%1",_myKills]);			
		_deaths ctrlSetText (format ["%1",_myDeaths]);
		_garrison ctrlSetText (format ["%1",({(not (isNull _x) and {(alive _x)})} count RYD_DA_Garrisons)]);	
		};
	};
	
publicVariable "RYD_DA_HUDLoad";
