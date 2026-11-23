private _unit = _this select 0;
private _klasse = vehicleVarName _unit;

private _facewear = ["CUP_FR_NeckScarf", "CUP_FR_NeckScarf2", "CUP_FR_NeckScarf3", "CUP_FR_NeckScarf4", "CUP_G_ESS_RGR_Dark", "G_Shades_Black", ""];
private _uniform = ["CUP_U_B_USMC_MCCUU_M81_roll_2_pads_gloves", "CUP_U_B_USMC_MCCUU_M81_roll_pads_gloves"];

private _MG_Loadout = [
    [["CUP_arifle_RPK74","","","",["CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M",75],[],""],[],[],[selectrandom _uniform,[["ACE_elasticBandage",12],["ACE_packingBandage",5],["CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M",1,75]]],["CUP_V_B_Interceptor_Rifleman_Coyote",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_BF888S",1],["ACE_MapTools",1],["ACE_EarPlugs",1],["ACE_tourniquet",4],["ACE_quikclot",2],["ACE_epinephrine",3],["ACE_morphine",2],["HandGrenade",2,1],["SmokeShell",2,1],["CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M",1,75]]],["CUP_B_CivPack_WDL",[["CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M",10,75]]],"CUP_H_Ger_M92_RGR","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]],
    [["CUP_lmg_M240_B","","","",["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",100],[],""],[],[],[selectrandom _uniform,[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2]]],["CUP_V_B_Interceptor_Rifleman_Coyote",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_BF888S",1],["HandGrenade",2,1],["SmokeShell",2,1],["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",1,100]]],["CUP_B_CivPack_WDL",[["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",6,100]]],"CUP_H_Ger_M92_RGR","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]]
];

switch (_klasse) do {
    case "s1": {
        /// FTL
        _unit setUnitLoadout [["CUP_arifle_M4A3_black","","CUP_acc_ANPEQ_2_grey","CUP_optic_CompM2_low",["CUP_30Rnd_556x45_Stanag",30],[],""],[],["hgun_Pistol_01_F","","","",["10Rnd_9x21_Mag",10],[],""],[selectrandom _uniform,[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2],["CUP_30Rnd_556x45_Stanag",2,30]]],["CUP_V_B_Interceptor_Rifleman_Coyote",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_BF888S",1],["HandGrenade",2,1],["SmokeShell",2,1],["10Rnd_9x21_Mag",2,10],["CUP_30Rnd_556x45_Stanag",5,30]]],[],"CUP_H_Ger_M92_RGR",selectrandom _facewear,["Binocular","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]]
    };
    case "s2": {
        /// MG / RPK oder M240
        _unit setUnitLoadout selectrandom _MG_Loadout
    };
    case "s3": {
        /// GL
        _unit setUnitLoadout [["CUP_arifle_M16A2_GL","","","",["CUP_30Rnd_556x45_Stanag",30],["CUP_1Rnd_HEDP_M203",1],""],[],["hgun_Pistol_01_F","","","",["10Rnd_9x21_Mag",10],[],""],[selectrandom _uniform,[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2],["CUP_30Rnd_556x45_Stanag",2,30]]],["CUP_V_B_Interceptor_Grenadier_Coyote",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_BF888S",1],["HandGrenade",2,1],["SmokeShell",2,1],["10Rnd_9x21_Mag",2,10],["CUP_30Rnd_556x45_Stanag",5,30],["CUP_1Rnd_HEDP_M203",10,1]]],[],"CUP_H_Ger_M92_RGR",selectrandom _facewear,[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]]
    };
    case "s4": {
        /// CLS
        _unit setUnitLoadout [["CUP_arifle_M4A3_black","","CUP_acc_ANPEQ_2_grey","CUP_optic_CompM2_low",["CUP_30Rnd_556x45_Stanag",30],[],""],[],["hgun_Pistol_01_F","","","",["10Rnd_9x21_Mag",10],[],""],[selectrandom _uniform,[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2],["CUP_30Rnd_556x45_Stanag",2,30]]],["CUP_V_B_Interceptor_Rifleman_Coyote",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_BF888S",1],["HandGrenade",2,1],["SmokeShell",2,1],["10Rnd_9x21_Mag",2,10],["CUP_30Rnd_556x45_Stanag",5,30]]],["CUP_B_CivPack_WDL",[["ACE_elasticBandage",18],["ACE_tourniquet",4],["ACE_splint",12],["ACE_salineIV_250",2],["ACE_salineIV",4],["ACE_plasmaIV_500",4],["ACE_morphine",8],["ACE_epinephrine",12],["ACE_packingBandage",5],["ACE_personalAidKit",1],["ACE_surgicalKit",1]]],"CUP_H_Ger_M92_RGR",selectrandom _facewear,[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
        _unit setVariable ["ace_medical_medicClass", 2, true]
    };
    case "s5": {
        /// IED/Minedetector
        _unit setUnitLoadout [["CUP_arifle_M4A3_black","","CUP_acc_ANPEQ_2_grey","CUP_optic_CompM2_low",["CUP_30Rnd_556x45_Stanag",30],[],""],[],["hgun_Pistol_01_F","","","",["10Rnd_9x21_Mag",10],[],""],[selectrandom _uniform,[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2],["CUP_30Rnd_556x45_Stanag",2,30]]],["CUP_V_B_Interceptor_Rifleman_Coyote",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_BF888S",1],["MineDetector",1],["SmokeShell",2,1],["10Rnd_9x21_Mag",2,10],["CUP_30Rnd_556x45_Stanag",5,30]]],[],"CUP_H_Ger_M92_RGR",selectrandom _facewear,[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]]
    };
    case "s6": {
        /// Rifleman
        _unit setUnitLoadout [["CUP_arifle_M16A4_Base","","","CUP_optic_ACOG2",["CUP_30Rnd_556x45_Stanag",30],[],""],[],["hgun_Pistol_01_F","","","",["10Rnd_9x21_Mag",10],[],""],[selectrandom _uniform,[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2],["CUP_30Rnd_556x45_Stanag",2,30]]],["CUP_V_B_Interceptor_Rifleman_Coyote",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_BF888S",1],["HandGrenade",2,1],["SmokeShell",2,1],["CUP_30Rnd_556x45_Stanag",5,30],["10Rnd_9x21_Mag",2,10]]],[],"CUP_H_Ger_M92_RGR",selectrandom _facewear,[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]]
    };
    case "s7": {
       /// AKM/DMR
        _unit setUnitLoadout [["CUP_arifle_AKM","","","CUP_optic_PSO_1_AK_open",["CUP_30Rnd_762x39_AK47_M",30],[],""],[],[],[selectrandom _uniform,[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_quikclot",2],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_MapTools",1],["ACE_morphine",2],["CUP_30Rnd_762x39_AK47_M",2,30]]],["CUP_V_B_Interceptor_Grenadier_Coyote",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_BF888S",1],["ACE_tourniquet",4],["HandGrenade",2,1],["SmokeShell",2,1],["CUP_30Rnd_762x39_AK47_M",7,30]]],[],"CUP_H_Ger_M92_RGR",selectrandom _facewear,[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]]
    };
    case "s8": {
        /// RPG
        _unit setUnitLoadout [["CUP_arifle_M4A1_black","","","",["CUP_30Rnd_556x45_Stanag",30],[],""],["CUP_launch_RPG7V","","","",["CUP_PG7VL_M",1],[],""],[],[selectrandom _uniform,[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2],["CUP_30Rnd_556x45_Stanag",2,30]]],["CUP_V_B_Interceptor_Base_Coyote",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_BF888S",1],["HandGrenade",2,1],["SmokeShell",2,1],["CUP_30Rnd_556x45_Stanag",5,30]]],["CUP_B_CivPack_WDL",[["CUP_PG7VL_M",2,1]]],"CUP_H_Ger_M92_RGR",selectrandom _facewear,[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]]
    };
    case "s9": {
    /// GL - optional
    _unit setUnitLoadout [["CUP_arifle_M16A4_Base","","","CUP_optic_ACOG2",["CUP_30Rnd_556x45_Stanag",30],[],""],[],["hgun_Pistol_01_F","","","",["10Rnd_9x21_Mag",10],[],""],[selectrandom _uniform,[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2],["CUP_30Rnd_556x45_Stanag",2,30]]],["CUP_V_B_Interceptor_Rifleman_Coyote",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_BF888S",1],["HandGrenade",2,1],["SmokeShell",2,1],["CUP_30Rnd_556x45_Stanag",5,30],["10Rnd_9x21_Mag",2,10]]],[],"CUP_H_Ger_M92_RGR",selectrandom _facewear,[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]]
    };
    case "s10": {
    /// GL - Optional
    _unit setUnitLoadout [["CUP_arifle_M16A4_Base","","","CUP_optic_ACOG2",["CUP_30Rnd_556x45_Stanag",30],[],""],[],["hgun_Pistol_01_F","","","",["10Rnd_9x21_Mag",10],[],""],[selectrandom _uniform,[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_morphine",2],["CUP_30Rnd_556x45_Stanag",2,30]]],["CUP_V_B_Interceptor_Rifleman_Coyote",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_BF888S",1],["HandGrenade",2,1],["SmokeShell",2,1],["CUP_30Rnd_556x45_Stanag",5,30],["10Rnd_9x21_Mag",2,10]]],[],"CUP_H_Ger_M92_RGR",selectrandom _facewear,[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]]
    };
};

nil