private _unit = (_this select 0);

private _uniform = selectRandom ["U_B_T_Soldier_SL_F", "U_B_T_Soldier_F", "U_B_T_Soldier_AR_F"];

switch (typeOf _unit) do {

	//TL
	case "B_Soldier_TL_F": {
		_unit setUnitLoadout [["arifle_SPAR_01_blk_F","muzzle_snds_M","acc_pointer_IR","ACE_optic_Hamr_2D",["ACE_30Rnd_556x45_Stanag_M995_AP_mag",30],[],""],[],["hgun_Pistol_heavy_01_green_F","muzzle_snds_acp","","",["11Rnd_45ACP_Mag",15],[],""],["U_O_Wetsuit",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACRE_PRC152",1],["ACE_HuntIR_monitor",1],["11Rnd_45ACP_Mag",2,15]]],["V_RebreatherIA",[]],["B_Kitbag_rgr",[["ACE_salineIV_500",2],["ACE_splint",2],["HandGrenade",2,1],["SmokeShell",2,1],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",8,30],["150Rnd_556x45_Drum_Mag_F",1,150],["V_PlateCarrier2_wdl",false],[_uniform,false]]],"H_HelmetB_Enh_tna_F","G_B_Diving",["ACE_MX2A","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","NVGoggles_tna_F"]];
	};

	//Rfl
	case "B_Soldier_F": {
		_unit setUnitLoadout [["arifle_SPAR_01_blk_F","muzzle_snds_M","acc_pointer_IR","ACE_optic_Hamr_2D",["ACE_30Rnd_556x45_Stanag_M995_AP_mag",30],[],""],[],["hgun_Pistol_heavy_01_green_F","muzzle_snds_acp","","",["11Rnd_45ACP_Mag",15],[],""],["U_O_Wetsuit",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACRE_PRC152",1],["11Rnd_45ACP_Mag",2,15]]],["V_RebreatherIA",[]],["B_Kitbag_rgr",[["ACE_salineIV_500",2],["ACE_splint",2],["HandGrenade",2,1],["SmokeShell",2,1],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",10,30],["V_PlateCarrier2_wdl",false],[_uniform,false]]],"H_HelmetB_Enh_tna_F","G_B_Diving",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","NVGoggles_tna_F"]];
	};
	
	//AR
	case "B_soldier_AR_F": {
		_unit setUnitLoadout [["arifle_SPAR_01_blk_F","muzzle_snds_M","acc_pointer_IR","ACE_optic_Hamr_2D",["150Rnd_556x45_Drum_Mag_F",150],[],""],[],["hgun_Pistol_heavy_01_green_F","muzzle_snds_acp","","",["11Rnd_45ACP_Mag",15],[],""],["U_O_Wetsuit",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACRE_PRC152",1],["11Rnd_45ACP_Mag",1,15],["150Rnd_556x45_Drum_Mag_F",1,150]]],["V_RebreatherIA",[]],["B_Kitbag_rgr",[["ACE_salineIV_500",2],["ACE_splint",2],["HandGrenade",2,1],["SmokeShell",2,1],["150Rnd_556x45_Drum_Mag_F",3,150],["V_PlateCarrier2_wdl",false],[_uniform,false]]],"H_HelmetB_Enh_tna_F","G_B_Diving",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","NVGoggles_tna_F"]];
	};

	//GRE
	case "B_Soldier_GL_F": {
		_unit setUnitLoadout [["arifle_SPAR_01_GL_blk_F","muzzle_snds_M","acc_pointer_IR","ACE_optic_Hamr_2D",["ACE_30Rnd_556x45_Stanag_M995_AP_mag",30],["1Rnd_HE_Grenade_shell",1],""],[],["hgun_Pistol_heavy_01_green_F","muzzle_snds_acp","","",["11Rnd_45ACP_Mag",15],[],""],["U_O_Wetsuit",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACRE_PRC152",1],["11Rnd_45ACP_Mag",2,15],["ACE_HuntIR_M203",3,1]]],["V_RebreatherIA",[]],["B_Kitbag_rgr",[["ACE_salineIV_500",2],["ACE_splint",2],["HandGrenade",2,1],["SmokeShell",2,1],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",8,30],["1Rnd_HE_Grenade_shell",8,1],["V_PlateCarrier2_wdl",false],[_uniform,false]]],"H_HelmetB_Enh_tna_F","G_B_Diving",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","NVGoggles_tna_F"]];
	};

	//Marksman
	case "B_soldier_M_F": {
		_unit setUnitLoadout [["arifle_SPAR_03_blk_F","muzzle_snds_B","acc_pointer_IR","optic_Nightstalker",["ACE_20Rnd_762x51_M993_AP_Mag",20],[],"bipod_02_F_blk"],[],["hgun_Pistol_heavy_01_green_F","muzzle_snds_acp","","",["11Rnd_45ACP_Mag",15],[],""],["U_O_Wetsuit",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_RangeCard",1],["ACE_Kestrel4500",1],["ACRE_PRC152",1],["11Rnd_45ACP_Mag",2,15],["ACE_20Rnd_762x51_M993_AP_Mag",2,20]]],["V_RebreatherIA",[]],["B_Kitbag_rgr",[["ACE_salineIV_500",2],["ACE_splint",2],["HandGrenade",2,1],["SmokeShell",2,1],["ACE_20Rnd_762x51_M993_AP_Mag",8,20],["V_PlateCarrier2_wdl",false],[_uniform,false]]],"H_HelmetB_Enh_tna_F","G_B_Diving",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","NVGoggles_tna_F"]];
	};

	//CLS
	case "B_medic_F": {
		_unit setUnitLoadout [["SMG_05_F","muzzle_snds_L","acc_pointer_IR","",["30Rnd_9x21_Mag_SMG_02",30],[],""],[],[],["U_O_Wetsuit",[["ACE_elasticBandage",20],["ACE_packingBandage",10],["ACE_EarPlugs",1],["ACRE_PRC152_ID_2",1],["30Rnd_9x21_Mag_SMG_02",4,30]]],["V_RebreatherIA",[]],["B_Kitbag_rgr",[["ACE_surgicalKit",1],["ACE_salineIV",4],["ACE_splint",5],["ACE_epinephrine",8],["ACE_morphine",10],["ACE_tourniquet",4],["ACE_quikclot",2],["ACE_MapTools",1],["ACE_salineIV_500",2],["30Rnd_9x21_Mag_SMG_02",4,30],["V_PlateCarrier2_wdl",false],[_uniform,false]]],"H_HelmetB_Enh_tna_F","G_B_Diving",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","NVGoggles_tna_F"]];
	};

	//Explo
	case "B_soldier_exp_F": {
		_unit setUnitLoadout [["arifle_SPAR_01_blk_F","muzzle_snds_M","acc_pointer_IR","ACE_optic_Hamr_2D",["ACE_30Rnd_556x45_Stanag_M995_AP_mag",30],[],""],[],["hgun_Pistol_heavy_01_green_F","muzzle_snds_acp","","",["11Rnd_45ACP_Mag",15],[],""],["U_O_Wetsuit",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACRE_PRC152",1],["11Rnd_45ACP_Mag",2,15]]],["V_RebreatherIA",[]],["B_Kitbag_rgr",[["ACE_salineIV_500",2],["ACE_splint",2],["ACE_M26_Clacker",1],["HandGrenade",2,1],["SmokeShell",2,1],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",9,30],["DemoCharge_Remote_Mag",1,1],["V_PlateCarrier2_wdl",false],[_uniform,false]]],"H_HelmetB_Enh_tna_F","G_B_Diving",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","NVGoggles_tna_F"]];
	};
};

nil