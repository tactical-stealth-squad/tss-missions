private _unit = _this select 0;
private _klasse = vehicleVarName _unit;

private _helmet = selectrandom ["CUP_H_PASGTv2_winter", "CUP_H_CDF_H_PASGT_SNW"];

switch (_klasse) do {
    case "s1": {
        // FTL
        _unit setUnitLoadout [["CUP_arifle_Sa58P_woodland","","","",["CUP_30Rnd_Sa58_M",30],[],""],[],[],["CUP_U_B_CDF_SNW_2",[["ACE_quikclot",3],["ACE_elasticBandage",12],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_MapTools",1],["ACE_splint",2],["ACE_tourniquet",4],["ACE_salineIV_250",1]]],["CUP_V_CDF_6B3_3_SNW",[["ACRE_PRC148",1],["CUP_muzzle_snds_KZRZP_AK762_woodland",1],["ACRE_PRC152",1],["CUP_30Rnd_Sa58_M",10,30],["SmokeShell",2,1],["CUP_HandGrenade_RGD5",1,1]]],["CUP_B_CivPack_WDL",[["ACRE_PRC117F",1]]], _helmet,"CUP_G_ESS_BLK_Ember",["ACE_VectorDay","","","",[],[],""],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
    };
    case "s2": {
        // MMG (7.62)
        _unit setUnitLoadout [["CUP_lmg_Pecheneg_woodland","","","",["150Rnd_762x54_Box",150],[],""],[],[],["CUP_U_B_CDF_SNW_2",[["ACE_quikclot",3],["ACE_elasticBandage",12],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",4],["ACE_splint",2]]],["CUP_V_CDF_6B3_3_SNW",[["ACE_salineIV_250",1],["ACRE_PRC148",1],["CUP_HandGrenade_M67",2,1],["SmokeShell",2,1],["150Rnd_762x54_Box",2,150]]],[], _helmet,"CUP_G_ESS_BLK_Ember",[],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
    };
    case "s3": {
        // MG ASSI (UGL)
        _unit setUnitLoadout [["CUP_arifle_Sa58RIS2_gl_woodland","","CUP_acc_ANPEQ_2_Flashlight_OD_L","CUP_optic_1P87_RIS_woodland",["CUP_30Rnd_Sa58_M",30],["CUP_1Rnd_HEDP_M203",1],""],[],[],["CUP_U_B_CDF_SNW_2",[["ACE_quikclot",3],["ACE_elasticBandage",12],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",4],["ACE_splint",2]]],["CUP_V_CDF_6B3_4_SNW",[["ACE_salineIV_500",2],["ACRE_PRC148",1],["CUP_muzzle_snds_KZRZP_AK762_woodland",1],["SmokeShell",2,1],["SmokeShellPurple",2,1],["CUP_30Rnd_Sa58_M",8,30],["CUP_1Rnd_HEDP_M203",5,1]]],["CUP_B_CivPack_WDL",[["ACE_EntrenchingTool",1],["150Rnd_762x54_Box",4,150],["ACE_SpareBarrel",1,1]]], _helmet,"CUP_G_ESS_BLK_Ember",[],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
    };
    case "s4": {
        // SVD
        _unit setUnitLoadout [["CUP_srifle_SVD_wdl","CUP_muzzle_snds_KZRZP_SVD_woodland","CUP_SVD_camo_d","CUP_optic_PSO_3_open_pip",["CUP_10Rnd_762x54_SVD_M",10],[],""],[],[],["CUP_U_B_CDF_SNW_2",[["ACE_quikclot",3],["ACE_elasticBandage",12],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",4],["ACE_splint",2],["ACE_RangeCard",1],["ACE_MapTools",1]]],["CUP_V_CDF_6B3_2_SNW",[["ACRE_PRC148",1],["CUP_10Rnd_762x54_SVD_M",15,10],["SmokeShell",2,1]]],[], _helmet,"CUP_G_ESS_BLK_Ember",["ACE_VectorDay","","","",[],[],""],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
    };
    case "s5": {
       // Grenadier (9mm / RPG)
        _unit setUnitLoadout [["CUP_arifle_SR3M_Vikhr","","","",["CUP_30Rnd_9x39_SP5_VIKHR_M",30],[],""],["launch_RPG7_F","","","",["RPG7_F",1],[],""],[],["CUP_U_B_CDF_SNW_2",[["ACE_quikclot",3],["ACE_elasticBandage",12],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",4],["ACE_splint",2]]],["CUP_V_CDF_6B3_2_SNW",[["ACRE_PRC148",1],["CUP_muzzle_snds_SR3M",1],["SmokeShell",2,1],["CUP_30Rnd_9x39_SP5_VIKHR_M",6,30],["CUP_HandGrenade_RGD5",1,1]]],[], _helmet,"CUP_G_ESS_BLK_Ember",[],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
    };
    case "s6": {
        // Assistant Grenadier
        _unit setUnitLoadout [["CUP_arifle_Sa58RIS2_gl_woodland","","CUP_acc_ANPEQ_2_Flashlight_OD_L","CUP_optic_1P87_RIS_woodland",["CUP_30Rnd_Sa58_M",30],["CUP_1Rnd_HEDP_M203",1],""],[],[],["CUP_U_B_CDF_SNW_2",[["ACE_quikclot",3],["ACE_elasticBandage",12],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",4],["ACE_splint",2]]],["CUP_V_CDF_6B3_4_SNW",[["ACE_salineIV_500",2],["ACRE_PRC148",1],["CUP_muzzle_snds_KZRZP_AK762_woodland",1],["SmokeShell",2,1],["SmokeShellPurple",2,1],["CUP_30Rnd_Sa58_M",8,30],["CUP_1Rnd_HEDP_M203",5,1]]],["CUP_B_CivPack_WDL",[["RPG7_F",6,1]]], _helmet,"CUP_G_ESS_BLK_Ember",["ACE_VectorDay","","","",[],[],""],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
    };
    case "s7": {
        // Grenadier (9mm / RPG)
        _unit setUnitLoadout [["CUP_arifle_SR3M_Vikhr","","","",["CUP_30Rnd_9x39_SP5_VIKHR_M",30],[],""],["launch_RPG7_F","","","",["RPG7_F",1],[],""],[],["CUP_U_B_CDF_SNW_2",[["ACE_quikclot",3],["ACE_elasticBandage",12],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",4],["ACE_splint",2]]],["CUP_V_CDF_6B3_2_SNW",[["ACRE_PRC148",1],["CUP_muzzle_snds_SR3M",1],["SmokeShell",2,1],["CUP_30Rnd_9x39_SP5_VIKHR_M",6,30],["CUP_HandGrenade_RGD5",1,1]]],[], _helmet,"CUP_G_ESS_BLK_Ember",[],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
    };
    case "s8": {
        // Medic
        _unit setUnitLoadout [["CUP_arifle_Sa58P_woodland","","","",["CUP_30Rnd_Sa58_M",30],[],""],[],[],["CUP_U_B_CDF_SNW_2",[["ACE_quikclot",3],["ACE_elasticBandage",12],["ACE_CableTie",1],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",4],["ACE_splint",2],["CUP_muzzle_snds_KZRZP_AK762_woodland",1]]],["CUP_V_CDF_6B3_2_SNW",[["ACRE_PRC148",1],["SmokeShell",6,1],["CUP_HandGrenade_M67",2,1],["SmokeShellPurple",2,1],["CUP_30Rnd_Sa58_M",8,30]]],["CUP_B_CivPack_WDL",[["ACE_elasticBandage",20],["ACE_packingBandage",15],["ACE_quikclot",10],["ACE_epinephrine",15],["ACE_morphine",15],["ACE_splint",15],["ACE_salineIV",6],["ACE_salineIV_500",6],["ACE_tourniquet",4],["ACE_surgicalKit",1]]], _helmet,"CUP_G_ESS_BLK_Ember",[],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
        _unit setVariable ["ace_medical_medicClass", 2, true];
    };
    case "s9": {
    // Gunner BMP-2 (AKS)
        _unit setUnitLoadout [["CUP_arifle_SR3M_Vikhr","","","",["CUP_30Rnd_9x39_SP5_VIKHR_M",30],[],""],[],[],["CUP_U_B_CDF_SNW_2",[["ACE_splint",2],["ACE_tourniquet",4],["ACE_morphine",2],["ACE_MapTools",1],["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_quikclot",3],["ACE_epinephrine",2],["ACE_EarPlugs",1],["ACE_salineIV_250",1]]],["CUP_V_CDF_OfficerBelt",[["ACRE_PRC152",1],["ACRE_PRC148",1],["SmokeShell",1,1],["SmokeShellPurple",1,1],["CUP_30Rnd_9x39_SP5_VIKHR_M",2,30]]],[],"CUP_H_SLA_TankerHelmet","",["Binocular","","","",[],[],""],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
        ausruester addAction ["Umrüsten", {(_this select 0) removeAction (_this select 2); (_this select 1) setUnitLoadout [["CUP_arifle_Sa58RIS2_gl_woodland","","CUP_acc_ANPEQ_2_Flashlight_OD_L","CUP_optic_1P87_RIS_woodland",["CUP_30Rnd_Sa58_M",30],["CUP_1Rnd_HEDP_M203",1],""],[],[],["CUP_U_B_CDF_SNW_2",[["ACE_quikclot",3],["ACE_elasticBandage",12],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",4],["ACE_splint",2]]],["CUP_V_CDF_6B3_4_SNW",[["ACE_salineIV_500",2],["ACRE_PRC148",1],["CUP_muzzle_snds_KZRZP_AK762_woodland",1],["SmokeShell",2,1],["SmokeShellPurple",2,1],["CUP_30Rnd_Sa58_M",8,30],["CUP_1Rnd_HEDP_M203",5,1]]],[], "CUP_H_PASGTv2_winter","CUP_G_ESS_BLK_Ember",[],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]]; (_this select 0) setVariable ["ACE_IsEngineer", 0, true];}, nil, 1.5, true, true, "", "true", 7];
    };
    case "s10": {
    // Driver BMP-2 (AKS)
        _unit setUnitLoadout [["CUP_arifle_SR3M_Vikhr","","","",["CUP_30Rnd_9x39_SP5_VIKHR_M",30],[],""],[],[],["CUP_U_B_CDF_SNW_2",[["ACE_splint",2],["ACE_tourniquet",4],["ACE_morphine",2],["ACE_MapTools",1],["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_quikclot",3],["ACE_epinephrine",2],["ACE_EarPlugs",1],["ACE_salineIV_250",1]]],["CUP_V_CDF_OfficerBelt",[["ACRE_PRC152",1],["ACRE_PRC148",1],["SmokeShell",1,1],["SmokeShellPurple",1,1],["CUP_30Rnd_9x39_SP5_VIKHR_M",2,30]]],[],"CUP_H_SLA_TankerHelmet","",["Binocular","","","",[],[],""],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
        ausruester addAction ["Umrüsten", {(_this select 0) removeAction (_this select 2); (_this select 1) setUnitLoadout [["CUP_arifle_Sa58RIS2_gl_woodland","","CUP_acc_ANPEQ_2_Flashlight_OD_L","CUP_optic_1P87_RIS_woodland",["CUP_30Rnd_Sa58_M",30],["CUP_1Rnd_HEDP_M203",1],""],[],[],["CUP_U_B_CDF_SNW_2",[["ACE_quikclot",3],["ACE_elasticBandage",12],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",4],["ACE_splint",2]]],["CUP_V_CDF_6B3_4_SNW",[["ACE_salineIV_500",2],["ACRE_PRC148",1],["CUP_muzzle_snds_KZRZP_AK762_woodland",1],["SmokeShell",2,1],["SmokeShellPurple",2,1],["CUP_30Rnd_Sa58_M",8,30],["CUP_1Rnd_HEDP_M203",5,1]]],[], "CUP_H_CDF_H_PASGT_SNW","CUP_G_ESS_BLK_Ember",[],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]]; (_this select 0) setVariable ["ACE_IsEngineer", 0, true];}, nil, 1.5, true, true, "", "true", 7];
    };
    case "s11": {
        // Pilot (9mm)
        _unit setUnitLoadout [["","","","",[""],[],""],[],[],["",[[""],[""]]],["",[[""]]],[],"","",["","","","",[],[],""],["","","","","",""]];
    };
    case "s12": {
        // (Co-)Pilot (9mm)
        _unit setUnitLoadout [["","","","",[""],[],""],[],[],["",[[""],[""]]],["",[[""]]],[],"","",["","","","",[],[],""],["","","","","",""]];
    };
    case "s13": {
        // Bordschütze/Mechaniker (9mm)
        _unit setUnitLoadout [["","","","",[""],[],""],[],[],["",[[""],[""]]],["",[[""]]],[],"","",["","","","",[],[],""],["","","","","",""]];
        _unit setVariable ["ACE_IsEngineer", 2, true];
    };
    case "s14": {
        // Bordschütze/Mechaniker (9 mm)
        _unit setUnitLoadout [["","","","",[""],[],""],[],[],["",[[""],[""]]],["",[[""]]],[],"","",["","","","",[],[],""],["","","","","",""]];
        _unit setVariable ["ACE_IsEngineer", 2, true];
    };
    case "s15": {
        // Paramedic (9mm)
        _unit setUnitLoadout [["","","","",[""],[],""],[],[],["",[[""],[""]]],["",[[""]]],[],"","",["","","","",[],[],""],["","","","","",""]];
        _unit setVariable ["ace_medical_medicClass", 2, true];
    };
};

nil