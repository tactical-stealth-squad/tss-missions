private _unit = _this select 0;
private _klasse = vehicleVarName _unit;

switch (_klasse) do {
    case "s1": {
        /// FTL
        _unit setUnitLoadout [["CUP_arifle_AKMN_railed_desert","","CUP_acc_Flashlight_desert","",["CUP_30Rnd_762x39_AKM_bakelite_desert_M",30],[],""],[],["hgun_Rook40_F","","","",["16Rnd_9x21_Mag",17],[],""],["CUP_U_O_RUS_Ratnik_BeigeDigital",[["ACE_quikclot",3],["ACE_elasticBandage",12],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_splint",2],["ACE_microDAGR",1]]],["CUP_Vest_RUS_6B45_Sh117_Del_Nut_BeigeDigital",[["ACRE_PRC148",1],["ACRE_PRC152",1],["ACE_salineIV_500",2],["SmokeShell",2,1],["16Rnd_9x21_Mag",1,17],["CUP_30Rnd_762x39_AKM_bakelite_desert_M",8,30],["SmokeShellGreen",2,1],["CUP_HandGrenade_RGD5",2,1]]],[],"CUP_H_RUS_6B47_v2_BeigeDigital","CUP_G_ESS_CBR",["ACE_Vector","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
    };
    case "s2": {
        /// MG
        _unit setUnitLoadout [["CUP_lmg_Pecheneg_desert","","","",["150Rnd_762x54_Box",150],[],""],[],["hgun_Rook40_F","","","",["16Rnd_9x21_Mag",17],[],""],["CUP_U_O_RUS_Ratnik_BeigeDigital",[["ACE_quikclot",3],["ACE_elasticBandage",5],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",12],["ACE_splint",2],["ACE_tourniquet",2],["ACE_microDAGR",1],["SmokeShell",1,1]]],["CUP_Vest_RUS_6B45_Sh117_PKP_Del_Nut_BeigeDigital",[["ACRE_PRC148",1],["150Rnd_762x54_Box",3,150]]],[],"CUP_H_RUS_6B47_v2_BeigeDigital","CUP_G_ESS_CBR",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
    };
    case "s3": {
        /// MG ASSI
        _unit setUnitLoadout [["CUP_arifle_AK103_GL_railed","","CUP_acc_Flashlight","",["CUP_30Rnd_762x39_AK103_bakelite_M",30],["CUP_1Rnd_HE_GP25_M",1],""],[],["hgun_Rook40_F","","","",["16Rnd_9x21_Mag",17],[],""],["CUP_U_O_RUS_Ratnik_BeigeDigital",[["ACE_quikclot",3],["ACE_elasticBandage",12],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",4],["ACE_splint",2],["ACE_microDAGR",1]]],["CUP_Vest_RUS_6B45_Sh117_VOG_Del_Nut_BeigeDigital",[["ACRE_PRC148",1],["ACE_salineIV_500",2],["SmokeShell",2,1],["CUP_HandGrenade_RGD5",2,1],["SmokeShellGreen",2,1],["CUP_30Rnd_762x39_AK103_bakelite_M",3,30],["CUP_1Rnd_HE_GP25_M",5,1],["16Rnd_9x21_Mag",1,17]]],["CUP_O_RUS_Patrol_bag_BeigeDigital",[["ACE_EntrenchingTool",1],["150Rnd_762x54_Box",3,150],["CUP_30Rnd_762x39_AK103_bakelite_M",5,30],["CUP_1Rnd_HE_GP25_M",5,1]]],"CUP_H_RUS_6B47_v2_BeigeDigital","CUP_G_ESS_CBR",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
    };
    case "s4": {
        /// DMR (AT Assi)
        _unit setUnitLoadout [["CUP_srifle_SVD_des","CUP_muzzle_snds_KZRZP_SVD_desert","","CUP_optic_PSO_1_open",["CUP_10Rnd_762x54_SVD_M",10],[],""],[],["hgun_Rook40_F","","","",["16Rnd_9x21_Mag",17],[],""],["CUP_U_O_RUS_Ratnik_BeigeDigital",[["ACE_quikclot",5],["ACE_elasticBandage",12],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",4],["ACE_splint",2],["ACE_MapTools",1],["ACE_RangeCard",1],["ACE_microDAGR",1]]],["CUP_Vest_RUS_6B45_Sh117_BeigeDigital",[["ACRE_PRC148",1],["ACE_salineIV_500",2],["SmokeShell",2,1],["CUP_HandGrenade_RGD5",2,1],["CUP_10Rnd_762x54_SVD_M",8,10],["16Rnd_9x21_Mag",2,17],["SmokeShellGreen",2,1]]],["CUP_O_RUS_Patrol_bag_BeigeDigital",[["CUP_10Rnd_762x54_SVD_M",22,10],["CUP_AT13_M",1,1]]],"CUP_H_RUS_6B47_v2_BeigeDigital","CUP_G_ESS_CBR",["ACE_Vector","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
    };
    case "s5": {
       /// AT Schütze
        _unit setUnitLoadout [["arifle_AKS_F","","","",["30Rnd_545x39_Mag_F",30],[],""],["CUP_launch_Metis","","","",["CUP_AT13_M",1],[],""],["hgun_Rook40_F","","","",["16Rnd_9x21_Mag",17],[],""],["CUP_U_O_RUS_Ratnik_BeigeDigital",[["ACE_quikclot",3],["ACE_elasticBandage",12],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",4],["ACE_splint",2],["ACE_microDAGR",1]]],["CUP_Vest_RUS_6B45_Sh117_BeigeDigital",[["ACE_salineIV_500",2],["ACRE_PRC148",1],["SmokeShell",2,1],["SmokeShellGreen",2,1],["CUP_HandGrenade_RGD5",2,1],["16Rnd_9x21_Mag",1,17],["30Rnd_545x39_Mag_F",8,30]]],[],"CUP_H_RUS_6B47_v2_BeigeDigital","CUP_G_ESS_CBR",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
    };
    case "s6": {
        /// AT ASSI // Grenadier
        _unit setUnitLoadout [["CUP_arifle_AK103_GL_railed","","CUP_acc_Flashlight","",["CUP_30Rnd_762x39_AK103_bakelite_M",30],["CUP_1Rnd_HE_GP25_M",1],""],[],["hgun_Rook40_F","","","",["16Rnd_9x21_Mag",17],[],""],["CUP_U_O_RUS_Ratnik_BeigeDigital",[["ACE_quikclot",3],["ACE_elasticBandage",12],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",4],["ACE_splint",2],["ACE_microDAGR",1]]],["CUP_Vest_RUS_6B45_Sh117_VOG_BeigeDigital",[["ACRE_PRC148",1],["ACE_salineIV_500",2],["SmokeShell",2,1],["CUP_1Rnd_HE_GP25_M",5,1],["SmokeShellGreen",2,1],["CUP_HandGrenade_RGD5",2,1],["CUP_30Rnd_762x39_AK103_bakelite_M",4,30],["16Rnd_9x21_Mag",1,17]]],["CUP_O_RUS_Patrol_bag_BeigeDigital",[["ACE_EntrenchingTool",1],["CUP_AT13_M",1,1],["CUP_1Rnd_HE_GP25_M",10,1],["CUP_30Rnd_762x39_AK103_bakelite_M",6,30]]],"CUP_H_RUS_6B47_v2_BeigeDigital","CUP_G_ESS_CBR",["ACE_Vector","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
    };
    case "s7": {
        /// Demo
        _unit setUnitLoadout [["CUP_arifle_AKMN_railed_desert","","CUP_acc_Flashlight_desert","",["CUP_30Rnd_762x39_AKM_bakelite_desert_M",30],[],""],[],["hgun_Rook40_F","","","",["16Rnd_9x21_Mag",17],[],""],["CUP_U_O_RUS_Ratnik_BeigeDigital",[["ACE_quikclot",3],["ACE_elasticBandage",12],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_MapTools",1],["ACE_tourniquet",4],["ACE_splint",2],["ACE_microDAGR",1]]],["CUP_Vest_RUS_6B45_Sh117_BeigeDigital",[["ACRE_PRC148",1],["SmokeShell",2,1],["CUP_HandGrenade_RGD5",2,1],["SmokeShellGreen",2,1],["16Rnd_9x21_Mag",1,17],["CUP_30Rnd_762x39_AKM_bakelite_desert_M",8,30]]],["CUP_O_RUS_Patrol_bag_BeigeDigital",[["ACE_DefusalKit",1],["ACE_M26_Clacker",1],["IEDLandSmall_Remote_Mag",1,1],["DemoCharge_Remote_Mag",1,1],["CUP_30Rnd_762x39_AKM_bakelite_desert_M",2,30],["SatchelCharge_Remote_Mag",1,1],["CUP_IED_V4_M",1,1]]],"CUP_H_RUS_6B47_v2_BeigeDigital","CUP_G_ESS_CBR",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
    };
    case "s8": {
        /// Medic
        _unit setUnitLoadout [["CUP_arifle_AKMN_railed_desert","","CUP_acc_Flashlight_desert","",["CUP_30Rnd_762x39_AKM_bakelite_desert_M",30],[],""],[],["hgun_Rook40_F","","","",["16Rnd_9x21_Mag",17],[],""],["CUP_U_O_RUS_Ratnik_BeigeDigital",[["ACE_quikclot",3],["ACE_elasticBandage",12],["ACE_CableTie",1],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",4],["ACE_splint",2],["ACE_microDAGR",1]]],["CUP_Vest_RUS_6B45_Sh117_BeigeDigital",[["ACRE_PRC148",1],["SmokeShell",4,1],["CUP_HandGrenade_RGD5",2,1],["CUP_30Rnd_762x39_AKM_bakelite_desert_M",8,30],["16Rnd_9x21_Mag",1,17],["SmokeShellGreen",2,1]]],["CUP_O_RUS_Patrol_bag_BeigeDigital",[["ACE_elasticBandage",15],["ACE_quikclot",10],["ACE_packingBandage",20],["ACE_surgicalKit",1],["ACE_tourniquet",4],["ACE_salineIV_500",5],["ACE_morphine",20],["ACE_epinephrine",20],["ACE_splint",15],["ACE_salineIV",5],["ACE_personalAidKit",1],["CUP_30Rnd_762x39_AKM_bakelite_desert_M",2,30]]],"CUP_H_RUS_6B47_v2_BeigeDigital","CUP_G_ESS_CBR",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
        _unit setVariable ["ace_medical_medicClass", 2, true];
    };

    case "s9": {
        /// BTR Gunner / Lead
        _unit setUnitLoadout [["arifle_AKS_F","","","",["30Rnd_545x39_Mag_F",30],[],""],[],[],["CUP_U_O_RUS_BeigeDigital_MSV",[["ACE_quikclot",3],["ACE_elasticBandage",12],["ACE_CableTie",1],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_MapTools",1],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",4],["ACE_splint",2],["ACE_microDAGR",1],["ACRE_PRC148",1],["SmokeShellPurple",2,1]]],["CUP_V_CPC_light_mc",[["ACE_salineIV_500",2],["ACRE_PRC152",1],["SmokeShell",2,1],["30Rnd_545x39_Mag_F",3,30]]],[],"CUP_H_RUS_TSH_4_Brown","CUP_G_ESS_CBR",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
        _unit setVariable ["ìsEngineer", 2, true];
    };
    case "s10": {
        /// BTR Driver
        _unit setUnitLoadout [["arifle_AKS_F","","","",["30Rnd_545x39_Mag_F",30],[],""],[],[],["CUP_U_O_RUS_BeigeDigital_MSV",[["ACE_quikclot",3],["ACE_elasticBandage",12],["ACE_CableTie",1],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_MapTools",1],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",4],["ACE_splint",2],["ACE_microDAGR",1],["ACRE_PRC148",1],["SmokeShellPurple",2,1]]],["CUP_V_CPC_light_mc",[["ACE_salineIV_500",2],["SmokeShell",2,1],["30Rnd_545x39_Mag_F",3,30]]],["B_AssaultPack_mcamo",[["ToolKit",1]]],"CUP_H_RUS_TSH_4_Brown","CUP_G_ESS_CBR",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
        _unit setVariable ["ìsEngineer", 2, true];
    };

    case "s11": {
        /// Optional: UGL / Ammo Schlepper
        _unit setUnitLoadout [["CUP_arifle_AK103_GL_railed","","CUP_acc_Flashlight","",["CUP_30Rnd_762x39_AK103_bakelite_M",30],["CUP_1Rnd_HE_GP25_M",1],""],[],["hgun_Rook40_F","","","",["16Rnd_9x21_Mag",17],[],""],["CUP_U_O_RUS_Ratnik_BeigeDigital",[["ACE_quikclot",3],["ACE_elasticBandage",12],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",4],["ACE_splint",2],["ACE_microDAGR",1]]],["CUP_Vest_RUS_6B45_Sh117_VOG_BeigeDigital",[["ACE_salineIV_500",2],["ACRE_PRC148",1],["SmokeShell",2,1],["CUP_1Rnd_HE_GP25_M",5,1],["SmokeShellGreen",2,1],["CUP_HandGrenade_RGD5",2,1],["CUP_30Rnd_762x39_AK103_bakelite_M",4,30],["16Rnd_9x21_Mag",1,17]]],["CUP_O_RUS_Patrol_bag_BeigeDigital",[["CUP_1Rnd_HE_GP25_M",10,1],["CUP_30Rnd_762x39_AK103_bakelite_M",8,30],["150Rnd_762x54_Box",1,150],["CUP_30Rnd_762x39_AKM_bakelite_desert_M",4,30]]],"CUP_H_RUS_6B47_v2_BeigeDigital","CUP_G_ESS_CBR",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
    };
    
    case "s12": {
        /// Optional: UGL / Ammo Schlepper
        _unit setUnitLoadout [["CUP_arifle_AK103_GL_railed","","CUP_acc_Flashlight","",["CUP_30Rnd_762x39_AK103_bakelite_M",30],["CUP_1Rnd_HE_GP25_M",1],""],[],["hgun_Rook40_F","","","",["16Rnd_9x21_Mag",17],[],""],["CUP_U_O_RUS_Ratnik_BeigeDigital",[["ACE_quikclot",3],["ACE_elasticBandage",12],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",4],["ACE_splint",2],["ACE_microDAGR",1]]],["CUP_Vest_RUS_6B45_Sh117_VOG_BeigeDigital",[["ACE_salineIV_500",2],["ACRE_PRC148",1],["SmokeShell",2,1],["CUP_1Rnd_HE_GP25_M",5,1],["SmokeShellGreen",2,1],["CUP_HandGrenade_RGD5",2,1],["CUP_30Rnd_762x39_AK103_bakelite_M",4,30],["16Rnd_9x21_Mag",1,17]]],["CUP_O_RUS_Patrol_bag_BeigeDigital",[["CUP_1Rnd_HE_GP25_M",10,1],["CUP_30Rnd_762x39_AK103_bakelite_M",8,30],["150Rnd_762x54_Box",1,150],["CUP_30Rnd_762x39_AKM_bakelite_desert_M",4,30]]],"CUP_H_RUS_6B47_v2_BeigeDigital","CUP_G_ESS_CBR",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
    };
};

nil