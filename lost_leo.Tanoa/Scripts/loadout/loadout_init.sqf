private _player = _this select 0;
private _klasse = vehicleVarName _player;

//private _uniform = selectRandom ["U_BG_Guerrilla_6_1", "U_I_C_Soldier_Para_1_F"]; //U_C_Journalist

switch (_klasse) do {
    case "s1": {
        // SQL - APEX
        _player setUnitLoadout [["arifle_SPAR_02_blk_F","muzzle_snds_M","ACE_acc_pointer_green","ACE_optic_Hamr_2D",["30Rnd_556x45_Stanag",30],[],""],[],["hgun_Pistol_heavy_02_F","","acc_flashlight_pistol","",["6Rnd_45ACP_Cylinder",6],[],""],["U_I_C_Soldier_Camo_F",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_epinephrine",2],["ACE_morphine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",3],["ACE_salineIV_500",2]]],["V_PlateCarrierIAGL_oli",[["ACRE_PRC148",1],["ACRE_PRC343",1],["ACE_microDAGR",1],["6Rnd_45ACP_Cylinder",2,6],["SmokeShell",2,1],["30Rnd_556x45_Stanag",7,30],["HandGrenade",2,1]]],[],"H_HelmetSpecB_paint1","G_Balaclava_oli",["ACE_MX2A","","","",[],[],""],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch","ACE_NVG_Wide"]];
    };
    case "s2": {
        // Spezialist
        _player setUnitLoadout [["SMG_02_F","muzzle_snds_L","ACE_acc_pointer_green","optic_Yorris",["30Rnd_9x21_Mag_SMG_02",30],[],""],[],["ACE_Flashlight_Maglite_ML300L","","","",[],[],""],["U_C_Uniform_Scientist_02_F",[["ACE_elasticBandage",10],["ACE_packingBandage",5],["ACE_tourniquet",4]]],["V_PlateCarrierIA1_dgtl",[["ACE_microDAGR",1],["ACE_M26_Clacker",1],["ACRE_PRC343",1],["SmokeShell",2,1],["30Rnd_9x21_Mag_SMG_02",7,30],["HandGrenade",2,1]]],["B_FieldPack_khk",[["ACE_Cellphone",1],["ACE_wirecutter",1],["ACE_UAVBattery",1],["ACE_morphine",3],["ACE_packingBandage",10],["ACE_epinephrine",2],["ACE_splint",3],["ACE_salineIV_500",4],["ACE_quikclot",2],["SatchelCharge_Remote_Mag",1,1],["30Rnd_9x21_Mag_SMG_02",1,30],["DemoCharge_Remote_Mag",1,1]]],"H_HelmetSpecB_wdl","G_Squares",["ACE_Vector","","","",[],[],""],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch","ACE_NVG_Gen4_Green"]];
        _player setVariable ["ìsEngineer", 2, true];
    };
    case "s3": {
        // MG  - APEX
        _player setUnitLoadout [["LMG_03_F","muzzle_snds_H_MG_blk_F","ACE_acc_pointer_green","optic_Arco_blk_F",["200Rnd_556x45_Box_Tracer_Red_F",200],[],""],[],["hgun_ACPC2_F","muzzle_snds_acp","acc_flashlight_pistol","",["9Rnd_45ACP_Mag",8],[],""],["U_I_G_Story_Protagonist_F",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_epinephrine",2],["ACE_morphine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",3],["ACE_splint",2],["SmokeShell",1,1]]],["V_PlateCarrier2_blk",[["ACE_tourniquet",4],["ACRE_PRC343",1],["ACE_microDAGR",1],["200Rnd_556x45_Box_Tracer_Red_F",3,200],["9Rnd_45ACP_Mag",1,8]]],[],"H_HelmetSpecB","G_Balaclava_blk",[],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch","ACE_NVG_Gen4_Green"]];
    };
    case "s4": {
        // Medic - APEX
        _player setUnitLoadout [["arifle_SPAR_01_blk_F","muzzle_snds_M","ACE_acc_pointer_green","ACE_optic_Hamr_2D",["ACE_30Rnd_556x45_Stanag_Tracer_Dim",30],[],""],[],["hgun_ACPC2_F","muzzle_snds_acp","acc_flashlight_pistol","",["9Rnd_45ACP_Mag",8],[],""],["U_B_T_Soldier_AR_F",[["ACE_epinephrine",2],["ACE_morphine",3],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_tourniquet",4]]],["V_PlateCarrier2_blk",[["ACE_microDAGR",1],["ACRE_PRC343",1],["HandGrenade",2,1],["SmokeShell",2,1],["ACE_30Rnd_556x45_Stanag_Tracer_Dim",8,30],["9Rnd_45ACP_Mag",1,8]]],["B_AssaultPack_blk",[["ACE_elasticBandage",18],["ACE_packingBandage",5],["ACE_epinephrine",8],["ACE_morphine",8],["ACE_salineIV",4],["ACE_salineIV_250",8],["ACE_splint",12],["ACE_surgicalKit",1]]],"H_HelmetB_Enh_tna_F","",[],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch","ACE_NVG_Gen4_Green"]];
        _player setVariable ["ace_medical_medicClass", 2, true];
    };
    case "s5": {
        // FTL - APEX
        _player setUnitLoadout [["arifle_SPAR_03_khk_F","muzzle_snds_B_lush_F","ACE_acc_pointer_green","optic_Hamr_khk_F",["ACE_20Rnd_762x51_Mag_SD",20],[],"bipod_02_F_lush"],[],["hgun_Pistol_heavy_01_green_F","muzzle_snds_acp","acc_flashlight_pistol","",["11Rnd_45ACP_Mag",15],[],""],["U_B_GEN_Soldier_F",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_epinephrine",2],["ACE_morphine",3],["ACE_MapTools",1],["ACE_tourniquet",4],["ACE_quikclot",3],["ACE_splint",2],["ACE_salineIV_500",1]]],["V_PlateCarrier2_blk",[["ACRE_PRC148",1],["ACRE_PRC343",1],["ACE_microDAGR",1],["SmokeShell",2,1],["11Rnd_45ACP_Mag",1,15],["ACE_20Rnd_762x51_Mag_SD",7,20],["HandGrenade",2,1]]],[],"H_HelmetSpecB_wdl","G_Bandanna_blk",["ACE_MX2A","","","",[],[],""],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch","ACE_NVG_Gen4_Green"]];
    };
    case "s6": {
        // Greni - APEX
        _player setUnitLoadout [["arifle_AK12_GL_F","muzzle_snds_B","ACE_acc_pointer_green","optic_MRCO",["30Rnd_762x39_AK12_Mag_F",30],["1Rnd_HE_Grenade_shell",1],""],[],["hgun_Pistol_heavy_01_green_F","muzzle_snds_acp","acc_flashlight_pistol","",["11Rnd_45ACP_Mag",15],[],""],["U_C_Journalist",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_epinephrine",2],["ACE_morphine",3],["ACE_MapTools",1],["ACE_quikclot",3],["1Rnd_HE_Grenade_shell",2,1]]],["V_PlateCarrierIAGL_oli",[["ACRE_PRC343",1],["ACE_tourniquet",4],["ACE_splint",2],["30Rnd_762x39_AK12_Mag_F",8,30],["1Rnd_HE_Grenade_shell",6,1]]],[],"H_HelmetSpecB_snakeskin","G_Bandanna_khk",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","ACE_NVG_Gen4"]];
    };
    case "s7": {
        // AT - Laws of War
        _player setUnitLoadout [["SMG_02_F","muzzle_snds_L","ACE_acc_pointer_green","optic_Yorris",["30Rnd_9x21_Mag_SMG_02",30],[],""],["launch_RPG7_F","","","",["RPG7_F",1],[],""],["hgun_Pistol_heavy_02_F","","acc_flashlight_pistol","",["6Rnd_45ACP_Cylinder",6],[],""],["U_C_Journalist",[["ACE_elasticBandage",10],["ACE_packingBandage",5],["ACE_tourniquet",4],["ACE_MapTools",1]]],["V_PlateCarrierIAGL_oli",[["ACRE_PRC343",1],["ACE_epinephrine",2],["ACE_morphine",3],["ACE_quikclot",3],["ACE_splint",2],["ACE_microDAGR",1],["30Rnd_9x21_Mag_SMG_02",9,30],["SmokeShell",2,1]]],["B_LegStrapBag_coyote_F",[["RPG7_F",2,1]]],"H_HelmetB_Enh_tna_F","G_Balaclava_oli",["ACE_Vector","","","",[],[],""],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch","ACE_NVG_Gen4_Green"]];
    };
    case "s8": {
        // DMR
       _player setUnitLoadout [["srifle_EBR_F","muzzle_snds_B","ACE_acc_pointer_green","optic_Nightstalker",["ACE_20Rnd_762x51_Mag_SD",20],[],"bipod_01_F_snd"],[],["hgun_ACPC2_F","muzzle_snds_acp","acc_flashlight_pistol","",["9Rnd_45ACP_Mag",8],[],""],["U_I_L_Uniform_01_tshirt_olive_F",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_epinephrine",2],["ACE_morphine",3],["ACE_splint",2],["ACE_MapTools",1],["ACE_tourniquet",4],["ACE_quikclot",3],["ACE_RangeCard",1],["SmokeShell",1,1]]],["V_PlateCarrier2_blk",[["ACE_Kestrel4500",1],["ACRE_PRC343",1],["ACE_microDAGR",1],["ACE_20Rnd_762x51_Mag_SD",10,20],["9Rnd_45ACP_Mag",1,8]]],[],"H_HelmetSpecB_blk","G_Bandanna_beast",["ACE_Vector","","","",[],[],""],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch","ACE_NVG_Gen4_Black"]];
    };

    default {
        // OPTIONAL Greni
        _player setUnitLoadout [["arifle_AK12_GL_F","muzzle_snds_B","ACE_acc_pointer_green","optic_MRCO",["30Rnd_762x39_AK12_Mag_F",30],["1Rnd_HE_Grenade_shell",1],""],[],["hgun_Pistol_heavy_01_green_F","muzzle_snds_acp","acc_flashlight_pistol","",["11Rnd_45ACP_Mag",15],[],""],["U_C_Journalist",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_epinephrine",2],["ACE_morphine",3],["ACE_MapTools",1],["ACE_quikclot",3],["1Rnd_HE_Grenade_shell",2,1]]],["V_PlateCarrierIAGL_oli",[["ACRE_PRC343",1],["ACE_tourniquet",4],["ACE_splint",2],["30Rnd_762x39_AK12_Mag_F",8,30],["1Rnd_HE_Grenade_shell",6,1]]],[],"H_HelmetSpecB_snakeskin","G_Bandanna_khk",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","ACE_NVG_Gen4"]];
    }
};

nil