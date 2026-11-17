#include "..\script_components.hpp"

FUNC(damaged) = {
    params["_vehicle", ["_threshold", 0.5, [0]]];
    (damage _vehicle) > _threshold
};

FUNC(incapacitated) = {
    params["_unit"];
    _unit getVariable ["ACE_isUnconscious", true] || {!(alive _unit)}
};

FUNC(unitReady) = {
    params["_unit", "_vehicle"];
    [_unit] call FUNC(incapacitated) || {_unit in (crew _vehicle) || {[_vehicle] call FUNC(damaged)}}
};

// calculate path for vip and guards to airport for some smoother ride
GVAR(vipPath) = [];
[{calculatePath ["wheeled_APC", "safe", [4900,4607,0], [3528.71,4181.1,0]] addEventHandler ["PathCalculated", {GVAR(vipPath) append (_this select 1)}]},""] call CBA_fnc_execNextFrame;

private _stateMachine = [[GVAR(vip)], true] call CBA_statemachine_fnc_create;

// States
[_stateMachine, {}, {}, {}, "Initial"] call CBA_statemachine_fnc_addState;

[_stateMachine, {}, {}, {}, "Wait for personnel"] call CBA_statemachine_fnc_addState;
[_stateMachine, {}, {}, {}, "Move in Helicopter A"] call CBA_statemachine_fnc_addState;
[_stateMachine, {}, {}, {}, "Move in Car"] call CBA_statemachine_fnc_addState;
[_stateMachine, {}, {}, {}, "Flee to Airport with Car"] call CBA_statemachine_fnc_addState;
[_stateMachine, {}, {}, {}, "Flee to Airport on Foot"] call CBA_statemachine_fnc_addState;

[_stateMachine, {}, {}, {}, "Move in Helicopter B"] call CBA_statemachine_fnc_addState;
[_stateMachine, {}, {}, {}, "Flee to Border"] call CBA_statemachine_fnc_addState;

// Transitions
[_stateMachine, "Initial", "Wait for personnel", {
    GVAR(BLUEFORDETECT)
}, {
    (units GVAR(vipGuards) select 0) assignAsDriver suvmg;
    (units GVAR(vipGuards) select 1) assignAsGunner suvmg;
    units GVAR(vipGuards) orderGetIn true;
    suvmg forceSpeed 0;
    pilotA assignAsDriver heli_1;
    [pilotA] orderGetIn true;
}, "Alarmed"] call CBA_statemachine_fnc_addTransition;

[_stateMachine, "Wait for personnel", "Move in Helicopter A", {
    [pilotA, heli_1] call FUNC(unitReady);
}, {
    GVAR(vip) enableAI "Path";
    GVAR(vip) assignAsCargo heli_1;
    [GVAR(vip)] orderGetIn true;
}, "Move"] call CBA_statemachine_fnc_addTransition;

[_stateMachine, "Move in Helicopter A", "Move in Car", {
    [heli_1] call FUNC(damaged) || {[pilotA] call FUNC(incapacitated)}
}, {
    unassignVehicle GVAR(vip);
    GVAR(VIP) assignAsDriver vip_car;
    [GVAR(VIP)] orderGetIn true;
}, "Move"] call CBA_statemachine_fnc_addTransition;

[_stateMachine, "Move in Car", "Flee to Airport with Car", {
    [GVAR(vip), vip_car] call FUNC(unitReady) && {
        [units GVAR(vipGuards) select 0, suvmg] call FUNC(unitReady) && {
            [units GVAR(vipGuards) select 1, suvmg] call FUNC(unitReady)
        }
    }
}, {
    private _count = count GVAR(vipPath);
    { 
        if (_forEachIndex > _count - 5) then {
            (GVAR(vipPath) select _forEachIndex) pushBack 2.8;
        } else {
            (GVAR(vipPath) select _forEachIndex) pushBack 13.9;
        };
    } forEach GVAR(vipPath);
    [
        {
            vip_car setDriveOnPath GVAR(vipPath);
            [{suvmg setDriveOnPath GVAR(vipPath);}, [], 2] call CBA_fnc_waitAndExecute;
        }
    ] call CBA_fnc_execNextFrame;
}, "Move"] call CBA_statemachine_fnc_addTransition;

[_stateMachine, "Move in Car", "Flee to Airport on Foot", {
    [vip_car] call _damged
}, {
    units GVAR(vipGuards) join GVAR(vip);
    units GVAR(vipGuards) orderGetIn false;
    [GVAR(vip)] orderGetIn false;
    private _grp = group GVAR(vip);
    private _wp = _grp addWaypoint [heli_2, -1];
    _wp setWaypointBehaviour "COMBAT";

}, "Move"] call CBA_statemachine_fnc_addTransition;

[_stateMachine, "Flee to Airport with Car", "Move in Helicopter B", {
    GVAR(vip) distance heli_2 < 20 
}, {
    vip_car forceSpeed 0;
    suvmg forceSpeed 0;
    [GVAR(vip)] orderGetIn false;
    units GVAR(vipGuards) orderGetIn false;
    private _grp = createGroup independent;
    units GVAR(vipGuards) join _grp;
    GVAR(vip) assignAsCargo heli_2;
    [GVAR(vip)] orderGetIn true;
}, "Move"] call CBA_statemachine_fnc_addTransition;
[_stateMachine, "Flee to Airport on Foot", "Move in Helicopter B", {
    GVAR(vip) distance heli_2 < 10 
}, {
    private _grp = createGroup west;
    units GVAR(vipGuards) join _grp;
    GVAR(vip) assignAsCargo heli_2;
    [GVAR(vip)] orderGetIn true;
}, "Move"] call CBA_statemachine_fnc_addTransition;

[_stateMachine, "Move in Helicopter A", "Flee to Border", {
    GVAR(vip) in crew heli_1
}, {
    [
        {
            heli_1 engineOn true;
            private _wp = (group driver heli_1) addWaypoint [getMarkerPos "exfil_vip", -1];
            _wp setWaypointBehaviour "CARELESS";
        }, [],
        60
    ] call CBA_fnc_waitAndExecute
}, "Move"] call CBA_statemachine_fnc_addTransition;

[_stateMachine, "Move in Helicopter B", "Flee to Border", {
    GVAR(vip) in crew heli_2;
}, {
    heli_2 engineOn true;
    (group driver heli_2) addWaypoint [getMarkerPos "exfil_vip", -1];
}, "Move"] call CBA_statemachine_fnc_addTransition;

[_stateMachine, "Flee to Airport with Car", "Flee to Border", {
    [heli_2] call FUNC(damaged) || {[pilotC] call FUNC(incapacitated)}
}, {
    GVAR(vipPathExfil) = [];
    GVAR(agent) = objNull;
    GVAR(pathResult) = calculatePath ["wheeled_APC", "safe", getPos vip_car, getMarkerPos "exfil_vip"] addEventHandler ["PathCalculated", {GVAR(agent) = _this select 0; GVAR(vipPathExfil) append (_this select 1)}];
    [
        {isNull GVAR(agent)},
        {
            vip_car setDriveOnPath GVAR(vipPathExfil);
            suvmg setDriveOnPath GVAR(vipPathExfil);
        }
    ]call CBA_fnc_waitUntilAndExecute;
}, "Move"] call CBA_statemachine_fnc_addTransition;

[_stateMachine, "Move in Helicopter B", "Flee to Border", {

}, {

}, "Move"] call CBA_statemachine_fnc_addTransition;

[_stateMachine, "Flee to Airport with Car", "Flee to Airport on Foot", {
    [vip_car] call FUNC(damaged) || {!(GVAR(vip) in crew vip_car)}
}, {
    unassignVehicle (units GVAR(vipGuards) select 0);
    unassignVehicle (units GVAR(vipGuards) select 1);
    units GVAR(vipGuards) orderGetIn false;
    [GVAR(vip)] orderGetIn false;
    [{
        units GVAR(vipGuards) join GVAR(vip);
        private _grp = group GVAR(vip);
        [_grp] call CBA_fnc_clearWaypoints;
        private _wp = _grp addWaypoint [heli_2, -1];
        _wp setWaypointBehaviour "COMBAT";
    }] call CBA_fnc_execNextFrame;
}, "Move"] call CBA_statemachine_fnc_addTransition;

// flee to border on foot if heli 2 is damaged
[_stateMachine, "Flee to Airport on Foot", "Flee to Border", {
    [heli_2] call FUNC(damaged) || {[pilotC] call FUNC(incapacitated)}
}, {
    private _grp = group GVAR(vip);
    [_grp] call CBA_fnc_clearWaypoints;
    private _wp = _grp addWaypoint [getMarkerPos "exfil_vip", -1];
    _wp setWaypointBehaviour "COMBAT";
}, "Move"] call CBA_statemachine_fnc_addTransition;

GVAR(statemachine) = _stateMachine;

/*
_stateMachine spawn {
    sleep 0.1;
    private _output = [_this, true, true] call CBA_statemachine_fnc_toString;
    copyToClipboard _output;
    hintC _output;
};
*/
