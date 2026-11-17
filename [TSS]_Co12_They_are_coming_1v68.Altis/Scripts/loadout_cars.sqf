// Custom look for Truck
[
	"car",
	"init",
	{
		private _klasse = typeOf (_this select 0);
		switch (_klasse) do {

			case "O_Truck_02_covered_F": {
				[(_this select 0), ["EAF",1], true] call BIS_fnc_initVehicle
			};

			case "O_MRAP_02_F": {
				(_this select 0) setObjectTextureGlobal [0, "img\Ifrit\punisher_front_wd.paa"];
				(_this select 0) setObjectTextureGlobal [1, "img\Ifrit\punisher_back_wd.paa"];
				(_this select 0) addEventhandler ["hitPart", {[(_this select 0)] call compile preprocessFileLineNumbers "scripts\fnc_oneKill_APC.sqf"}]
			};

			case "O_MRAP_02_hmg_F": {
				(_this select 0) setObjectTextureGlobal [0, "img\Ifrit\punisher_front_wd.paa"];
				(_this select 0) setObjectTextureGlobal [1, "img\Ifrit\punisher_back_wd.paa"];
				(_this select 0) setObjectTextureGlobal [2, "img\Ifrit\Turret_wd.paa"];
				(_this select 0) addEventhandler ["hitPart", {[(_this select 0)] call compile preprocessFileLineNumbers "scripts\fnc_oneKill_APC.sqf"}];
				(_this select 0) disableTIEquipment true
			};
		};
	},
	true,
	[],
	true
] call CBA_fnc_addClassEventHandler;