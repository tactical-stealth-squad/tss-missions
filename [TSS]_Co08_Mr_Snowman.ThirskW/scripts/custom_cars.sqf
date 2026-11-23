// Custom look for car
[
	"Land",
	"init",
	{
		private _klasse = typeOf (_this select 0);
		switch (_klasse) do {

			case "CUP_B_BTR60_CDF": {
				[(_this select 0),["CDFSnow",1]] call BIS_fnc_initVehicle;
			};


			case "CUP_B_Ural_CDF": {
				[(_this select 0),["CDFSnow",1]] call BIS_fnc_initVehicle;
			};

			case "CUP_B_UAZ_Unarmed_CDF": {
				[(_this select 0),["CDFSnow",1],["hide_spare_wheel",0,"hide_lower_tarp",0,"hide_upper_tarp",0,"hide_light_covers",0]] call BIS_fnc_initVehicle;
			};

			case "CUP_B_BTR80_CDF": {
				[(_this select 0),["RU_Winter",1]] call BIS_fnc_initVehicle;
			};
		};
	},
	true,
	[],
	true
] call CBA_fnc_addClassEventHandler;

nil