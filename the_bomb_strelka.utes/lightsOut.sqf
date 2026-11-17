/* ----------------------------------------------------------------------------
Function: fn_lightsout.sqf

Version: v1.02

Description:
    Switch off the lights for each object in given radius from the position.
    Thanks to BI: red lights from airport or from transmittertower could not be "switched off".

Parameters:
    - position      	 <MARKER, OBJECT, LOCATION, GROUP, TASK or POSITION>
    - radius         	 <Number>


Example:
    (begin example)
    ["SP1", 200] call compile preprocessFileLineNumbers "lightsOut.sqf";
    (end)

    "SP1"                                                           - marker
    200                                                           	- radius in meters


Returns:
    Nil

Author:
    =TSS= zinki (https://tactical-stealth-squad.de/forums/)
    Thanks to the internet
---------------------------------------------------------------------------- */

// Parameter
Params [
	"_position",
	["_rad", 50]
];
// Var for position
private _pos = _position call CBA_fnc_getPos;
//
private _types = [
	"Lamps_Base_F",
	"PowerLines_base_F",
	"PowerLines_Small_base_F",
	"Land_LampAirport_F",
	"Land_LampSolar_F",
	"Land_LampStreet_F",
	"Land_LampStreet_small_F",
	"Land_LampDecor_F",
	"Land_LampHalogen_F",
	"Land_LampHarbour_F",
	"Land_LampShabby_F",
    "Land_PowerPoleWooden_L_F",
    "Land_NavigLight",
    "Land_runway_edgelight",
    "Land_runway_edgelight_blue_F",
    "Land_Flush_Light_green_F",
    "Land_Flush_Light_red_F",
    "Land_Flush_Light_yellow_F",
    "Land_Runway_PAPI",
    "Land_Runway_PAPI_2",
    "Land_Runway_PAPI_3",
    "Land_Runway_PAPI_4",
    "Land_fs_roof_F",
    "Land_PowLines_WoodL",
    "Land_PowLines_ConcL",
    "Land_lampa_ind_zebr",
    "Land_lampa_sidl_3",
    "Land_lampa_vysoka",
    "Land_lampa_ind",
    "Land_lampa_ind_b",
	"Land_lampa_sidl",
	"StreetLamp",
	"Land_FuelStation_01_roof_F",
	"Land_FuelStation_02_roof_F",
	"Land_FuelStation_01_roof_malevil_F",
	"Land_Device_slingloadable_F",
	"A3_Air_F_Heli_Light_01",
	"A3_Structures_F_Civ_Lamps",
	"A3_Structures_F_Items_Electronics",
	"Land_i_Shed_Ind_F",
    "Land_NAV_Lighthouse",
    "Land_NAV_Lighthouse2"
];
//
{
	_x switchLight "OFF";
} forEach nearestObjects [_pos, _types, _rad];

nil