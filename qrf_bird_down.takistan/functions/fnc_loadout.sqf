#include "script_components.hpp"

params["_unit"];

if (!local _unit) exitWith {};

private _add_at4 = {
    params["_unit"];
    _unit addWeapon "CUP_launch_M136";
};

private _add_ammo ={
    params["_unit", "_type", "_count"];
    if (_unit canAddItemToBackpack [_type, _count]) then {
        private _backpack = backpackContainer _unit;
        _backpack addItemCargoGlobal [_type, _count];
    } else {
        ["Nicht alle Items passen deinen Rucksack" ] call CBA_fnc_notify;
    };
    
};

private _add_dummy_mg_ammo = {
    params["_unit", "_count"];
    [_unit, "tss_mods_units_dummymagazine", _count] call _add_ammo;
};

private _add_dummy_at_ammo = {
    params["_unit", "_count"];
    [_unit, "tss_mods_units_dummymissile", _count] call _add_ammo;
};

private _add_primary_ammo = {
    params["_unit", "_count"];
    private _backpack = backpackContainer _unit;
    private _magazine = (primaryWeaponMagazine _unit) # 0;
    [_unit, _magazine, _count] call _add_ammo;
};

private _add_ugl_ammo = {
    params["_unit", "_count"];
    private _backpack = backpackContainer _unit;
    private _magazine = (primaryWeaponMagazine _unit) # 1;
    [_unit, _magazine, _count] call _add_ammo;
};

private _add_medical_equipment = {
    params["_unit"];
    private _backpack = backpackContainer _unit;
    _backpack addItemCargoGlobal ["ACE_elasticBandage", 13];
    _backpack addItemCargoGlobal ["ACE_packingBandage", 13];
    _backpack addItemCargoGlobal ["ACE_quikclot", 10];
    _backpack addItemCargoGlobal ["ACE_bodyBag", 3];
    _backpack addItemCargoGlobal ["ACE_epinephrine", 5];
    _backpack addItemCargoGlobal ["ACE_morphine", 5];
    _backpack addItemCargoGlobal ["ACE_salineIV_500", 3];
    _unit addItemToBackpack "ACE_surgicalKit";
};

private _add_radio = {
    params["_unit"];
    _unit addItemToVest "ACRE_PRC152";
};

switch (_unit) do {
    case s1: {
        [_unit, 14] call _add_primary_ammo;
        [_unit, 16] call _add_ugl_ammo;    
    };
    case s2: {
        [_unit, 2] call _add_primary_ammo;
    };
    case s3: {
        [_unit] call _add_at4;
        [_unit, 4] call _add_primary_ammo;
    };
    case s4: {
        [_unit, 6] call _add_dummy_mg_ammo;
        [_unit, 10] call _add_primary_ammo;
    };
    case s5: {
        [_unit] call _add_radio;
        [_unit, 20] call _add_primary_ammo;
    };
    case s7: {
        [_unit] call _add_medical_equipment;
    };
    case s8: {
        [_unit, 8] call _add_dummy_at_ammo;
        [_unit, 6] call _add_primary_ammo;
    };
    case s9: {

    };
    case s10: {
        [_unit, 10] call _add_dummy_mg_ammo;
        [_unit, 10] call _add_primary_ammo;
        [_unit] call _add_radio;    
    };
    case s11: {
        [_unit, 30] call _add_primary_ammo;
        [_unit, 10] call _add_ugl_ammo; 
    };
    case s12: {
        [_unit, 30] call _add_dummy_mg_ammo;
    };
};