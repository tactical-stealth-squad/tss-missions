#include "script_components.hpp"

private _executeHDD = {
    [
        60, _target,
        {
            hintSilent "HDD entfernt!";
            TRACE_1("",_this);
            (_this select 0) setVariable [QGVAR(hdd_removed), true, true];
            true;
        }, {}, "Entferne HDD (90s)"
    ] call ace_common_fnc_progressBar;
};

private _conditionHDD = {
    !(_target getVariable [QGVAR(hdd_removed), false]);
};

private _executeSearch = {
    private _string = format[
        "Wichtige Daten sind auf den HDDs der Server %1, %2, %3",
        GVAR(server_hdda), GVAR(server_hddb), GVAR(server_hddc)
    ];
    if (_target getVariable [QGVAR(searched), false]) then {
        hintSilent _string;
    } else {
        [
            45, [_string, _target],
            {
                params["_param"];
                hintSilent (_param select 0);
                (_param select 1) setVariable [QGVAR(searched), true, true];
            }, {}, "Suche nach Daten (60s)"
        ] call ace_common_fnc_progressBar;
    };
};

private _conditionSearch = {
    true
};

private _action_search = [
    "Suche nach Daten",
    "Suche nach Daten",
    "",
    _executeSearch,
    _conditionSearch
] call ace_interact_menu_fnc_createAction;

{
    private _action_hdd = [
        format["Entferne HDD von Server %1", _forEachIndex + 1],
        format["Entferne HDD von Server %1", _forEachIndex + 1],
        "",
        _executeHDD,
        _conditionHDD
    ] call ace_interact_menu_fnc_createAction;
    [_x, 0, [], _action_HDD] call ace_interact_menu_fnc_addActionToObject;
} forEach GVAR(servers);
[server_terminal, 0, [], _action_Search] call ace_interact_menu_fnc_addActionToObject;
