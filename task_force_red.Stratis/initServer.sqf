GEA_fnc_loadout = compile preprocessFileLineNumbers "loadout.sqf";
["SoldierEB", "init", {call GEA_fnc_loadout}, true, [], true] call CBA_fnc_addClassEventHandler;

// SKill
{
	if (side _x isEqualTo east) then {
		_x setskill ["spotDistance", 1];
		_x setskill ["spotTime", 1];
		_x setskill ["courage", 1]
	}
} foreach Allunits;

// for hacking
laptop setVariable ["Global_var_Hack", false, true];
if (isNil "hacked") then {hacked = true; PublicVariable "hacked"};

// Intel
intel_1 setVariable  ["RscAttributeDiaryRecord_texture","images\csat.paa", true];
[
	intel_1,
	"RscAttributeDiaryRecord",
	//[ Title, Description, "" ]
	[
		"Inventorventor List",
		"Thanks for choosing wish.csat! You can obtain ordered bulky equipment from 064 053. Have a nice Day!<br/>
		Additionals: Trading List.
		<br/><br/>
		Trading List (1. Shipment):<br/>
		2 x Water<br/>
		2 x Supply<br/>
		1 x Water guns<br/>
		1 x Equipment
		<br/><br/>
		Trading List (2. Shipment [bulky] ):<br/>
		1 x [Redacted]",
		""
	]
] call BIS_fnc_setServerVariable;
intel_1 setVariable ["recipients", west, true];
intel_1 setVariable ["RscAttributeOwners", [west], true];