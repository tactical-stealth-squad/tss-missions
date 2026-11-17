private _unit = _this select 0;
private _klasse = vehicleVarName _unit;

switch (_klasse) do {
    case "s1": {
        /// FTL
        _unit setUnitLoadout [["arifle_SPAR_01_blk_F","muzzle_snds_M","ACE_acc_pointer_green","ACE_optic_MRCO_2D",["30Rnd_556x45_Stanag",30],[],""],[],["hgun_ACPC2_F","muzzle_snds_acp","acc_flashlight_pistol","",["9Rnd_45ACP_Mag",8],[],""],["U_B_CombatUniform_mcam",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2],["ACE_microDAGR",1],["ACRE_PRC148",1]]],["V_PlateCarrier1_rgr",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC152",1],["HandGrenade",2,1],["SmokeShell",2,1],["9Rnd_45ACP_Mag",2,8],["SmokeShellGreen",2,1],["30Rnd_556x45_Stanag",8,30]]],[],"H_HelmetB_sand","G_Balaclava_blk",["ACE_MX2A","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter","NVGoggles"]]
    };
    case "s2": {
        /// MG
        _unit setUnitLoadout [["LMG_03_F","muzzle_snds_H_MG_blk_F","ACE_acc_pointer_green","ACE_optic_MRCO_2D",["200Rnd_556x45_Box_F",200],[],""],[],["hgun_ACPC2_F","muzzle_snds_acp","acc_flashlight_pistol","",["9Rnd_45ACP_Mag",8],[],""],["U_B_CombatUniform_mcam",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2],["ACE_microDAGR",1],["ACRE_PRC148",1]]],["V_PlateCarrier1_rgr",[["ACE_splint",2],["ACE_salineIV_500",2],["SmokeShell",2,1],["9Rnd_45ACP_Mag",2,8],["200Rnd_556x45_Box_F",2,200],["SmokeShellGreen",1,1],["HandGrenade",2,1]]],[],"H_HelmetB_sand","G_Balaclava_blk",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter","NVGoggles"]]
    };
    case "s3": {
        /// GL
        _unit setUnitLoadout [["arifle_SPAR_01_GL_blk_F","muzzle_snds_M","ACE_acc_pointer_green","ACE_optic_MRCO_2D",["30Rnd_556x45_Stanag",30],["1Rnd_HE_Grenade_shell",1],""],[],["hgun_ACPC2_F","muzzle_snds_acp","acc_flashlight_pistol","",["9Rnd_45ACP_Mag",8],[],""],["U_B_CombatUniform_mcam",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2],["ACE_microDAGR",1],["ACRE_PRC148",1]]],["V_PlateCarrier1_rgr",[["ACE_salineIV_500",2],["ACE_splint",2],["HandGrenade",2,1],["SmokeShell",2,1],["30Rnd_556x45_Stanag",8,30],["9Rnd_45ACP_Mag",2,8],["1Rnd_HE_Grenade_shell",5,1]]],[],"H_HelmetB_sand","G_Balaclava_blk",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter","NVGoggles"]]
    };
    case "s4": {
        /// CLS
        _unit setUnitLoadout [["arifle_SPAR_01_blk_F","muzzle_snds_M","ACE_acc_pointer_green","ACE_optic_MRCO_2D",["30Rnd_556x45_Stanag",30],[],""],[],["hgun_ACPC2_F","muzzle_snds_acp","acc_flashlight_pistol","",["9Rnd_45ACP_Mag",8],[],""],["U_B_CombatUniform_mcam",[["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_tourniquet",4],["ACE_microDAGR",1],["ACRE_PRC148",1]]],["V_PlateCarrier1_rgr",[["ACE_surgicalKit",1],["ACE_personalAidKit",1],["HandGrenade",2,1],["SmokeShell",4,1],["30Rnd_556x45_Stanag",8,30],["SmokeShellPurple",2,1]]],["B_AssaultPack_mcamo",[["ACE_elasticBandage",20],["ACE_packingBandage",15],["ACE_epinephrine",12],["ACE_morphine",8],["ACE_salineIV",4],["ACE_salineIV_250",8],["ACE_tourniquet",4],["ACE_splint",12],["ACE_quikclot",8]]],"H_HelmetB_sand","G_Balaclava_blk",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter","NVGoggles"]];
        _unit setVariable ["ace_medical_medicClass", 2, true]
    };
    case "s5": {
        /// FTL
        _unit setUnitLoadout [["arifle_SPAR_01_blk_F","muzzle_snds_M","ACE_acc_pointer_green","ACE_optic_MRCO_2D",["30Rnd_556x45_Stanag",30],[],""],[],["hgun_ACPC2_F","muzzle_snds_acp","acc_flashlight_pistol","",["9Rnd_45ACP_Mag",8],[],""],["U_B_CombatUniform_mcam",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2],["ACE_microDAGR",1],["ACRE_PRC148",1]]],["V_PlateCarrier1_rgr",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC152",1],["HandGrenade",2,1],["SmokeShell",2,1],["9Rnd_45ACP_Mag",2,8],["SmokeShellGreen",2,1],["30Rnd_556x45_Stanag",8,30]]],[],"H_HelmetB_sand","G_Balaclava_blk",["ACE_MX2A","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter","NVGoggles"]]
    };
    case "s6": {
        /// MG
        _unit setUnitLoadout [["LMG_03_F","muzzle_snds_H_MG_blk_F","ACE_acc_pointer_green","ACE_optic_MRCO_2D",["200Rnd_556x45_Box_F",200],[],""],[],["hgun_ACPC2_F","muzzle_snds_acp","acc_flashlight_pistol","",["9Rnd_45ACP_Mag",8],[],""],["U_B_CombatUniform_mcam",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2],["ACE_microDAGR",1],["ACRE_PRC148",1]]],["V_PlateCarrier1_rgr",[["ACE_splint",2],["SmokeShellGreen",1,1],["ACE_salineIV_500",2],["SmokeShell",2,1],["9Rnd_45ACP_Mag",2,8],["200Rnd_556x45_Box_F",2,200],["HandGrenade",2,1]]],[],"H_HelmetB_sand","G_Balaclava_blk",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter","NVGoggles"]]
    };
    case "s7": {
       /// GL
        _unit setUnitLoadout [["arifle_SPAR_01_GL_blk_F","muzzle_snds_M","ACE_acc_pointer_green","ACE_optic_MRCO_2D",["30Rnd_556x45_Stanag",30],["1Rnd_HE_Grenade_shell",1],""],[],["hgun_ACPC2_F","muzzle_snds_acp","acc_flashlight_pistol","",["9Rnd_45ACP_Mag",8],[],""],["U_B_CombatUniform_mcam",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2],["ACE_microDAGR",1],["ACRE_PRC148",1]]],["V_PlateCarrier1_rgr",[["ACE_salineIV_500",2],["ACE_splint",2],["HandGrenade",2,1],["SmokeShell",2,1],["30Rnd_556x45_Stanag",8,30],["9Rnd_45ACP_Mag",2,8],["1Rnd_HE_Grenade_shell",5,1]]],[],"H_HelmetB_sand","G_Balaclava_blk",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter","NVGoggles"]]
    };
    case "s8": {
        /// Explo
        _unit setUnitLoadout [["arifle_SPAR_01_blk_F","muzzle_snds_M","ACE_acc_pointer_green","ACE_optic_MRCO_2D",["30Rnd_556x45_Stanag",30],[],""],[],["hgun_ACPC2_F","muzzle_snds_acp","acc_flashlight_pistol","",["9Rnd_45ACP_Mag",8],[],""],["U_B_CombatUniform_mcam",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2],["ACE_microDAGR",1],["ACRE_PRC148",1]]],["V_PlateCarrier1_rgr",[["ACE_salineIV_500",2],["ACE_splint",2],["ACE_M26_Clacker",1],["ACE_DefusalKit",1],["HandGrenade",2,1],["SmokeShell",2,1],["9Rnd_45ACP_Mag",2,8],["30Rnd_556x45_Stanag",8,30],["SmokeShellPurple",2,1]]],["B_AssaultPack_mcamo",[["SatchelCharge_Remote_Mag",1,1],["DemoCharge_Remote_Mag",2,1],["APERSMine_Range_Mag",2,1]]],"H_HelmetB_sand","G_Balaclava_blk",["","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter","NVGoggles"]]
    };
    case "s9": {
        /// GL - optional
        _unit setUnitLoadout [["arifle_SPAR_01_GL_blk_F","muzzle_snds_M","ACE_acc_pointer_green","ACE_optic_MRCO_2D",["30Rnd_556x45_Stanag",30],["1Rnd_HE_Grenade_shell",1],""],[],["hgun_ACPC2_F","muzzle_snds_acp","acc_flashlight_pistol","",["9Rnd_45ACP_Mag",8],[],""],["U_B_CombatUniform_mcam",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2],["ACE_microDAGR",1],["ACRE_PRC148",1]]],["V_PlateCarrier1_rgr",[["ACE_salineIV_500",2],["ACE_splint",2],["HandGrenade",2,1],["SmokeShell",2,1],["30Rnd_556x45_Stanag",8,30],["9Rnd_45ACP_Mag",2,8],["1Rnd_HE_Grenade_shell",5,1]]],[],"H_HelmetB_sand","G_Balaclava_blk",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter","NVGoggles"]]
    };
    case "s10": {
        /// GL - Optional
        _unit setUnitLoadout [["arifle_SPAR_01_GL_blk_F","muzzle_snds_M","ACE_acc_pointer_green","ACE_optic_MRCO_2D",["30Rnd_556x45_Stanag",30],["1Rnd_HE_Grenade_shell",1],""],[],["hgun_ACPC2_F","muzzle_snds_acp","acc_flashlight_pistol","",["9Rnd_45ACP_Mag",8],[],""],["U_B_CombatUniform_mcam",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2],["ACE_microDAGR",1],["ACRE_PRC148",1]]],["V_PlateCarrier1_rgr",[["ACE_salineIV_500",2],["ACE_splint",2],["HandGrenade",2,1],["SmokeShell",2,1],["30Rnd_556x45_Stanag",8,30],["9Rnd_45ACP_Mag",2,8],["1Rnd_HE_Grenade_shell",5,1]]],[],"H_HelmetB_sand","G_Balaclava_blk",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter","NVGoggles"]]
    };
};

nil