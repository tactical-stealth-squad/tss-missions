// Sets rampart z axis -0.5
[
	"Land_Rampart_F",
	"init",
	{
		private _rampart = _this select 0;
		_rampart setPos getPos [_rampart select 0, _rampart select 1, (_rampart select 2) - 0.5]
	},
	true,
	[],
	true
] call CBA_fnc_addClassEventHandler;

// Empty boxes
[
	"Box_NATO_Ammo_F",
	"init",
	{
		private _box = _this select 0;
		clearweaponcargoGlobal _box;
		clearmagazinecargoGlobal _box;
		clearitemcargoGlobal _box;
	},
	true,
	[],
	true
] call CBA_fnc_addClassEventHandler;

// Support boxes ammo
[
	"B_supplyCrate_F",
	"init",
	{
		private _box = _this select 0;
		clearweaponcargoGlobal _box;
		clearmagazinecargoGlobal _box;
		clearitemcargoGlobal _box;
		clearBackpackCargoGlobal _box;

		_box addmagazinecargoGlobal ["30Rnd_556x45_Stanag", 80];
		_box addmagazinecargoGlobal ["200Rnd_556x45_Box_Tracer_F", 40];
		_box addmagazinecargoGlobal ["11Rnd_45ACP_Mag", 25];
		_box addmagazinecargoGlobal ["SmokeShell", 50];
		_box addmagazinecargoGlobal ["SmokeShellPurple", 50];
		_box addmagazinecargoGlobal ["1Rnd_HE_Grenade_shell", 75];
		_box addmagazinecargoGlobal ["ACE_HuntIR_M203", 20];
		_box addmagazinecargoGlobal ["HandGrenade", 50]
	},
	true,
	[],
	true
] call CBA_fnc_addClassEventHandler;

// Support boxes mortar ammo
[
	"Box_Syndicate_Ammo_F",
	"init",
	{
		private _box = _this select 0;
		clearweaponcargoGlobal _box;
		clearmagazinecargoGlobal _box;
		clearitemcargoGlobal _box;

		_box addmagazinecargoGlobal ["ACE_1Rnd_82mm_Mo_HE", 12];
		_box addmagazinecargoGlobal ["ACE_1Rnd_82mm_Mo_SMOKE", 8]
	},
	true,
	[],
	true
] call CBA_fnc_addClassEventHandler;

// Support boxes launcher
[
	"Box_NATO_WpsLaunch_F",
	"init",
	{
		private _box = _this select 0;
		clearweaponcargoGlobal _box;
		clearmagazinecargoGlobal _box;
		clearitemcargoGlobal _box;
		clearBackpackCargoGlobal _box;

		_box addWeaponCargoGlobal ["launch_MRAWS_green_F", 1];
		_box addWeaponCargoGlobal ["launch_B_Titan_olive_F", 1];
		_box addmagazinecargoGlobal ["MRAWS_HE_F", 5];
		_box addmagazinecargoGlobal ["MRAWS_HEAT55_F", 5];
		_box addmagazinecargoGlobal ["MRAWS_HEAT_F", 5];
		_box addmagazinecargoGlobal ["Titan_AA", 8]
	},
	true,
	[],
	true
] call CBA_fnc_addClassEventHandler;

nil