//_spawn = [ziel1pos1,100,3,10] execvm "spawn\Russland_Patrol.sqf";
//_spawn = [Startposition,Patrol Radius,Anzahl Gruppen,Spawnzeit zwischen Gruppen] execvm "Russland_Patrol.sqf";

if (!isServer) exitWith{};
sleep 60;

params ["_posi", "_target", "_count", "_delay"];

private _cspawn = getpos _posi;
private _ispawn = [((_cspawn select 0) + (random 1)), ((_cspawn select 1) + (random 1)),0];
private _dir = getdir _posi;


for "_i" from 1 to _count do
{

private _units = floor (random 7);
 
switch (_units) do {
	
	case 0: {
			_units = ["CUP_O_RU_Soldier_SL", "CUP_O_RU_Soldier_AT"];
			};
	
	case 1: {
			_units = ["CUP_O_RU_Soldier_SL", "CUP_O_RU_Medic", "CUP_O_RU_Soldier_GL"];
			};
    
	case 2: {
			_units = ["CUP_O_RU_Soldier_SL", "CUP_O_RU_Soldier_MG", "CUP_O_RU_Medic", "CUP_O_RU_Soldier_GL"];
			};
	
	case 3: {
			_units = ["CUP_O_RU_Soldier_SL", "CUP_O_RU_Soldier_GL", "CUP_O_RU_Soldier_AT"];
			};
	
	case 4: {
			_units = ["CUP_O_RU_Soldier_SL", "CUP_O_RU_Soldier_GL"];
			};
	
	case 5: {
			_units = ["CUP_O_RU_Soldier_SL", "CUP_O_RU_Soldier_MG", "CUP_O_RU_Medic"];
			};
	
	case 6: {
			_units = ["CUP_O_RU_Soldier_SL", "CUP_O_RU_Soldier_AT", "CUP_O_RU_Soldier_GL", "CUP_O_RU_Soldier_MG"];
			};
 	};

sleep 0.1;
private _grp1 = [_ispawn, east, _units, [], [],[0.5,0.7,0.6]] call BIS_fnc_spawnGroup;
sleep 0.1;
private _wp = _grp1 addWaypoint [_target, 0];
_wp setWaypointType "sad";
_wp setWaypointBehaviour "aware";
_wp setWaypointSpeed "full";
_wp setWaypointCompletionRadius 200;

sleep _delay;
};