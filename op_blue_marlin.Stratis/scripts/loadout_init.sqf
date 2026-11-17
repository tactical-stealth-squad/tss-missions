private _unit = _this select 0;
private _klasse = vehicleVarName _unit;

private _uniform = selectRandom ["U_B_T_Soldier_SL_F", "U_B_T_Soldier_F", "U_B_T_Soldier_AR_F"];

switch (_klasse) do {
    case "s1": {
        /// FTL
        _unit setUnitLoadout [["arifle_SPAR_01_blk_F","muzzle_snds_M","acc_pointer_IR","ACE_optic_Hamr_2D",["ACE_30Rnd_556x45_Stanag_M995_AP_mag",30],[],""],[],["hgun_Pistol_heavy_01_green_F","muzzle_snds_acp","","",["11Rnd_45ACP_Mag",15],[],""],["U_O_Wetsuit",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACRE_PRC152",1],["ACE_HuntIR_monitor",1],["11Rnd_45ACP_Mag",2,15]]],["V_RebreatherIA",[]],["B_Kitbag_rgr",[["ACE_salineIV_500",2],["ACE_splint",2],["HandGrenade",2,1],["SmokeShell",2,1],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",8,30],["150Rnd_556x45_Drum_Mag_F",1,150],["V_PlateCarrier2_wdl",false],[_uniform,false]]],"H_HelmetB_Enh_tna_F","G_B_Diving",["ACE_MX2A","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","NVGoggles_tna_F"]];
    };
    case "s2": {
        /// MG
        _unit setUnitLoadout [["arifle_SPAR_01_blk_F","muzzle_snds_M","acc_pointer_IR","ACE_optic_Hamr_2D",["150Rnd_556x45_Drum_Mag_F",150],[],""],[],["hgun_Pistol_heavy_01_green_F","muzzle_snds_acp","","",["11Rnd_45ACP_Mag",15],[],""],["U_O_Wetsuit",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACRE_PRC152",1],["11Rnd_45ACP_Mag",1,15],["150Rnd_556x45_Drum_Mag_F",1,150]]],["V_RebreatherIA",[]],["B_Kitbag_rgr",[["ACE_salineIV_500",2],["ACE_splint",2],["HandGrenade",2,1],["SmokeShell",2,1],["150Rnd_556x45_Drum_Mag_F",3,150],["V_PlateCarrier2_wdl",false],[_uniform,false]]],"H_HelmetB_Enh_tna_F","G_B_Diving",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","NVGoggles_tna_F"]];
    };
    case "s3": {
        /// Explo
        _unit setUnitLoadout [["arifle_SPAR_01_blk_F","muzzle_snds_M","acc_pointer_IR","ACE_optic_Hamr_2D",["ACE_30Rnd_556x45_Stanag_M995_AP_mag",30],[],""],[],["hgun_Pistol_heavy_01_green_F","muzzle_snds_acp","","",["11Rnd_45ACP_Mag",15],[],""],["U_O_Wetsuit",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACRE_PRC152",1],["11Rnd_45ACP_Mag",2,15]]],["V_RebreatherIA",[]],["B_Kitbag_rgr",[["ACE_salineIV_500",2],["ACE_splint",2],["ACE_M26_Clacker",1],["HandGrenade",2,1],["SmokeShell",2,1],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",9,30],["DemoCharge_Remote_Mag",1,1],["V_PlateCarrier2_wdl",false],[_uniform,false]]],"H_HelmetB_Enh_tna_F","G_B_Diving",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","NVGoggles_tna_F"]]
    };
    case "s4": {
        /// CLS
        _unit setUnitLoadout [["SMG_05_F","muzzle_snds_L","acc_pointer_IR","",["30Rnd_9x21_Mag_SMG_02",30],[],""],[],[],["U_O_Wetsuit",[["ACE_elasticBandage",20],["ACE_packingBandage",10],["ACE_EarPlugs",1],["ACRE_PRC152",1],["30Rnd_9x21_Mag_SMG_02",4,30]]],["V_RebreatherIA",[]],["B_Kitbag_rgr",[["ACE_surgicalKit",1],["ACE_salineIV",4],["ACE_splint",5],["ACE_epinephrine",8],["ACE_morphine",10],["ACE_tourniquet",4],["ACE_quikclot",2],["ACE_MapTools",1],["ACE_salineIV_500",2],["30Rnd_9x21_Mag_SMG_02",4,30],["V_PlateCarrier2_wdl",false],[_uniform,false]]],"H_HelmetB_Enh_tna_F","G_B_Diving",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","NVGoggles_tna_F"]];
        _unit setVariable ["ace_medical_medicClass", 2, true]
    };
    case "s5": {
        /// FTL
        _unit setUnitLoadout [["arifle_SPAR_01_blk_F","muzzle_snds_M","acc_pointer_IR","ACE_optic_Hamr_2D",["ACE_30Rnd_556x45_Stanag_M995_AP_mag",30],[],""],[],["hgun_Pistol_heavy_01_green_F","muzzle_snds_acp","","",["11Rnd_45ACP_Mag",15],[],""],["U_O_Wetsuit",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACRE_PRC152",1],["ACE_HuntIR_monitor",1],["11Rnd_45ACP_Mag",2,15]]],["V_RebreatherIA",[]],["B_Kitbag_rgr",[["ACE_salineIV_500",2],["ACE_splint",2],["HandGrenade",2,1],["SmokeShell",2,1],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",8,30],["150Rnd_556x45_Drum_Mag_F",1,150],["V_PlateCarrier2_wdl",false],[_uniform,false]]],"H_HelmetB_Enh_tna_F","G_B_Diving",["ACE_MX2A","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","NVGoggles_tna_F"]];
    };
    case "s6": {
        /// MG
        _unit setUnitLoadout [["arifle_SPAR_01_blk_F","muzzle_snds_M","acc_pointer_IR","ACE_optic_Hamr_2D",["150Rnd_556x45_Drum_Mag_F",150],[],""],[],["hgun_Pistol_heavy_01_green_F","muzzle_snds_acp","","",["11Rnd_45ACP_Mag",15],[],""],["U_O_Wetsuit",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACRE_PRC152",1],["11Rnd_45ACP_Mag",1,15],["150Rnd_556x45_Drum_Mag_F",1,150]]],["V_RebreatherIA",[]],["B_Kitbag_rgr",[["ACE_salineIV_500",2],["ACE_splint",2],["HandGrenade",2,1],["SmokeShell",2,1],["150Rnd_556x45_Drum_Mag_F",3,150],["V_PlateCarrier2_wdl",false],[_uniform,false]]],"H_HelmetB_Enh_tna_F","G_B_Diving",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","NVGoggles_tna_F"]];
    };
    case "s7": {
       /// AT-Schütze (TANKS DLC)
        _unit setUnitLoadout [["arifle_SPAR_01_blk_F","muzzle_snds_M","acc_pointer_IR","ACE_optic_Hamr_2D",["30Rnd_556x45_Stanag_Tracer_Yellow",30],[],""],["launch_MRAWS_green_F","","acc_pointer_IR","",["MRAWS_HEAT_F",1],[],""],[],["U_O_Wetsuit",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACRE_PRC152",1],["ACE_splint",2],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",4,30]]],["V_RebreatherIA",[]],["B_Kitbag_rgr",[["ACE_salineIV_500",2],["MRAWS_HEAT_F",2,1],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",6,30],["V_PlateCarrier2_wdl",false],[_uniform,false]]],"H_HelmetB_Enh_tna_F","G_B_Diving",["ACE_Vector","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch","NVGoggles_tna_F"]]
    };
    case "s8": {
        /// DM
        _unit setUnitLoadout [["arifle_SPAR_03_blk_F","muzzle_snds_B","acc_pointer_IR","optic_Nightstalker",["ACE_20Rnd_762x51_M993_AP_Mag",20],[],"bipod_02_F_blk"],[],["hgun_Pistol_heavy_01_green_F","muzzle_snds_acp","","",["11Rnd_45ACP_Mag",15],[],""],["U_O_Wetsuit",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_RangeCard",1],["ACE_Kestrel4500",1],["ACRE_PRC152",1],["11Rnd_45ACP_Mag",2,15],["ACE_20Rnd_762x51_M993_AP_Mag",2,20]]],["V_RebreatherIA",[]],["B_Kitbag_rgr",[["ACE_salineIV_500",2],["ACE_splint",2],["HandGrenade",2,1],["SmokeShell",2,1],["ACE_20Rnd_762x51_M993_AP_Mag",8,20],["V_PlateCarrier2_wdl",false],[_uniform,false]]],"H_HelmetB_Enh_tna_F","G_B_Diving",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","NVGoggles_tna_F"]]
    };
    case "s9": {
        /// GL - optional
        _unit setUnitLoadout [["arifle_SPAR_01_GL_blk_F","muzzle_snds_M","ACE_acc_pointer_green","ACE_optic_MRCO_2D",["30Rnd_556x45_Stanag",30],["1Rnd_HE_Grenade_shell",1],""],[],["hgun_ACPC2_F","muzzle_snds_acp","acc_flashlight_pistol","",["9Rnd_45ACP_Mag",8],[],""],["U_B_CombatUniform_mcam",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2],["ACE_microDAGR",1],["ACRE_PRC152",1]]],["V_PlateCarrier1_rgr",[["ACE_salineIV_500",2],["ACE_splint",2],["HandGrenade",2,1],["SmokeShell",2,1],["30Rnd_556x45_Stanag",8,30],["9Rnd_45ACP_Mag",2,8],["1Rnd_HE_Grenade_shell",5,1]]],[],"H_HelmetB_sand","G_Balaclava_blk",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter","NVGoggles"]]
    };
    case "s10": {
        /// GL - Optional
        _unit setUnitLoadout [["arifle_SPAR_01_GL_blk_F","muzzle_snds_M","ACE_acc_pointer_green","ACE_optic_MRCO_2D",["30Rnd_556x45_Stanag",30],["1Rnd_HE_Grenade_shell",1],""],[],["hgun_ACPC2_F","muzzle_snds_acp","acc_flashlight_pistol","",["9Rnd_45ACP_Mag",8],[],""],["U_B_CombatUniform_mcam",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2],["ACE_microDAGR",1],["ACRE_PRC152",1]]],["V_PlateCarrier1_rgr",[["ACE_salineIV_500",2],["ACE_splint",2],["HandGrenade",2,1],["SmokeShell",2,1],["30Rnd_556x45_Stanag",8,30],["9Rnd_45ACP_Mag",2,8],["1Rnd_HE_Grenade_shell",5,1]]],[],"H_HelmetB_sand","G_Balaclava_blk",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter","NVGoggles"]]
    };
};

nil