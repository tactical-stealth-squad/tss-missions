#include "..\script_components.hpp"

[QGVAR(interrogate), {
    hint "Neuen Auftrag erhalten";
    player createDiaryRecord ["Diary",["Neuer Auftrag",
        "Es hat sich heruas gestellt, dass es sich bei dem Festgesetzten um ein Double handelt.
 Das HVT befindet sich im nördlichen Militärcompound. Setzen Sie ihn fest."
    ]];
}] call CBA_fnc_addEventHandler;

private _action = [
    QGVAR(interrogate),
    "Befragen",
    "", {[QGVAR(interrogate), objNull] call CBA_fnc_globalEventJIP;}, {
        GVAR(vip) getVariable ["ace_captives_isHandcuffed", false] && {(GVAR(vip) distance center_b) < 100} 
    }
] call ace_interact_menu_fnc_createAction;

[
    GVAR(VIP), 0,
    ["ACE_MainActions"],
    _action,
    true
] call ace_interact_menu_fnc_addActionToObject;
