{

	clearweaponcargoGlobal _x;
	clearmagazinecargoGlobal _x;
	clearitemcargoGlobal _x;
	clearBackpackCargoGlobal _x;

	_x addmagazinecargoGlobal ["SmokeShellGreen",15];
	_x additemcargoGlobal ["ACE_wirecutter",2];
	_x additemcargoGlobal ["ACE_DefusalKit",5];
	_x additemcargoGlobal ["ACE_key_lockpick",2];
	_x addmagazinecargoGlobal ["30Rnd_556x45_Stanag_red", 50];
	_x addmagazinecargoGlobal ["30Rnd_9x21_Mag_SMG_02_Tracer_Red", 20];
	_x addmagazinecargoGlobal ["9Rnd_45ACP_Mag", 20];
	_x additemcargoGlobal ["ACRE_PRC148", 10];
	_x additemcargoGlobal ["ACRE_PRC152", 10];
	_x addmagazinecargoGlobal ["APERSMine_Range_Mag", 10];
	_x addmagazinecargoGlobal ["ACE_M84", 40];
	_x addmagazinecargoGlobal ["SmokeShellPurple", 15];
	_x addmagazinecargoGlobal ["SmokeShell", 15]

} foreach [box_west_1, box_west_2];


{
	clearweaponcargoGlobal _x;
	clearmagazinecargoGlobal _x;
	clearitemcargoGlobal _x;
	clearBackpackCargoGlobal _x;

	_x additemcargoGlobal ["ACE_rope12", 2];
	_x additemcargoGlobal ["ACE_rope15", 2];
	_x additemcargoGlobal ["ACE_rope18", 2];
	_x additemcargoGlobal ["ACE_rope27", 2];
	_x additemcargoGlobal ["ACE_rope36", 2];
	_x addBackpackCargoGlobal ["B_parachute", 8]

} foreach [h1, h2, h3, h4];

{
	clearweaponcargoGlobal _x;
	clearmagazinecargoGlobal _x;
	clearitemcargoGlobal _x;
	clearBackpackCargoGlobal _x;

	_x addmagazinecargoGlobal ["30Rnd_556x45_Stanag_red", 25];
	_x addmagazinecargoGlobal ["9Rnd_45ACP_Mag", 10];
	_x addmagazinecargoGlobal ["ACE_M84", 8];
	_x addmagazinecargoGlobal ["SmokeShellPurple", 8];
	_x addmagazinecargoGlobal ["SmokeShell", 8];
	_x additemcargoGlobal ["ACE_wirecutter", 1]

} foreach [c1, c2, c3, c4, c5, c6];

[medBox_1, c1, true] call ace_cargo_fnc_loadItem;
[medBox_2, c2, true] call ace_cargo_fnc_loadItem;
[medBox_3, c3, true] call ace_cargo_fnc_loadItem;
[medBox_4, c4, true] call ace_cargo_fnc_loadItem;
[medBox_5, c5, true] call ace_cargo_fnc_loadItem;
[medBox_5, c5, true] call ace_cargo_fnc_loadItem;

nil