#include "script_components.hpp"

params [_group, _type];

if (isNull _group) exitWith {};
_group setBehaviour _type;
