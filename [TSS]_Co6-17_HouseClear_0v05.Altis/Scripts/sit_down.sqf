// Thanks to Brain :)

private _seatprefix = "seat_";
private _playerprefix = "s";

params["_unit"];

private _klasse = vehicleVarName _unit;

switch (_klasse) do {
    case "s1": {
        [seat_chef, _unit] call ace_sitting_fnc_sit
    };

    default {
        private _value = _klasse select [count _playerprefix, 99];
        [missionNamespace getvariable format ["%1%2", _seatprefix, _value], _unit] call ace_sitting_fnc_sit
    }
}