#include "..\script_components.hpp"

params["_args","_handle"];
_args params["_unit"];

if (!alive acre_player) exitWith {}; // alive returns false for objNull
if (ACRE_IS_SPECTATOR) exitWith {};

if (!(acre_player in acre_sys_core_speakers)) exitWith {};
if (isNil "acre_api_selectableCurveScale") exitWith {};

//soundFactor is how loud the local player is speaking.
private _soundFactor = acre_api_selectableCurveScale; // typically 0.1 -> 1.3
private _multiplier = 1*(_soundFactor^2);

if (!isPlayer _unit) then {
    // Scale revealing to be a better and better chance over time
    // and based on distance
    private _distance = (eyePos _unit) vectorDistance ACRE_LISTENER_POS;
    if (_distance == 0) exitWith {}; // Zeus remote control fix.

    // Cheaper approximation for AI
    private _intersectObjects = lineIntersectsObjs [eyePos _unit, ACRE_LISTENER_POS, _unit, acre_player, false, 6];
    private _occlusion = ((0.1+_soundFactor)/2)^(count _intersectObjects); // - Occlusion make harsher the quieter the player is.

    // Calculate the probability of revealing.

    private _chance = _occlusion * (_multiplier  / _distance);
    TRACE_4("", _unit, _distance, _occlusion, _chance);
    if ((random 1) < _chance) then {
        TRACE_2("Surrender!", _unit, acre_player);
        // 15 second block before revealing again.
        private _lastYell = _unit getVariable [QGVAR(lastYell), -1];
        if (_lastYell + 1 < time) then {
            TRACE_2("Calling surrender event", _unit, _hasRevealed);
            _unit setVariable [QGVAR(lastYell), time, false];
            //[QGVAR(onRevealUnit), [acre_player, _unit, ACRE_REVEAL_AMOUNT ] ] call CALLSTACK(CBA_fnc_globalEvent);
            [QGVAR(HVTReactExecute),[_unit]] call CBA_fnc_serverEvent;
        };
    };
};
