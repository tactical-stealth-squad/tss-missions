/* ----------------------------------------------------------------------------
Function: fn_init_ACTMedic.sqf

Version: v1.01

Description:
	Spawns an injured unit at given position.

Parameters:
	- Object		Object, whcih has the addAction Commands (Object)
	- Position		Position, where the injured unit spawns (MARKER, OBJECT, LOCATION, GROUP, TASK or POSITION)

Example:
	(begin example #1)
	[Laptop, heliPad] spawn compile preprocessFileLineNumbers "scripts\fn_init_ACTMedic.sqf"
	(end #1)

	(begin example #2) (init of an object)
	[this, "marker_1"] spawn compile preprocessFileLineNumbers "scripts\fn_init_ACTMedic.sqf"
	(end #2)

Author:
    =TSS= zinki (https://tactical-stealth-squad.de/forums/)
---------------------------------------------------------------------------- */
Params [
	"_object",
	"_position"
];

_pos = _position call CBA_fnc_getPos;

_object addAction ["Patient kreieren (Light)", "scripts\fn_setDamgeAI.sqf", [_pos, "Light"], 1.5, true, true, "", "true", 3];
_object addAction ["Patient kreieren (Medium)", "scripts\fn_setDamgeAI.sqf", [_pos, "Medium"], 1.5, true, true, "", "true", 3];
_object addAction ["Patient kreieren (Full)", "scripts\fn_setDamgeAI.sqf", [_pos, "Full"], 1.5, true, true, "", "true", 3]