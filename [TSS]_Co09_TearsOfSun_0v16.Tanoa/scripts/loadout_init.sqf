private _unit = _this select 0;
private _klasse = vehicleVarName _unit;

switch (_klasse) do {
    case "s1": {
        /// FTL
        _unit setUnitLoadout [["arifle_SPAR_02_blk_F","muzzle_snds_M","ACE_acc_pointer_green","ACE_optic_MRCO_2D",["30Rnd_556x45_Stanag",30],[],""],[],["hgun_ACPC2_F","muzzle_snds_acp","acc_flashlight_pistol","",["9Rnd_45ACP_Mag",8],[],""],["U_B_T_Soldier_SL_F",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2],["ACE_microDAGR",1],["ACRE_PRC148",1]]],["V_PlateCarrier1_tna_F",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC152",1],["HandGrenade",2,1],["SmokeShell",2,1],["9Rnd_45ACP_Mag",2,8],["SmokeShellGreen",2,1],["30Rnd_556x45_Stanag",8,30]]],[],"H_HelmetB_Light_tna_F","G_Balaclava_oli",["ACE_Vector","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter","NVGoggles_tna_F"]]
    };
    case "s2": {
        /// MG
        _unit setUnitLoadout [["LMG_03_F","muzzle_snds_H_MG_blk_F","ACE_acc_pointer_green","ACE_optic_MRCO_2D",["200Rnd_556x45_Box_F",200],[],""],[],["hgun_ACPC2_F","muzzle_snds_acp","acc_flashlight_pistol","",["9Rnd_45ACP_Mag",8],[],""],["U_B_T_Soldier_SL_F",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2],["ACE_microDAGR",1],["ACRE_PRC148",1]]],["V_PlateCarrier1_tna_F",[["ACE_splint",2],["ACE_salineIV_500",2],["SmokeShell",2,1],["9Rnd_45ACP_Mag",2,8],["200Rnd_556x45_Box_F",2,200],["SmokeShellGreen",1,1],["HandGrenade",2,1]]],[],"H_HelmetB_Light_tna_F","G_Balaclava_oli",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter","NVGoggles_tna_F"]]
    };
    case "s3": {
        /// GL
        _unit setUnitLoadout [["arifle_SPAR_01_GL_blk_F","muzzle_snds_M","ACE_acc_pointer_green","ACE_optic_MRCO_2D",["30Rnd_556x45_Stanag",30],["1Rnd_HE_Grenade_shell",1],""],[],["hgun_ACPC2_F","muzzle_snds_acp","acc_flashlight_pistol","",["9Rnd_45ACP_Mag",8],[],""],["U_B_T_Soldier_SL_F",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2],["ACE_microDAGR",1],["ACRE_PRC148",1]]],["V_PlateCarrier1_tna_F",[["ACE_salineIV_500",2],["ACE_splint",2],["HandGrenade",2,1],["SmokeShell",2,1],["30Rnd_556x45_Stanag",8,30],["9Rnd_45ACP_Mag",2,8],["1Rnd_HE_Grenade_shell",5,1]]],[],"H_HelmetB_Light_tna_F","G_Balaclava_oli",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter","NVGoggles_tna_F"]]
    };
    case "s4": {
        /// CLS
        _unit setUnitLoadout [["arifle_SPAR_02_blk_F","muzzle_snds_M","ACE_acc_pointer_green","ACE_optic_MRCO_2D",["30Rnd_556x45_Stanag",30],[],""],[],["hgun_ACPC2_F","muzzle_snds_acp","acc_flashlight_pistol","",["9Rnd_45ACP_Mag",8],[],""],["U_B_T_Soldier_SL_F",[["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_tourniquet",4],["ACE_microDAGR",1],["ACRE_PRC148",1]]],["V_PlateCarrier1_tna_F",[["ACE_surgicalKit",1],["ACE_personalAidKit",1],["HandGrenade",2,1],["SmokeShell",4,1],["30Rnd_556x45_Stanag",8,30],["SmokeShellPurple",2,1]]],["B_AssaultPack_tna_F",[["ACE_elasticBandage",20],["ACE_packingBandage",15],["ACE_epinephrine",12],["ACE_morphine",8],["ACE_salineIV",4],["ACE_salineIV_250",8],["ACE_tourniquet",4],["ACE_splint",12],["ACE_quikclot",8]]],"H_HelmetB_Light_tna_F","G_Balaclava_oli",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter","NVGoggles_tna_F"]];
        _unit setVariable ["ace_medical_medicClass", 2, true]
    };
    case "s5": {
        /// FTL
        _unit setUnitLoadout [["arifle_SPAR_02_blk_F","muzzle_snds_M","ACE_acc_pointer_green","ACE_optic_MRCO_2D",["30Rnd_556x45_Stanag",30],[],""],[],["hgun_ACPC2_F","muzzle_snds_acp","acc_flashlight_pistol","",["9Rnd_45ACP_Mag",8],[],""],["U_B_T_Soldier_SL_F",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2],["ACE_microDAGR",1],["ACRE_PRC148",1]]],["V_PlateCarrier1_tna_F",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC152",1],["HandGrenade",2,1],["SmokeShell",2,1],["9Rnd_45ACP_Mag",2,8],["SmokeShellGreen",2,1],["30Rnd_556x45_Stanag",8,30]]],[],"H_HelmetB_Light_tna_F","G_Balaclava_oli",["ACE_Vector","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter","NVGoggles_tna_F"]]
    };
    case "s6": {
        /// MG
        _unit setUnitLoadout [["LMG_03_F","muzzle_snds_H_MG_blk_F","ACE_acc_pointer_green","ACE_optic_MRCO_2D",["200Rnd_556x45_Box_F",200],[],""],[],["hgun_ACPC2_F","muzzle_snds_acp","acc_flashlight_pistol","",["9Rnd_45ACP_Mag",8],[],""],["U_B_T_Soldier_SL_F",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2],["ACE_microDAGR",1],["ACRE_PRC148",1]]],["V_PlateCarrier1_tna_F",[["ACE_splint",2],["SmokeShellGreen",1,1],["ACE_salineIV_500",2],["SmokeShell",2,1],["9Rnd_45ACP_Mag",2,8],["200Rnd_556x45_Box_F",2,200],["HandGrenade",2,1]]],[],"H_HelmetB_Light_tna_F","G_Balaclava_oli",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter","NVGoggles_tna_F"]]
    };
    case "s7": {
       /// GL + Schlepper
        _unit setUnitLoadout [["arifle_SPAR_01_GL_blk_F","muzzle_snds_M","ACE_acc_pointer_green","ACE_optic_MRCO_2D",["30Rnd_556x45_Stanag",30],["1Rnd_HE_Grenade_shell",1],""],[],["hgun_ACPC2_F","muzzle_snds_acp","acc_flashlight_pistol","",["9Rnd_45ACP_Mag",8],[],""],["U_B_T_Soldier_SL_F",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2],["ACE_microDAGR",1],["ACRE_PRC148",1]]],["V_PlateCarrier1_tna_F",[["ACE_salineIV_500",2],["ACE_splint",2],["HandGrenade",2,1],["SmokeShell",2,1],["30Rnd_556x45_Stanag",8,30],["9Rnd_45ACP_Mag",2,8],["1Rnd_HE_Grenade_shell",5,1]]],["B_AssaultPack_tna_F",[["NVGoggles_tna_F",1],["H_HelmetB_tna_F",1],["SmokeShell",2,1],["200Rnd_556x45_Box_F",1,200],["V_TacVest_oli",false]]],"H_HelmetB_Light_tna_F","G_Balaclava_oli",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter","NVGoggles_tna_F"]]
    };
    case "s8": {
        /// DMR
        _unit setUnitLoadout [["arifle_SPAR_03_blk_F","muzzle_snds_B","ACE_acc_pointer_green","optic_Nightstalker",["20Rnd_762x51_Mag",20],[],"bipod_01_F_blk"],[],["hgun_ACPC2_F","muzzle_snds_acp","acc_flashlight_pistol","",["9Rnd_45ACP_Mag",8],[],""],["U_B_T_Soldier_SL_F",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2],["ACE_microDAGR",1],["ACRE_PRC148",1]]],["V_PlateCarrier1_tna_F",[["ACE_salineIV_500",1],["ACE_splint",2],["ACE_Kestrel4500",1],["ACE_RangeCard",1],["SmokeShell",2,1],["9Rnd_45ACP_Mag",2,8],["20Rnd_762x51_Mag",6,20],["SmokeShellGreen",2,1],["HandGrenade",2,1]]],[],"H_HelmetB_Light_tna_F","G_Balaclava_oli",["ACE_Vector","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter","NVGoggles_tna_F"]];
        call compile preprocessFileLineNumbers "scripts\disableThermal.sqf"
    };
    case "s9": {
        /// HVT Dr. Kendricks
        _unit setUnitLoadout [[],[],["ACE_Flashlight_Maglite_ML300L","","","",[],[],""],["U_BG_Guerilla2_2",[["ACE_elasticBandage",4],["ACE_packingBandage",4],["ACE_epinephrine",1],["ACE_morphine",1],["ACE_tourniquet",2],["ACE_quikclot",2]]],[],[],"H_Booniehat_tan","G_Spectacles",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
        _unit setVariable ["ace_medical_medicClass", 2, true];
        [_unit] call compile preprocessFileLineNumbers "scripts\taskHVT.sqf"
    };
    case "s10": {
        /// GL - optional
        _unit setUnitLoadout [["arifle_SPAR_01_GL_blk_F","muzzle_snds_M","ACE_acc_pointer_green","ACE_optic_MRCO_2D",["30Rnd_556x45_Stanag",30],["1Rnd_HE_Grenade_shell",1],""],[],["hgun_ACPC2_F","muzzle_snds_acp","acc_flashlight_pistol","",["9Rnd_45ACP_Mag",8],[],""],["U_B_T_Soldier_SL_F",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2],["ACE_microDAGR",1],["ACRE_PRC148",1]]],["V_PlateCarrier1_tna_F",[["ACE_salineIV_500",2],["ACE_splint",2],["HandGrenade",2,1],["SmokeShell",2,1],["30Rnd_556x45_Stanag",8,30],["9Rnd_45ACP_Mag",2,8],["1Rnd_HE_Grenade_shell",5,1]]],[],"H_HelmetB_Light_tna_F","G_Balaclava_oli",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter","NVGoggles_tna_F"]]
    };
    case "s11": {
        /// GL - Optional
        _unit setUnitLoadout [["arifle_SPAR_01_GL_blk_F","muzzle_snds_M","ACE_acc_pointer_green","ACE_optic_MRCO_2D",["30Rnd_556x45_Stanag",30],["1Rnd_HE_Grenade_shell",1],""],[],["hgun_ACPC2_F","muzzle_snds_acp","acc_flashlight_pistol","",["9Rnd_45ACP_Mag",8],[],""],["U_B_T_Soldier_SL_F",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2],["ACE_microDAGR",1],["ACRE_PRC148",1]]],["V_PlateCarrier1_tna_F",[["ACE_salineIV_500",2],["ACE_splint",2],["HandGrenade",2,1],["SmokeShell",2,1],["30Rnd_556x45_Stanag",8,30],["9Rnd_45ACP_Mag",2,8],["1Rnd_HE_Grenade_shell",5,1]]],[],"H_HelmetB_Light_tna_F","G_Balaclava_oli",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter","NVGoggles_tna_F"]]
    };
    case "s12": {
        /// GL - Optional
        _unit setUnitLoadout [["arifle_SPAR_01_GL_blk_F","muzzle_snds_M","ACE_acc_pointer_green","ACE_optic_MRCO_2D",["30Rnd_556x45_Stanag",30],["1Rnd_HE_Grenade_shell",1],""],[],["hgun_ACPC2_F","muzzle_snds_acp","acc_flashlight_pistol","",["9Rnd_45ACP_Mag",8],[],""],["U_B_T_Soldier_SL_F",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2],["ACE_microDAGR",1],["ACRE_PRC148",1]]],["V_PlateCarrier1_tna_F",[["ACE_salineIV_500",2],["ACE_splint",2],["HandGrenade",2,1],["SmokeShell",2,1],["30Rnd_556x45_Stanag",8,30],["9Rnd_45ACP_Mag",2,8],["1Rnd_HE_Grenade_shell",5,1]]],[],"H_HelmetB_Light_tna_F","G_Balaclava_oli",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter","NVGoggles_tna_F"]]
    };
};

nil