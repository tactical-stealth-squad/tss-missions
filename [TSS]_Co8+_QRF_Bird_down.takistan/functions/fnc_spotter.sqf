#include "script_components.hpp"

params["_unit"];

if (!local _unit) exitWith {};


#ifdef DEBUG_MODE_FULL

[
    {
        private _unit = _this # 0 # 0;
        private _sees_u = _unit getVariable [QGVAR(i_see_u), false];
        private _color = [[0, 1, 0, 1], [1, 0, 0, 1]] select _sees_u;
        drawIcon3D ["", _color, getpos _unit, 1, 1, 0, "Target", 1, 0.05, "PuristaMedium"];
    },
    0,
    [_unit]
] call CBA_fnc_addPerFrameHandler;

#endif

[
    {
        private _unit = _this # 0 # 0;
        private _target = _unit getVariable [QGVAR(spotter_target), objNull];

        _unit doWatch _target;
    },
    0,
    [_unit]
] call CBA_fnc_addPerFrameHandler;

[
    {
        private _unit = _this # 0 # 0;
        _unit setVariable [QGVAR(i_see_u), false]; 

        private _players = allPlayers;
        private _visables = _players select {
            ((stance _x) == "STAND" || (stance _x) == "CROUCH") && {
                [_unit, "VIEW", _x] checkVisibility [eyePos _unit, eyePos _x] > 0.2
            }
        };
        if (count _visables == 0) exitWith {_unit setVariable [QGVAR(spotter_target), objNull]};
        
        private _distances = _visables apply {[_x distanceSqr _unit, _unit]};
        _distances sort true;
        private _closest = _distances#0;
        
        TRACE_2("",_distances,_closest);
        TRACE_1("",sqrt(_closest#0));
        if (sqrt (_closest#0) > 1300) exitWith {_unit setVariable [QGVAR(spotter_target), objNull]};

        private _closest_unit = _closest#1;
        _unit setVariable [QGVAR(spotter_target), _closest_unit];

        {_unit reveal _x} forEach _visables;       

        _unit setVariable [QGVAR(i_see_u), true]; 
    },
    3,
    [_unit]
] call CBA_fnc_addPerFrameHandler;