{

	clearweaponcargoGlobal _x;
	clearmagazinecargoGlobal _x;
	clearitemcargoGlobal _x;
	clearBackpackCargoGlobal _x;

	_x addmagazinecargoGlobal ["SmokeShellGreen",15];
	_x additemcargoGlobal ["ACE_wirecutter",2];
	_x additemcargoGlobal ["ACE_DefusalKit",5];
	_x additemcargoGlobal ["ACE_key_lockpick",2];
	_x addmagazinecargoGlobal ["CUP_20Rnd_B_AA12_Slug", 50];
	_x addmagazinecargoGlobal ["CUP_20Rnd_762x51_B_SCAR_bkl", 30];
	_x addmagazinecargoGlobal ["CUP_30Rnd_556x45_Stanag", 50];
	_x addmagazinecargoGlobal ["CUP_8Rnd_B_Beneli_74Slug", 50];
	_x addmagazinecargoGlobal ["CUP_30Rnd_9x19_MP5", 20];
	_x addmagazinecargoGlobal ["CUP_15Rnd_9x19_M9", 20];
	_x addmagazinecargoGlobal ["ACE_M84", 40];
	_x addmagazinecargoGlobal ["SmokeShellPurple", 15];
	_x addmagazinecargoGlobal ["SmokeShell", 15];
	_x addmagazinecargoGlobal ["APERSMine_Range_Mag", 10];
	_x additemcargoGlobal ["CUP_acc_ANPEQ_15_Flashlight_Black_L", 10];
	_x additemcargoGlobal ["ACRE_PRC148", 10];
	_x additemcargoGlobal ["ACRE_PRC152", 10];
	_x additemcargoGlobal ["CUP_optic_CompM4", 5];
	_x additemcargoGlobal ["CUP_muzzle_snds_68SPC", 20];
	_x additemcargoGlobal ["CUP_optic_MicroT1", 5];

} foreach [box_west_1, box_west_2];

{
	clearweaponcargoGlobal _x;
	clearmagazinecargoGlobal _x;
	clearitemcargoGlobal _x;
	clearBackpackCargoGlobal _x;

	_x additemcargoGlobal ["ACE_rope12",2];
	_x additemcargoGlobal ["ACE_rope15",2];
	_x additemcargoGlobal ["ACE_rope18",2];
	_x additemcargoGlobal ["ACE_rope27",2];
	_x additemcargoGlobal ["ACE_rope36",2];
	_x addBackpackCargoGlobal ["B_parachute", 8];
	_x additemcargoGlobal ["H_PilotHelmetFighter_B", 4];

} foreach [h1, h2, h3, h4];

{
	clearweaponcargoGlobal _x;
	clearmagazinecargoGlobal _x;
	clearitemcargoGlobal _x;
	clearBackpackCargoGlobal _x;

	_x addmagazinecargoGlobal ["CUP_8Rnd_B_Beneli_74Slug", 10];
	_x addmagazinecargoGlobal ["CUP_20Rnd_B_AA12_Slug", 10];
	_x addmagazinecargoGlobal ["CUP_20Rnd_762x51_B_SCAR_bkl", 10];
	_x addmagazinecargoGlobal ["CUP_30Rnd_556x45_Stanag", 20];
	_x addmagazinecargoGlobal ["ACE_M84", 8];
	_x addmagazinecargoGlobal ["SmokeShellPurple", 8];
	_x addmagazinecargoGlobal ["SmokeShell", 8];
	_x additemcargoGlobal ["ACE_wirecutter", 1];

} foreach [c1, c2, c3, c4, c5];

[medBox_1, c1, true] call ace_cargo_fnc_loadItem;
[medBox_2, c2, true] call ace_cargo_fnc_loadItem;
[medBox_3, c3, true] call ace_cargo_fnc_loadItem;
[medBox_4, c4, true] call ace_cargo_fnc_loadItem;
[medBox_5, c5, true] call ace_cargo_fnc_loadItem;

nil