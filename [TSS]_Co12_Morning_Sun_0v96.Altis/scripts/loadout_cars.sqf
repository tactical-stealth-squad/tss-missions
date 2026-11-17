// Custom look for car
[
	"car",
	"init",
	{
		private _klasse = typeOf (_this select 0);
		switch (_klasse) do {

			case "O_Truck_03_medical_F": {
				[(_this select 0), ["GreenHex",1], true] call BIS_fnc_initVehicle
			};

			case "O_Truck_03_ammo_F": {
				[(_this select 0), ["GreenHex",1], true] call BIS_fnc_initVehicle
			};

			case "O_Truck_03_fuel_F": {
				[(_this select 0), ["GreenHex",1], true] call BIS_fnc_initVehicle
			};

			case "O_Truck_03_covered_F": {
				[(_this select 0), ["GreenHex",1], true] call BIS_fnc_initVehicle
			};

			case "O_Heli_Attack_02_F": {
				[(_this select 0), ["Black",1], true] call BIS_fnc_initVehicle;
				hint str _this
			};

			case "O_MRAP_02_F": {
				(_this select 0) setObjectTextureGlobal [0, "img\Ifrit\punisher_front_wd.paa"];
				(_this select 0) setObjectTextureGlobal [1, "img\Ifrit\punisher_back_wd.paa"];
				(_this select 0) addEventhandler ["hitPart", {[(_this select 0)] call compile preprocessFileLineNumbers "scripts\fnc_oneKill_APC.sqf"}]
			};

			case "I_Heli_light_03_F": {
				[(_this select 0), ["Green",1], true] call BIS_fnc_initVehicle
			};

			case "O_T_APC_Wheeled_02_rcws_v2_ghex_F": {
				[(_this select 0), ["GreenHex",1], ["showBags",1,"showCanisters",1,"showTools",1,"showCamonetHull",1,"showSLATHull",0]] call BIS_fnc_initVehicle;
				(_this select 0) addEventhandler ["hitPart", {[(_this select 0)] call compile preprocessFileLineNumbers "scripts\fnc_oneKill_APC.sqf"}]
			};

			case "O_T_APC_Tracked_02_cannon_ghex_F": {
				[(_this select 0), ["GreenHex",1], ["showTracks",1,"showCamonetHull",1,"showBags",1,"showSLATHull",0]] call BIS_fnc_initVehicle;
				(_this select 0) addEventhandler ["hitPart", {[(_this select 0)] call compile preprocessFileLineNumbers "scripts\fnc_oneKill_APC.sqf"}];
				(_this select 0) disableTIEquipment true
			};
		};
	},
	true,
	[],
	true
] call CBA_fnc_addClassEventHandler;

// custom look for tanks/apc
[
	"tank",
	"init",
	{
		private _klasse = typeOf (_this select 0);
		switch (_klasse) do {

			case "O_T_APC_Tracked_02_cannon_ghex_F": {
				[(_this select 0), ["GreenHex",1], ["showTracks",1,"showCamonetHull",1,"showBags",1,"showSLATHull",0]] call BIS_fnc_initVehicle;
				(_this select 0) addEventhandler ["hitPart", {[(_this select 0)] call compile preprocessFileLineNumbers "scripts\fnc_oneKill_APC.sqf"}];
				(_this select 0) disableTIEquipment true
			};
		};
	},
	true,
	[],
	true
] call CBA_fnc_addClassEventHandler;

// Custom look for heli
[
	"Helicopter",
	"init",
	{
		private _klasse = typeOf (_this select 0);
		switch (_klasse) do {

			case "O_Heli_Attack_02_F": {
				[(_this select 0), ["Black",1], true] call BIS_fnc_initVehicle;
				hint str _this
			};

			case "I_Heli_light_03_F": {
				[(_this select 0), ["Green",1], true] call BIS_fnc_initVehicle
			};
		};
	},
	true,
	[],
	true
] call CBA_fnc_addClassEventHandler;