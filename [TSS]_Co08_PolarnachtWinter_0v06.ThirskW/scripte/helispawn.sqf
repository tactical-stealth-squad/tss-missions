if (!isServer) exitWith {};

// Helispawn Script by Hawk 2010
// for www.germany-fun.net
// Aufruf mit: nul = [Startposition, Zielposition, Radius, Anzahl] execvm "Helispawn.sqf"

Params ["_sposi", "_zposi", "_radi"];

private _spos = getpos _sposi;
private _zpos = getpos _zposi;

private _airgrp = createGroup east;

private _spawn = [((_spos select 0)+ (random 50)), ((_spos select 1)+ (random 50)),200];
[_spawn, random 360, "CUP_B_Mi17_CDF", _airgrp] call BIS_fnc_spawnVehicle;
_airgrp setBehaviour "SAFE";
_airgrp setCombatMode "Red";
[_airgrp, _zpos, _radi] call BIS_fnc_taskPatrol