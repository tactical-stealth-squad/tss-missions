// Custom look for car
[
	"Land",
	"init",
	{
		private _klasse = typeOf (_this select 0);
		switch (_klasse) do {

			case "I_C_Offroad_02_LMG_F": {
				[(_this select 0),["Olive",1],["hideLeftDoor",1,"hideRightDoor",1,"hideRearDoor",1,"hideFenders",0,"hideHeadSupportFront",1,"hideSpareWheel",0]] call BIS_fnc_initVehicle; 

			};

			case "I_HMG_02_F": {
				[(_this select 0),nil,["Hide_Rail",1,"Hide_Shield",1]] call BIS_fnc_initVehicle; 

			};

			case "I_HMG_02_high_F": {
				[(_this select 0),nil,["Hide_Rail",1,"Hide_Shield",1]] call BIS_fnc_initVehicle; 

			};

		};
	},
	true,
	[],
	true
] call CBA_fnc_addClassEventHandler;

nil