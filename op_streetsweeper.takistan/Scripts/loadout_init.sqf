private _unit = _this select 0;
private _klasse = typeOf _unit;

switch (_klasse) do {
    case "CUP_B_BAF_Soldier_TeamLeader_DDPM": {
        /// FTL
        _unit setUnitLoadout [["CUP_arifle_L85A2_GL","","","CUP_optic_SUSAT",["CUP_30Rnd_556x45_Stanag_L85",30],["CUP_1Rnd_HEDP_M203",1],""],[],["CUP_hgun_Browning_HP","","","",["CUP_13Rnd_9x19_Browning_HP",13],[],""],["CUP_U_B_BAF_DDPM_UBACSROLLEDKNEE",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_quikclot",3],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_MapTools",1],["ACE_morphine",2],["ACE_splint",2],["ACE_tourniquet",4]]],["CUP_V_B_BAF_DDPM_Osprey_Mk3_Officer",[["ACRE_PRC343",1],["ACRE_PRC148",1],["CUP_HandGrenade_L109A2_HE",2,1],["SmokeShell",2,1],["SmokeShellGreen",2,1],["CUP_1Rnd_HEDP_M203",10,1],["CUP_30Rnd_556x45_Stanag_L85",10,30],["CUP_13Rnd_9x19_Browning_HP",1,13]]],[],"CUP_H_BAF_DDPM_Mk6_EMPTY_PRR","",["ACE_Vector","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]]
    };
    case "CUP_B_BAF_Soldier_AutoRifleman_DDPM": {
        /// AR - LMG
        _unit setUnitLoadout [["CUP_lmg_minimipara","","","",["CUP_200Rnd_TE4_Red_Tracer_556x45_L110A1",200],[],""],[],[],["CUP_U_B_BAF_DDPM_UBACSTSHIRTKNEE",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_quikclot",3],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_splint",2],["ACE_tourniquet",4]]],["CUP_V_B_BAF_DDPM_Osprey_Mk3_AutomaticRifleman",[["ACRE_PRC343",1],["CUP_200Rnd_TE4_Red_Tracer_556x45_L110A1",4,200],["CUP_HandGrenade_L109A2_HE",2,1],["SmokeShell",2,1],["SmokeShellGreen",2,1]]],[],"CUP_H_BAF_DDPM_Mk6_EMPTY","",[],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]]
    };
    case "CUP_B_BAF_Soldier_Grenadier_DDPM (s9)": {
       /// Grenadier
        _unit setUnitLoadout [["CUP_arifle_L85A2_GL_Elcan_Laser","","","CUP_optic_SUSAT",["CUP_30Rnd_556x45_Stanag_L85",30],["CUP_1Rnd_HEDP_M203",1],""],[],[],["CUP_U_B_BAF_DDPM_UBACSLONGKNEE",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_quikclot",3],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_splint",2],["ACE_tourniquet",4]]],["CUP_V_B_BAF_DDPM_Osprey_Mk3_Grenadier",[["ACRE_PRC343",1],["CUP_30Rnd_556x45_Stanag_L85",10,30],["SmokeShell",2,1],["CUP_1Rnd_HEDP_M203",15,1],["SmokeShellGreen",2,1]]],[],"CUP_H_BAF_DDPM_Mk6_EMPTY","",[],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]]
    };
    case "CUP_B_BAF_Soldier_RiflemanLAT_DDPM": {
        /// AT4
        _unit setUnitLoadout [["CUP_arifle_L85A2","","","CUP_optic_SUSAT",["CUP_30Rnd_556x45_Stanag_L85",30],[],""],["CUP_launch_M136_Loaded","","","",["CUP_M136_M",1],[],""],["CUP_hgun_Browning_HP","","","",["CUP_13Rnd_9x19_Browning_HP",13],[],""],["CUP_U_B_BAF_DDPM_UBACSLONGKNEE",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_quikclot",3],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_MapTools",1],["ACE_morphine",2],["ACE_splint",2],["ACE_tourniquet",4]]],["CUP_V_B_BAF_DDPM_Osprey_Mk3_Medic",[["ACRE_PRC343",1],["CUP_HandGrenade_L109A1_HE",2,1],["SmokeShellGreen",2,1],["SmokeShell",2,1],["CUP_13Rnd_9x19_Browning_HP",1,13],["CUP_30Rnd_556x45_Stanag_L85",10,30]]],[],"CUP_H_BAF_DDPM_Mk6_EMPTY","",["ACE_Vector","","","",[],[],""],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]]
    };
    case "CUP_B_BAF_Soldier_Explosive_DDPM": {
        /// explo
        _unit setUnitLoadout [["CUP_arifle_L85A2","","","CUP_optic_SUSAT",["CUP_30Rnd_556x45_Stanag_L85",30],[],""],[],["ACE_VMM3","","","",[],[],""],["CUP_U_B_BAF_DDPM_UBACSLONGKNEE",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_quikclot",3],["ACE_CableTie",2],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_splint",2],["ACE_tourniquet",4],["ACE_EarPlugs",1],["ACE_M26_Clacker",1]]],["CUP_V_B_BAF_DDPM_Osprey_Mk3_Engineer",[["ACRE_PRC343",1],["SmokeShellGreen",2,1],["SmokeShell",2,1],["CUP_30Rnd_556x45_Stanag_L85",8,30],["DemoCharge_Remote_Mag",4,1]]],[],"CUP_H_BAF_DDPM_Mk6_EMPTY","",[],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]]
    };
    case "CUP_B_BAF_Soldier_Medic_DDPM": {
        /// CLS
        _unit setUnitLoadout [["CUP_arifle_L85A2","","","CUP_optic_SUSAT",["CUP_30Rnd_556x45_Stanag_L85",30],[],""],[],["CUP_hgun_Browning_HP","","","",["CUP_13Rnd_9x19_Browning_HP",13],[],""],["CUP_U_B_BAF_DDPM_UBACSTSHIRTKNEE",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_quikclot",3],["ACE_CableTie",2],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_EarPlugs",1],["ACE_splint",2],["ACE_tourniquet",4]]],["CUP_V_B_BAF_DDPM_Osprey_Mk3_Medic",[["ACRE_PRC343",1],["SmokeShell",3,1],["CUP_HandGrenade_L109A2_HE",2,1],["SmokeShellGreen",3,1],["SmokeShellPurple",3,1],["CUP_13Rnd_9x19_Browning_HP",1,13],["CUP_30Rnd_556x45_Stanag_L85",10,30]]],["CUP_B_Bergen_BAF",[["ACE_elasticBandage",20],["ACE_packingBandage",15],["ACE_quikclot",8],["ACE_epinephrine",20],["ACE_morphine",20],["ACE_salineIV",5],["ACE_salineIV_500",6],["ACE_splint",15],["ACE_surgicalKit",1],["ACE_tourniquet",4]]],"CUP_H_BAF_DDPM_Mk6_EMPTY_PRR","",[],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
        _unit setVariable ["ace_medical_medicClass", 2, true]
    };
    case "CUP_B_BAF_Soldier_HeavyGunner_DDPM": {
        /// MMG
        _unit setUnitLoadout [["CUP_lmg_L7A2_Flat","","","",["150Rnd_762x51_Box",150],[],""],[],[],["CUP_U_B_BAF_DDPM_UBACSTSHIRTKNEE",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_quikclot",3],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_splint",2],["ACE_tourniquet",4]]],["CUP_V_B_BAF_DDPM_Osprey_Mk3_AutomaticRifleman",[["ACRE_PRC343",1],["150Rnd_762x51_Box",4,150]]],[],"CUP_H_BAF_DDPM_Mk6_EMPTY","",[],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]]
    };
};

nil