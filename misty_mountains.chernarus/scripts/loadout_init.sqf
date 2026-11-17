private _unit = _this select 0;
private _klasse = vehicleVarName _unit;

switch (_klasse) do {
    case "s1": {
        /// FTL
        _unit setUnitLoadout [["CUP_arifle_Sa58P_woodland","","","",["CUP_30Rnd_Sa58_M",30],[],""],[],[],["CUP_U_B_CDF_MNT_1",[["ACE_quikclot",3],["ACE_elasticBandage",12],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_MapTools",1],["ACE_splint",2],["ACE_tourniquet",4],["ACE_salineIV_250",1]]],["CUP_V_CDF_6B3_4_MNT",[["ACRE_PRC148",1],["CUP_muzzle_snds_KZRZP_AK762_woodland",1],["ACRE_PRC152",1],["CUP_30Rnd_Sa58_M",10,30],["SmokeShell",2,1],["CUP_HandGrenade_RGD5",1,1]]],[],"CUP_H_CDF_H_PASGT_MNT","CUP_G_ESS_BLK_Ember",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]]
    };
    case "s2": {
        /// MMG (7.62)
        _unit setUnitLoadout [["CUP_lmg_Pecheneg_woodland","","","",["150Rnd_762x54_Box",150],[],""],[],[],["CUP_U_B_CDF_MNT_1",[["ACE_quikclot",3],["ACE_elasticBandage",12],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",4],["ACE_splint",2],["CUP_muzzle_snds_KZRZP_PK_woodland",1]]],["CUP_V_CDF_6B3_3_MNT",[["ACE_salineIV_250",1],["ACRE_PRC148",1],["CUP_HandGrenade_M67",2,1],["SmokeShell",2,1],["150Rnd_762x54_Box",2,150]]],[],"CUP_H_CDF_H_PASGT_MNT","CUP_G_ESS_BLK_Ember",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]]
    };
    case "s3": {
        /// MG ASSI (UGL)
        _unit setUnitLoadout [["CUP_arifle_Sa58RIS2_gl_woodland","","","",["CUP_30Rnd_Sa58_M",30],["CUP_1Rnd_HEDP_M203",1],""],[],[],["CUP_U_B_CDF_MNT_1",[["ACE_quikclot",3],["ACE_elasticBandage",12],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",4],["ACE_splint",2]]],["CUP_V_CDF_6B3_2_MNT",[["ACE_salineIV_500",2],["ACRE_PRC148",1],["CUP_muzzle_snds_KZRZP_AK762_woodland",1],["SmokeShell",2,1],["SmokeShellPurple",2,1],["CUP_30Rnd_Sa58_M",8,30],["CUP_1Rnd_HEDP_M203",5,1]]],["CUP_B_CivPack_WDL",[["ACE_EntrenchingTool",1],["150Rnd_762x54_Box",4,150],["ACE_SpareBarrel",1,1]]],"CUP_H_CDF_H_PASGT_MNT","CUP_G_ESS_BLK_Ember",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]]
    };
    case "s4": {
        /// Schütze
        _unit setUnitLoadout [["CUP_arifle_Sa58P_woodland","","","",["CUP_30Rnd_Sa58_M",30],[],""],[],[],["CUP_U_B_CDF_MNT_1",[["ACE_quikclot",3],["ACE_elasticBandage",12],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_MapTools",1],["ACE_splint",2],["ACE_tourniquet",4],["ACE_salineIV_250",1]]],["CUP_V_CDF_6B3_4_MNT",[["ACRE_PRC148",1],["CUP_muzzle_snds_KZRZP_AK762_woodland",1],["CUP_30Rnd_Sa58_M",10,30],["SmokeShell",2,1],["CUP_HandGrenade_RGD5",1,1]]],[],"CUP_H_CDF_H_PASGT_MNT","CUP_G_ESS_BLK_Ember",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]]
    };
    case "s5": {
       /// Grenadier (9mm / RPG)
        _unit setUnitLoadout [["CUP_arifle_SR3M_Vikhr","","","",["CUP_30Rnd_9x39_SP5_VIKHR_M",30],[],""],["launch_RPG7_F","","","",["RPG7_F",1],[],""],[],["CUP_U_B_CDF_MNT_1",[["ACE_quikclot",3],["ACE_elasticBandage",12],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",4],["ACE_splint",2]]],["CUP_V_CDF_6B3_2_MNT",[["ACRE_PRC148",1],["CUP_muzzle_snds_SR3M",1],["SmokeShell",2,1],["CUP_30Rnd_9x39_SP5_VIKHR_M",6,30],["CUP_HandGrenade_RGD5",1,1]]],[],"CUP_H_CDF_H_PASGT_MNT","CUP_G_ESS_BLK_Ember",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]]
    };
    case "s6": {
        /// Assistant Grenadier
        _unit setUnitLoadout [["CUP_arifle_Sa58P_woodland","","","",["CUP_30Rnd_Sa58_M",30],[],""],[],[],["CUP_U_B_CDF_MNT_1",[["ACE_quikclot",3],["ACE_elasticBandage",12],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",4],["ACE_splint",2],["CUP_muzzle_snds_KZRZP_AK762_woodland",1]]],["CUP_V_CDF_6B3_2_MNT",[["ACRE_PRC148",1],["ACE_salineIV_500",2],["SmokeShell",2,1],["SmokeShellGreen",2,1],["CUP_30Rnd_Sa58_M",8,30],["CUP_HandGrenade_RGD5",2,1]]],["CUP_B_CivPack_WDL",[["RPG7_F",5,1],["CUP_30Rnd_Sa58_M",5,30]]],"CUP_H_CDF_H_PASGT_MNT","CUP_G_ESS_BLK_Ember",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]]
    };
    case "s7": {
        /// Explo
        _unit setUnitLoadout [["CUP_arifle_Sa58P_woodland","","","",["CUP_30Rnd_Sa58_M",30],[],""],[],[],["CUP_U_B_CDF_MNT_1",[["ACE_quikclot",3],["ACE_elasticBandage",12],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_MapTools",1],["ACE_splint",2],["ACE_tourniquet",4],["ACE_salineIV_250",1]]],["CUP_V_CDF_6B3_2_MNT",[["ACRE_PRC148",1],["CUP_muzzle_snds_KZRZP_AK762_woodland",1],["CUP_30Rnd_Sa58_M",10,30],["SmokeShell",2,1],["CUP_HandGrenade_RGD5",1,1]]],["CUP_B_CivPack_WDL",[["ACE_DefusalKit",1],["ACE_M26_Clacker",1],["MineDetector",1],["DemoCharge_Remote_Mag",2,1],["ATMine_Range_Mag",1,1],["SatchelCharge_Remote_Mag",1,1]]],"CUP_H_CDF_H_PASGT_MNT","CUP_G_ESS_BLK_Ember",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]]
    };
    case "s8": {
        /// Medic
        _unit setUnitLoadout [["CUP_arifle_Sa58P_woodland","","","",["CUP_30Rnd_Sa58_M",30],[],""],[],[],["CUP_U_B_CDF_MNT_1",[["ACE_quikclot",3],["ACE_elasticBandage",12],["ACE_CableTie",1],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",4],["ACE_splint",2],["CUP_muzzle_snds_KZRZP_AK762_woodland",1]]],["CUP_V_CDF_6B3_2_MNT",[["ACRE_PRC148",1],["SmokeShell",6,1],["CUP_HandGrenade_M67",2,1],["SmokeShellPurple",2,1],["CUP_30Rnd_Sa58_M",8,30]]],["CUP_B_CivPack_WDL",[["ACE_elasticBandage",20],["ACE_packingBandage",15],["ACE_quikclot",10],["ACE_epinephrine",15],["ACE_morphine",15],["ACE_splint",15],["ACE_salineIV",6],["ACE_salineIV_500",6],["ACE_tourniquet",4],["ACE_surgicalKit",1]]],"CUP_H_CDF_H_PASGT_MNT","CUP_G_ESS_BLK_Ember",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
        _unit setVariable ["ace_medical_medicClass", 2, true]
    };
    case "s9": {
        /// Schütze - OPTIONAL
        _unit setUnitLoadout [["CUP_arifle_Sa58P_woodland","","","",["CUP_30Rnd_Sa58_M",30],[],""],[],[],["CUP_U_B_CDF_MNT_2",[["ACE_quikclot",3],["ACE_elasticBandage",12],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_MapTools",1],["ACE_splint",2],["ACE_tourniquet",4],["ACE_salineIV_250",1]]],["CUP_V_CDF_6B3_4_MNT",[["ACRE_PRC148",1],["CUP_muzzle_snds_KZRZP_AK762_woodland",1],["CUP_30Rnd_Sa58_M",10,30],["SmokeShell",2,1],["CUP_HandGrenade_RGD5",1,1]]],[],"CUP_H_CDF_H_PASGT_MNT","CUP_G_ESS_BLK_Ember",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]]
    };
        case "s10": {
        /// Schütze - OPTIONAL
        _unit setUnitLoadout [["CUP_arifle_Sa58P_woodland","","","",["CUP_30Rnd_Sa58_M",30],[],""],[],[],["CUP_U_B_CDF_MNT_2",[["ACE_quikclot",3],["ACE_elasticBandage",12],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_MapTools",1],["ACE_splint",2],["ACE_tourniquet",4],["ACE_salineIV_250",1]]],["CUP_V_CDF_6B3_4_MNT",[["ACRE_PRC148",1],["CUP_muzzle_snds_KZRZP_AK762_woodland",1],["CUP_30Rnd_Sa58_M",10,30],["SmokeShell",2,1],["CUP_HandGrenade_RGD5",1,1]]],[],"CUP_H_CDF_H_PASGT_MNT","CUP_G_ESS_BLK_Ember",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]]
    };
};

nil