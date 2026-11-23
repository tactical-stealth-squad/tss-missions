//Attack Position Script Hawk 2010 V1.0 modified by Gearfield
//nul = [spawnstart, Ziel, Anzahl, Delay] execvm "fahrzeug_spawn_angriff.sqf";
//Beispiel: [spawnstart, Ziel, 5, 60] execvm "attackspawn.sqf"
//spawnstart = Position wo Gruppe erstellt wird
//Ziel = Position wo die Gruppe hin soll
//5 = Anzahl der Gruppen
//60 = Zeit nach der die n�chste Gruppe erstellt wird

if (!isServer) exitWith{};
sleep 130;

params ["_posi", "_ziel", "_count", "_delay"];

private _cspawn = getpos _posi;
private _ispawn = [((_cspawn select 0)+ 1), ((_cspawn select 1)+ 1),0];
private _dir = getdir _posi;
private _tgtv = getpos _ziel;
private _target = [((_tgtv select 0)+ 1), ((_tgtv select 1)+ 1),0];

for "_i" from 1 to _count do
{
// Russland
private _units = ["CUP_O_BMP2_RU"];
	
	private _grp = [_ispawn, east, _units, [], [],[0.6,0.8,0.7]] call BIS_fnc_spawnGroup;
	sleep 1;
		
private _wp = _grp addWaypoint [_target, 0];
_wp setWaypointType "SAD";
_wp setWaypointBehaviour "AWARE";
_wp setWaypointSpeed "NORMAL";
_wp setWaypointCompletionRadius 200;

sleep 1;

private _wp = _grp addWaypoint [_target, 100];
_wp setWaypointType "CYCLE";
_wp setWaypointBehaviour "AWARE";
_wp setWaypointSpeed "NORMAL";
_wp setWaypointCompletionRadius 200;

sleep _delay;
};