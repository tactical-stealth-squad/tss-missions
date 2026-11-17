params["_param"];

private _helis = [
	[
		[0, "vtx_MH60M"],
		[1, "vtx_MH60M_DAP_MLASS"],
		[2, "vtx_MH60M_DAP"],
		[3, "MELB_MH6M"],
		[4, "MELB_AH6M"]
	]
] call CBA_fnc_hashCreate;

private _pads = [
	[
		["HeliPadA", helipad_a],
		["HeliPadB", helipad_b]
	]
] call CBA_fnc_hashCreate;

private _vehicle_settings = [
	[
		[
			"vtx_MH60M", [
				["mh60m", 1], 
				[
					"Cockpitdoors_Hide", 0,
					"RADAR_HIDE", 0,
					"FLIR_HIDE", 0,
					"FuelProbe_show", 0,
					"MAWS_Tubes_Show", 1,
					"ERFS_show", 1,
					"MH60MMisc_show", 1,
					"Hoist_hide", 1,
					"Skis_show", 0,
					"HH60Flares_show", 1,
					"HH60GRadar_show", 1,
					"HH60GFlir_show", 0,
					"GunnerSeats_Hide", 1,
					"Minigun_Sight_L_hide", 0,
					"Minigun_Sight_R_hide", 0
				]
			]
		],
		[
			"vtx_MH60M_DAP_MLASS", [
				["mh60m", 1], 
				[
					"GunnerSeats_Hide", 1,
					"Minigun_Sight_L_hide", 1,
					"Minigun_Sight_R_hide", 1,
					"MH60MMisc_show", 1,
					"Cockpitdoors_Hide", 0,
					"FuelProbe_show", 0,
					"RADAR_HIDE", 0,
					"FLIR_HIDE", 0,
					"MAWS_Tubes_Show", 1,
					"Hoist_hide", 1,
					"Skis_show", 0,
					"HH60Flares_show", 1,
					"HH60GRadar_show", 1,
					"HH60GFlir_show", 0,
					"ERFS_show", 0
				]
			]
		],
		[
			"vtx_MH60M_DAP", [
				["mh60m", 1], 
				[
					"GunnerSeats_Hide", 1,
					"Minigun_Sight_L_hide", 1,
					"Minigun_Sight_R_hide", 1,
					"MH60MMisc_show", 1,
					"Cockpitdoors_Hide", 0,
					"FuelProbe_show", 0,
					"RADAR_HIDE", 0,
					"FLIR_HIDE", 0,
					"MAWS_Tubes_Show", 1,
					"Hoist_hide", 1,
					"Skis_show", 0,
					"HH60Flares_show", 1,
					"HH60GRadar_show", 1,
					"HH60GFlir_show", 0,
					"ERFS_show", 0
				]
			]
		],
		[
			"MELB_MH6M", [
				nil,
				["AddBobhead", 1, "hide_NoFear", 0, "hide_sn_nose", 0]
			]
		],
		[
			"MELB_AH6M", [
				nil,
				["AddBobhead", 1, "hide_NoFear", 0, "hide_SGDM", 0, "hide_sn_nose", 0]
			]
		]
	]
] call CBA_fnc_hashCreate;

private _selected_param = [_param] call BIS_fnc_getParamValue;
private _heli_type = [_helis, _selected_param] call CBA_fnc_hashGet;
private _heli_pad = [_pads, _param] call CBA_fnc_hashGet;
private _settings = [_vehicle_settings, _heli_type] call CBA_fnc_hashGet;

private _veh = createVehicle [_heli_type, position _heli_pad, [], 0, "NONE"];
_veh setPos position _heli_pad;
_veh setDir 10;

[
	_veh,
	_settings#0,
	_settings#1
] call BIS_fnc_initVehicle;
