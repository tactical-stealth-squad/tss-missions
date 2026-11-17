/*
 * Author: brainslush little modified by zinki
 *
 * Teleport unit to team member
 *
 * Arguments:
 * 0: Object <OBJECT>
 *
 * Return Value:
 * object
 *
 * Example:
 * [myObjekt] call compile preprocessFileLineNumbers "fn_addTeleporter.sqf"
 *
 * Public: No
*/

params["_object"];

private _action = [
    "teleport",
    "Zun Team teleportieren",
    "",
    {
        private _playerGrp = (units group ACE_player) select {alive _x && {_x != ACE_player}};
        if (_playerGrp isEqualTo []) then {
            ["Konnte nicht teleportieren."] call CBA_fnc_notify;
        } else {
            _playerGrp params ["_target"];
            if (vehicle _target == _target) then {
                private _dir = getDir _target - 180;
                ACE_player setpos (getPos _target) vectorAdd [3 * sin _dir, 3 * cos _dir, 0];
            } else {
                if ((vehicle _target) emptyPositions "cargo" == 0) then {
                    ["Kein Platz im Fahrzeug"] call CBA_fnc_notify;
                } else {
                    ACE_player moveincargo vehicle _target;
                };
            };
        };
    },
    {true}
] call ACE_interact_menu_fnc_createAction;

[_object, 0, ["ACE_MainActions"], _action] call ACE_interact_menu_fnc_addActionToObject;

_object