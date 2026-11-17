private _player = _this select 0;
private _klasse = vehicleVarName _player;

/*
[[],[],[],["U_B_CombatUniform_mcam",[]],[],[],"","",[],["","","","","",""]]
this setobjectTextureGlobal [0, "A3\Characters_F_exp\Gendarmerie\Data\U_B_GEN_Soldier_F_02_co.paa"];
this setObjectTextureGlobal [0, "\a3\characters_f\BLUFOR\Data\clothing_wdl_co.paa"];


[[],[],[],["U_B_CombatUniform_tshirt_mcam_wdL_f",[]],[],[],"","",[],["","","","","",""]]
this setObjectTextureGlobal [1, "\A3\Characters_F\Common\Data\basicbody_grey_co.paa"];
this setobjectTextureGlobal [0, "A3\Characters_F_exp\Gendarmerie\Data\U_B_GEN_Soldier_F_02_co.paa"];

this setObjectTextureGlobal [1, "\A3\Characters_F\Common\Data\basicbody_brown_co.paa"];
this setObjectTextureGlobal [0, "\a3\characters_f\BLUFOR\Data\clothing_wdl_co.paa"];


[[],[],[],["U_I_CombatUniform",[]],[],[],"","",[],["","","","","",""]]
this setObjectTextureGlobal [0, "A3\characters_f_exp\Syndikat\Data\U_I_C_Soldier_Para_4_F_2_co.paa"];
*/

switch (_klasse) do {
    case "s1": {
        // SQL
        _player setUnitLoadout [["arifle_SPAR_02_blk_F","muzzle_snds_M","ACE_acc_pointer_green","ACE_optic_Hamr_2D",["30Rnd_556x45_Stanag",30],[],""],[],["hgun_Pistol_heavy_02_F","","acc_flashlight_pistol","",["6Rnd_45ACP_Cylinder",6],[],""],["U_I_C_Soldier_Para_4_F",[["ACE_quikclot",3],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_MapTools",1],["ACE_CableTie",1],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_packingBandage",5],["ACE_splint",2],["ACE_microDAGR",1],["ACE_elasticBandage",12],["ACE_salineIV_250",1]]],["V_PlateCarrierIA2_dgtl",[["H_Booniehat_oli",1],["ACRE_PRC148",1],["ACRE_PRC148",1],["SmokeShellPurple",2,1],["6Rnd_45ACP_Cylinder",2,6],["SmokeShell",2,1],["30Rnd_556x45_Stanag",7,30],["MiniGrenade",2,1]]],[],"H_HelmetB_black","G_Balaclava_oli",["ACE_MX2A","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","NVGoggles_OPFOR"]]
    };
    case "s2": {
        // Spezialist - contact
        _player setUnitLoadout [["srifle_DMR_03_woodland_F","muzzle_snds_B_khk_F","ACE_acc_pointer_green","optic_Arco_ghex_F",["20Rnd_762x51_Mag",20],[],"bipod_01_F_khk"],[],[],["U_I_C_Soldier_Bandit_2_F",[["ACE_elasticBandage",9],["ACE_tourniquet",4],["ACE_quikclot",2],["ACE_CableTie",1],["ACE_EarPlugs",1],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_splint",2],["ACE_epinephrine",2]]],["V_CarrierRigKBT_01_Olive_F",[["ACE_microDAGR",1],["ACRE_PRC148",1],["20Rnd_762x51_Mag",3,20],["SmokeShell",2,1],["MiniGrenade",1,1]]],["B_Kitbag_sgg",[["ACE_wirecutter",1],["ACE_Cellphone",1],["ACE_UAVBattery",1],["H_Cap_blk",1],["ACE_EntrenchingTool",1],["ACE_M26_Clacker",1],["20Rnd_762x51_Mag",8,20],["SatchelCharge_Remote_Mag",1,1],["DemoCharge_Remote_Mag",1,1],["APERSTripMine_Wire_Mag",1,1]]],"H_HelmetB","G_Shades_Black",["ACE_Vector","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","ACE_NVG_Wide"]];
        _player setVariable ["ìsEngineer", 2, true]
    };
    case "s3": {
        // MG  - APEX
        _player setUnitLoadout [["LMG_03_F","muzzle_snds_H_MG_blk_F","ACE_acc_pointer_green","optic_Holosight_blk_F",["200Rnd_556x45_Box_Tracer_Red_F",200],[],""],[],["hgun_ACPC2_F","muzzle_snds_acp","acc_flashlight_pistol","",["9Rnd_45ACP_Mag",8],[],""],["U_BG_Guerrilla_6_1",[["ACE_tourniquet",2],["ACE_quikclot",2],["ACE_CableTie",1],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_splint",2],["ACE_elasticBandage",9],["ACE_microDAGR",1]]],["V_PlateCarrierIA1_dgtl",[["H_Booniehat_oli",1],["ACE_tourniquet",2],["ACRE_PRC148",1],["9Rnd_45ACP_Mag",2,8],["200Rnd_556x45_Box_Tracer_Red_F",2,200],["SmokeShell",1,1],["SmokeShellGreen",1,1]]],[],"H_HelmetB_snakeskin","G_Balaclava_oli",["","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","NVGoggles_tna_F"]]
    };
    case "s4": {
        // Medic - law of wars
        _player setUnitLoadout [["arifle_SPAR_01_blk_F","muzzle_snds_M","acc_flashlight","optic_Arco_blk_F",["30Rnd_556x45_Stanag",30],[],""],[],[],["U_B_T_Soldier_AR_F",[["ACE_elasticBandage",9],["ACE_quikclot",2],["ACE_CableTie",1],["ACE_tourniquet",4],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_splint",2],["ACE_microDAGR",1],["ACRE_PRC148",1]]],["V_TacVestIR_blk",[["H_Booniehat_oli",1],["ACE_surgicalKit",1],["SmokeShell",3,1],["SmokeShellGreen",3,1],["HandGrenade",1,1],["30Rnd_556x45_Stanag",10,30]]],["B_LegStrapBag_black_F",[["ACE_elasticBandage",15],["ACE_quikclot",8],["ACE_epinephrine",10],["ACE_morphine",10],["ACE_packingBandage",10],["ACE_salineIV_500",4],["ACE_salineIV_250",2]]],"H_HelmetB","G_Shades_Black",["","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","NVGoggles_OPFOR"]];
        _player setVariable ["ace_medical_medicClass", 2, true]
    };
    case "s5": {
        // FTL - contact
        _player setUnitLoadout [["arifle_SPAR_03_khk_F","muzzle_snds_B_lush_F","ACE_acc_pointer_green","optic_Arco_AK_lush_F",["20Rnd_762x51_Mag",20],[],"bipod_01_F_khk"],[],["hgun_Pistol_heavy_01_green_F","muzzle_snds_acp","acc_flashlight_pistol","",["11Rnd_45ACP_Mag",11],[],""],["U_B_CombatUniform_mcam",[["ACE_quikclot",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_MapTools",1],["ACE_CableTie",1],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_packingBandage",5],["ACE_splint",2],["ACE_microDAGR",1],["ACE_elasticBandage",8],["ACRE_PRC148",1]]],["V_CarrierRigKBT_01_light_EAF_F",[["H_Booniehat_oli",1],["ACRE_PRC148",1],["SmokeShellPurple",2,1],["SmokeShell",2,1],["MiniGrenade",1,1],["20Rnd_762x51_Mag",6,20],["11Rnd_45ACP_Mag",2,11]]],[],"H_HelmetB_plain_wdl","G_Balaclava_blk",["ACE_MX2A","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","NVGoggles_INDEP"]];
        _player setobjectTextureGlobal [0, "A3\Characters_F_exp\Gendarmerie\Data\U_B_GEN_Soldier_F_02_co.paa"]
    };
    case "s6": {
        // Greni - APEX
        _player setUnitLoadout [["arifle_AK12_GL_F","muzzle_snds_B","acc_flashlight","optic_MRCO",["30Rnd_762x39_AK12_Mag_F",30],["1Rnd_HE_Grenade_shell",1],""],[],["hgun_Pistol_01_F","","","",["10Rnd_9x21_Mag",10],[],""],["U_I_C_Soldier_Para_4_F",[["ACE_elasticBandage",12],["ACE_quikclot",3],["ACE_CableTie",1],["ACE_tourniquet",4],["ACE_epinephrine",2],["ACE_EarPlugs",1],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_splint",2],["ACE_microDAGR",1],["H_Cap_blk",1]]],["V_PlateCarrierIA1_dgtl",[["ACRE_PRC148",1],["30Rnd_762x39_AK12_Mag_F",8,30],["1Rnd_HE_Grenade_shell",6,1],["SmokeShell",1,1],["SmokeShellGreen",1,1]]],[],"H_HelmetB_snakeskin","G_Shades_Black",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","ACE_NVG_Wide"]]
    };
    case "s7": {
        // AT - law of war & Tank & Contact
        _player setUnitLoadout [["arifle_AK12_F","muzzle_snds_B","acc_flashlight","optic_MRCO",["30Rnd_762x39_AK12_Mag_F",30],[],"bipod_01_F_blk"],["launch_MRAWS_green_F","","","",["MRAWS_HEAT_F",1],[],""],[],["U_I_CombatUniform",[["ACE_quikclot",3],["ACE_CableTie",1],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_MapTools",1],["ACE_packingBandage",5],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_splint",2],["ACE_elasticBandage",11],["H_Cap_blk",1],["ACE_microDAGR",1]]],["V_CarrierRigKBT_01_heavy_Olive_F",[["ACRE_PRC148",1],["30Rnd_762x39_AK12_Mag_F",10,30],["SmokeShellGreen",2,1],["SmokeShell",2,1],["MiniGrenade",1,1]]],["B_LegStrapBag_black_F",[["MRAWS_HEAT_F",1,1]]],"H_HelmetB","G_Balaclava_blk",["ACE_Vector","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","ACE_NVG_Wide"]];
        _player setObjectTextureGlobal [0, "A3\characters_f_exp\Syndikat\Data\U_I_C_Soldier_Para_4_F_2_co.paa"]
    };
    case "s8": {
        // DMR - SNIPER DLC
       _player setUnitLoadout [["srifle_DMR_06_olive_F","muzzle_snds_B_khk_F","","optic_DMS",["20Rnd_762x51_Mag",20],[],"bipod_01_F_khk"],[],["hgun_ACPC2_F","muzzle_snds_acp","acc_flashlight_pistol","",["9Rnd_45ACP_Mag",8],[],""],["U_I_L_Uniform_01_tshirt_black_F",[["ACE_elasticBandage",7],["ACE_quikclot",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_MapTools",1],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",4],["ACE_RangeCard",1],["ACE_CableTie",1],["ACE_splint",2],["ACE_microDAGR",1],["ACRE_PRC148",1]]],["V_PlateCarrier1_blk",[["ACE_Kestrel4500",1],["H_Booniehat_oli",1],["optic_NVS",1],["SmokeShellGreen",2,1],["SmokeShell",2,1],["20Rnd_762x51_Mag",8,20],["9Rnd_45ACP_Mag",1,8]]],[],"H_HelmetB_black","G_Balaclava_blk",["ACE_Vector","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","ACE_NVG_Gen1"]]
    };
    case "s9": {
        // Greni @ Optional - APEX
        _player setUnitLoadout [["arifle_AK12_GL_F","muzzle_snds_B","acc_flashlight","optic_MRCO",["30Rnd_762x39_AK12_Mag_F",30],["1Rnd_HE_Grenade_shell",1],""],[],["hgun_Pistol_01_F","","","",["10Rnd_9x21_Mag",10],[],""],["U_I_C_Soldier_Para_4_F",[["ACE_elasticBandage",12],["ACE_quikclot",3],["ACE_CableTie",1],["ACE_tourniquet",4],["ACE_epinephrine",2],["ACE_EarPlugs",1],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_splint",2],["ACE_microDAGR",1],["H_Cap_blk",1]]],["V_PlateCarrierIA1_dgtl",[["ACRE_PRC1482",1],["30Rnd_762x39_AK12_Mag_F",8,30],["1Rnd_HE_Grenade_shell",6,1],["SmokeShell",1,1],["SmokeShellGreen",1,1]]],[],"H_HelmetB_snakeskin","G_Shades_Black",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","ACE_NVG_Wide"]]
    };
    case "s10": {
        // Greni @ Optional - APEX
        _player setUnitLoadout [["arifle_AK12_GL_F","muzzle_snds_B","acc_flashlight","optic_MRCO",["30Rnd_762x39_AK12_Mag_F",30],["1Rnd_HE_Grenade_shell",1],""],[],["hgun_Pistol_01_F","","","",["10Rnd_9x21_Mag",10],[],""],["U_I_C_Soldier_Para_4_F",[["ACE_elasticBandage",12],["ACE_quikclot",3],["ACE_CableTie",1],["ACE_tourniquet",4],["ACE_epinephrine",2],["ACE_EarPlugs",1],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_splint",2],["ACE_microDAGR",1],["H_Cap_blk",1]]],["V_PlateCarrierIA1_dgtl",[["ACRE_PRC148",1],["30Rnd_762x39_AK12_Mag_F",8,30],["1Rnd_HE_Grenade_shell",6,1],["SmokeShell",1,1],["SmokeShellGreen",1,1]]],[],"H_HelmetB_snakeskin","G_Shades_Black",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","ACE_NVG_Wide"]]
    };
};

nil