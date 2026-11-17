#include "script_components.hpp"
/*
 * Play prayer on speaker.
 *
 * Arguments:
 * 0: Speaker object <OBJECT>
 * 1: Hour <NUMBER>
 * 2: Minute <NUMBER>
 *
 * Return Value:
 * None
 *
 * Example:
 * [speaker_0, 6, 41] call tss_MIS_COS_fnc_playPrayerSpeaker
 *
 * Public: No
 */

TRACE_1("", _this);

[
    {
        params [
            ["_object", objNull, [objNull]], 
            ["_hours", 0, [0]],
            ["_minutes", 0, [0]]
        ];
        private _daytime = daytime;
        private _hours_ = floor _daytime;
        private _minutes_ = floor ((_daytime - _hours_) * 60);
        private _result = _hours_ == _hours && {_minutes_ >= _minutes && {_minutes_ < _minutes + 2}};
        _result;
    },
    {
        TRACE_1("Random Prayer Loop", _this);
        [
            {
                TRACE_1("Calling Prayer", _this);
                _this say3D ["MorningPrayer", 3000];
            },
            _this select 0, random 10
        ] call CBA_fnc_waitAndExecute;
    },
    _this
] call CBA_fnc_waitUntilAndExecute;
