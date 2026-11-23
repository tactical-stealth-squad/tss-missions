// Custom look for car
[
	"Land",
	"init",
	{
		private _klasse = typeOf (_this select 0);
		
		switch (_klasse) do {
			case "CUP_B_nM1025_Unarmed_USA_WDL": {
				[(_this select 0), ["MERDC_ST",1], ["hide_front_left_antenna",0,"hide_front_right_antenna",0,"hide_rear_left_antenna",0,"hide_rear_right_antenna",0,"hide_left_mirror",0,"hide_right_mirror",0,"hide_brushguard",0,"hide_blue_force_tracker",1,"hide_jerrycans",0,"hide_spare_wheel",0,"hide_spare_wheel_mount",0,"hide_door_front_left",0,"hide_door_front_right",0,"hide_door_rear_left",0,"hide_door_rear_right",0,"hide_ammo_cans",0,"hide_cip",1,"hide_rear_view_camera",0,"hide_radio_small",0,"hide_radio_large",1,"hide_old_front_bumper",0,"hide_old_rear_bumper",0]] call BIS_fnc_initVehicle;
			};
			
			case "CUP_B_nM1025_M240_USA_WDL": {
				[(_this select 0), ["MERDC_ST",1], ["hide_front_left_antenna",0,"hide_front_right_antenna",0,"hide_rear_left_antenna",0,"hide_rear_right_antenna",0,"hide_left_mirror",0,"hide_right_mirror",0,"hide_brushguard",0,"hide_blue_force_tracker",1,"hide_jerrycans",0,"hide_spare_wheel",0,"hide_spare_wheel_mount",0,"hide_door_front_left",0,"hide_door_front_right",0,"hide_door_rear_left",0,"hide_door_rear_right",0,"hide_ammo_cans",0,"hide_cip",1,"hide_rear_view_camera",0,"hide_radio_small",0,"hide_radio_large",1,"hide_old_front_bumper",0,"hide_old_rear_bumper",0]] call BIS_fnc_initVehicle;
			};

			case "CUP_B_nM1025_M2_USA_WDL": {
				[(_this select 0), ["MERDC_ST",1], ["hide_front_left_antenna",0,"hide_front_right_antenna",0,"hide_rear_left_antenna",0,"hide_rear_right_antenna",0,"hide_left_mirror",0,"hide_right_mirror",0,"hide_brushguard",0,"hide_blue_force_tracker",1,"hide_jerrycans",0,"hide_spare_wheel",0,"hide_spare_wheel_mount",0,"hide_door_front_left",0,"hide_door_front_right",0,"hide_door_rear_left",0,"hide_door_rear_right",0,"hide_ammo_cans",0,"hide_cip",1,"hide_rear_view_camera",0,"hide_radio_small",0,"hide_radio_large",1,"hide_old_front_bumper",0,"hide_old_rear_bumper",0]] call BIS_fnc_initVehicle;
			};

			case "CUP_B_nM1038_USA_WDL": {
				[(_this select 0), ["MERDC_ST",1],	["hide_rear_left_antenna",0,"hide_rear_right_antenna",0,"hide_left_mirror",0,"hide_right_mirror",0,"hide_brushguard",0,"hide_blue_force_tracker",1,"hide_jerrycans",0,"hide_spare_wheel",0,"hide_spare_wheel_mount",0,"hide_door_front_left",0,"hide_door_front_right",0,"hide_cip",1,"hide_rear_view_camera",0,"hide_radio_small",0,"hide_radio_large",1,"hide_old_front_bumper",0,"hide_old_rear_bumper",0,"hide_rear_tarp",1,"hide_rear_tarp_holder",1,"hide_middle_tarp",0,"hide_middle_wall",0,"hide_front_roof",0,"hide_bench_rotate",0,"unhide_Deployment_1",0,"unhide_Deployment_2",0]] call BIS_fnc_initVehicle;
			};

			case "CUP_B_M1A1SA_Woodland_US_Army": {
				[(_this select 0),["US_Olive_Drab_Winter",1], ["hide_bustle_rack_ext",0,"hide_duke_antennas",1,"hide_loader_shield",1,"hide_rear_side_skirt",0,"hide_M250_Smoke_Launcher",0,"hide_M257_Smoke_Launcher",1,"hide_cip_panel_bustle",1,"hide_cip_panel_rear",1,"hide_front_ti_panels",1,"hide_reserve_wheels",0,"hide_Deployment_1_1",1,"hide_Deployment_1_2",1,"hide_Deployment_1_3",0,"hide_Deployment_2_1",1,"hide_Deployment_2_2",0,"hide_Deployment_2_3",1,"hide_net_cannon",0,"hide_net_turret",0,"hide_net_hull",0,"hide_turret_bundle",1]] call BIS_fnc_initVehicle;
			};

			case "CUP_B_M113A1_USA": {
				[ (_this select 0), ["US_Winter",1], ["hide_CIP_panels",1,"hide_Platoon_Markers",1,"hide_Deployment",0]] call BIS_fnc_initVehicle;
			};
		};
	},
	true,
	[],
	true
] call CBA_fnc_addClassEventHandler;

nil