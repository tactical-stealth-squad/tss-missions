// Thanks to Brain :)

private _seatprefix = "seat_";
private _playerprefix = "s";

private _unit = _this select 0;
private _klasse = vehicleVarName _unit;

switch (_klasse) do {
    case "s1": {
        [seat_chef, _unit] call aceX_sitting_fnc_sit
    };

    default {
        private _value = _klasse splitstring "" deleteRange [0, count _playerprefix] joinstring "";
        [_unit, missionNamespace getvariable format ["%1%2", _seatprefix, _value]] call aceX_sitting_fnc_sit;
    };
};