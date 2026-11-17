private _unit = _this select 0;
private _klasse = typeOf _unit;

switch (_klasse) do {
    // Rifleman (3x)
    case "B_Soldier_F": {
        (_this select 0) setUnitLoadout [["CUP_arifle_M16A4_Base","","CUP_acc_ANPEQ_15_Top_Flashlight_Black_L","CUP_optic_RCO",["CUP_30Rnd_556x45_Stanag",30],[],""],[],["CUP_hgun_M9","","","",["CUP_15Rnd_9x19_M9",15],[],""],["CUP_U_B_USMC_MCCUU_des_pads_gloves",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2]]],["CUP_V_B_RRV_DA2_CB",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["HandGrenade",2,1],["SmokeShell",2,1],["ACE_key_lockpick",1],["CUP_30Rnd_556x45_Stanag",7,30],["CUP_15Rnd_9x19_M9",1,15]]],[],"CUP_H_LWHv2_MARPAT_des","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]]
    };

    // Grenadier (3x)
    case "B_Soldier_GL_F": {
        (_this select 0) setUnitLoadout [["CUP_arifle_M16A4_GL","","CUP_acc_ANPEQ_15_Top_Flashlight_Black_L","CUP_optic_RCO",["CUP_30Rnd_556x45_Stanag",30],[],""],[],["CUP_hgun_M9","","","",["CUP_15Rnd_9x19_M9",15],[],""],["CUP_U_B_USMC_MCCUU_des_pads_gloves",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["1Rnd_HE_Grenade_shell",2,1]]],["CUP_V_B_RRV_DA1_CB",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["HandGrenade",1,1],["SmokeShell",2,1],["CUP_15Rnd_9x19_M9",1,15],["CUP_30Rnd_556x45_Stanag",7,30],["1Rnd_HE_Grenade_shell",4,1]]],[],"CUP_H_LWHv2_MARPAT_des_NVG_gog2_cov2","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]]
    };

    // AR (3x)
    case "B_soldier_AR_F": {
        (_this select 0) setUnitLoadout [["CUP_lmg_M249_E2","","","",["CUP_100Rnd_TE4_Red_Tracer_556x45_M249",100],[],""],[],["CUP_hgun_M9","","","",["CUP_15Rnd_9x19_M9",15],[],""],["CUP_U_B_USMC_MCCUU_des_pads_gloves",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2]]],["CUP_V_B_RRV_DA2_CB",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["SmokeShell",2,1],["CUP_100Rnd_TE4_Red_Tracer_556x45_M249",2,100],["CUP_15Rnd_9x19_M9",1,15]]],["B_AssaultPack_cbr",[["CUP_100Rnd_TE4_Red_Tracer_556x45_M249",4,100]]],"CUP_H_LWHv2_MARPAT_des_NVG_gog2_cov2","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]]
    };

    // Teamlead (3x)
    case "B_Soldier_TL_F": {
        (_this select 0) setUnitLoadout [["CUP_arifle_M4A1_black","","CUP_acc_ANPEQ_15_Flashlight_Black_L","CUP_optic_MARS",["CUP_30Rnd_556x45_Stanag",30],[],""],[],["CUP_hgun_M9","","","",["CUP_15Rnd_9x19_M9",15],[],""],["CUP_U_B_USMC_MCCUU_des_pads_gloves",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_DAGR",1]]],["CUP_V_B_RRV_DA1_CB",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["ACE_key_lockpick",1],["HandGrenade",2,1],["SmokeShell",2,1],["CUP_15Rnd_9x19_M9",1,15],["CUP_30Rnd_556x45_Stanag",7,30]]],[],"CUP_H_LWHv2_MARPAT_des_NVG_gog2_cov2","",["ACE_VectorDay","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]]
    };

    // AT4 Rifleman (2x)
    case "B_soldier_LAT_F": {
        (_this select 0) setUnitLoadout [["CUP_arifle_M16A4_Base","","CUP_acc_ANPEQ_15_Top_Flashlight_Black_L","CUP_optic_RCO",["CUP_30Rnd_556x45_Stanag",30],[],""],["CUP_launch_M136_Loaded","","","",["CUP_M136_M",1],[],""],["CUP_hgun_M9","","","",["CUP_15Rnd_9x19_M9",15],[],""],["CUP_U_B_USMC_MCCUU_des_pads_gloves",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2]]],["CUP_V_B_RRV_DA1_CB",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["HandGrenade",2,1],["SmokeShell",2,1],["CUP_30Rnd_556x45_Stanag",7,30],["CUP_15Rnd_9x19_M9",1,15]]],[],"CUP_H_LWHv2_MARPAT_des_NVG_gog2_cov2","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]]
    };

    // CLS (1x)
    case "B_medic_F": {
        (_this select 0) setUnitLoadout [["CUP_arifle_M4A1_black","","","CUP_optic_CompM2_low",["CUP_30Rnd_556x45_Stanag",30],[],""],[],["CUP_hgun_M9","","","",["CUP_15Rnd_9x19_M9",15],[],""],["CUP_U_B_USMC_MCCUU_des_pads_gloves",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2]]],["CUP_V_B_RRV_DA2_CB",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["HandGrenade",2,1],["SmokeShell",2,1],["CUP_30Rnd_556x45_Stanag",7,30],["CUP_15Rnd_9x19_M9",1,15]]],["CUP_B_USPack_Coyote",[["ACE_elasticBandage",18],["ACE_packingBandage",5],["ACE_epinephrine",12],["ACE_morphine",8],["ACE_salineIV",4],["ACE_salineIV_250",8],["ACE_tourniquet",4],["ACE_splint",12],["ACE_personalAidKit",1],["ACE_surgicalKit",1]]],"CUP_H_LWHv2_MARPAT_des","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]]
    };

    // SQL (1x)
    case "B_officer_F": {
        (_this select 0) setUnitLoadout [["CUP_arifle_M4A1_black","","CUP_acc_ANPEQ_15_Flashlight_Black_L","CUP_optic_MARS",["CUP_30Rnd_556x45_Stanag",30],[],""],[],["CUP_hgun_M9","","","",["CUP_15Rnd_9x19_M9",15],[],""],["CUP_U_B_USMC_MCCUU_des_pads_gloves",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_DAGR",1]]],["CUP_V_B_RRV_DA1_CB",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["ACE_key_lockpick",1],["HandGrenade",2,1],["SmokeShell",2,1],["CUP_15Rnd_9x19_M9",1,15],["CUP_30Rnd_556x45_Stanag",7,30]]],[],"CUP_H_LWHv2_MARPAT_des_NVG_gog2_cov2","",["ACE_VectorDay","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]]
    };

    // Doc (1x)
    case "B_soldier_PG_F": {
        (_this select 0) setUnitLoadout [["CUP_arifle_M4A1_black","","","CUP_optic_CompM2_low",["CUP_30Rnd_556x45_Stanag",30],[],""],[],["CUP_hgun_M9","","","",["CUP_15Rnd_9x19_M9",15],[],""],["CUP_U_B_USMC_MCCUU_des_pads_gloves",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2]]],["CUP_V_B_RRV_DA2_CB",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["HandGrenade",2,1],["SmokeShell",2,1],["CUP_30Rnd_556x45_Stanag",7,30],["CUP_15Rnd_9x19_M9",1,15]]],["CUP_B_USPack_Coyote",[["ACE_elasticBandage",18],["ACE_packingBandage",5],["ACE_epinephrine",12],["ACE_morphine",8],["ACE_salineIV",4],["ACE_salineIV_250",8],["ACE_tourniquet",4],["ACE_splint",12],["ACE_personalAidKit",1],["ACE_surgicalKit",1]]],"CUP_H_LWHv2_MARPAT_des","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]]
    };

    // Nahsicherer (1x)
    case "B_Soldier_F": {
        (_this select 0) setUnitLoadout [["CUP_lmg_M249_E2","","","",["CUP_100Rnd_TE4_Red_Tracer_556x45_M249",100],[],""],[],["CUP_hgun_M9","","","",["CUP_15Rnd_9x19_M9",15],[],""],["CUP_U_B_USMC_MCCUU_des_pads_gloves",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2]]],["CUP_V_B_RRV_DA2_CB",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["SmokeShell",2,1],["CUP_100Rnd_TE4_Red_Tracer_556x45_M249",2,100],["CUP_15Rnd_9x19_M9",1,15]]],["B_AssaultPack_cbr",[["CUP_100Rnd_TE4_Red_Tracer_556x45_M249",4,100]]],"CUP_H_LWHv2_MARPAT_des_NVG_gog2_cov2","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]]
    };

};

nil


/*
Rifleman
[["CUP_arifle_M16A4_Base","","CUP_acc_ANPEQ_15_Top_Flashlight_Black_L","CUP_optic_RCO",["CUP_30Rnd_556x45_Stanag",30],[],""],[],["CUP_hgun_M9","","","",["CUP_15Rnd_9x19_M9",15],[],""],["CUP_U_B_USMC_MCCUU_des_pads_gloves",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2]]],["CUP_V_B_RRV_DA2_CB",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["HandGrenade",2,1],["SmokeShell",2,1],["CUP_30Rnd_556x45_Stanag",7,30],["CUP_15Rnd_9x19_M9",1,15]]],[],"CUP_H_LWHv2_MARPAT_des","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]]

AT4
[["CUP_arifle_M16A4_Base","","CUP_acc_ANPEQ_15_Top_Flashlight_Black_L","CUP_optic_RCO",["CUP_30Rnd_556x45_Stanag",30],[],""],["CUP_launch_M136_Loaded","","","",["CUP_M136_M",1],[],""],["CUP_hgun_M9","","","",["CUP_15Rnd_9x19_M9",15],[],""],["CUP_U_B_USMC_MCCUU_des_pads_gloves",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2]]],["CUP_V_B_RRV_DA1_CB",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["HandGrenade",2,1],["SmokeShell",2,1],["CUP_30Rnd_556x45_Stanag",7,30],["CUP_15Rnd_9x19_M9",1,15]]],[],"CUP_H_LWHv2_MARPAT_des_NVG_gog2_cov2","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]]

Grenadier
[["CUP_arifle_M16A4_GL","","CUP_acc_ANPEQ_15_Top_Flashlight_Black_L","CUP_optic_RCO",["CUP_30Rnd_556x45_Stanag",30],[],""],[],["CUP_hgun_M9","","","",["CUP_15Rnd_9x19_M9",15],[],""],["CUP_U_B_USMC_MCCUU_des_pads_gloves",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["1Rnd_HE_Grenade_shell",2,1]]],["CUP_V_B_RRV_DA1_CB",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["HandGrenade",1,1],["SmokeShell",2,1],["CUP_15Rnd_9x19_M9",1,15],["CUP_30Rnd_556x45_Stanag",7,30],["1Rnd_HE_Grenade_shell",4,1]]],[],"CUP_H_LWHv2_MARPAT_des_NVG_gog2_cov2","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]]

LMG
[["CUP_lmg_M249_E2","","","",["CUP_100Rnd_TE4_Red_Tracer_556x45_M249",100],[],""],[],["CUP_hgun_M9","","","",["CUP_15Rnd_9x19_M9",15],[],""],["CUP_U_B_USMC_MCCUU_des_pads_gloves",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2]]],["CUP_V_B_RRV_DA2_CB",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["SmokeShell",2,1],["CUP_100Rnd_TE4_Red_Tracer_556x45_M249",2,100],["CUP_15Rnd_9x19_M9",1,15]]],["B_AssaultPack_cbr",[["CUP_100Rnd_TE4_Red_Tracer_556x45_M249",4,100]]],"CUP_H_LWHv2_MARPAT_des_NVG_gog2_cov2","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]]

Team Lead
[["CUP_arifle_M4A1_black","","CUP_acc_ANPEQ_15_Flashlight_Black_L","CUP_optic_MARS",["CUP_30Rnd_556x45_Stanag",30],[],""],[],["CUP_hgun_M9","","","",["CUP_15Rnd_9x19_M9",15],[],""],["CUP_U_B_USMC_MCCUU_des_pads_gloves",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_DAGR",1]]],["CUP_V_B_RRV_DA1_CB",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["HandGrenade",2,1],["SmokeShell",2,1],["CUP_15Rnd_9x19_M9",1,15],["CUP_30Rnd_556x45_Stanag",7,30]]],[],"CUP_H_LWHv2_MARPAT_des_NVG_gog2_cov2","",["ACE_VectorDay","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]]

CLS
[["CUP_arifle_M4A1_black","","","CUP_optic_CompM2_low",["CUP_30Rnd_556x45_Stanag",30],[],""],[],["CUP_hgun_M9","","","",["CUP_15Rnd_9x19_M9",15],[],""],["CUP_U_B_USMC_MCCUU_des_pads_gloves",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2]]],["CUP_V_B_RRV_DA2_CB",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["HandGrenade",2,1],["SmokeShell",2,1],["CUP_30Rnd_556x45_Stanag",7,30],["CUP_15Rnd_9x19_M9",1,15]]],["CUP_B_USPack_Coyote",[["ACE_elasticBandage",18],["ACE_packingBandage",5],["ACE_epinephrine",12],["ACE_morphine",8],["ACE_salineIV",4],["ACE_salineIV_250",8],["ACE_tourniquet",4],["ACE_splint",12],["ACE_personalAidKit",1],["ACE_surgicalKit",1]]],"CUP_H_LWHv2_MARPAT_des","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]]
*/