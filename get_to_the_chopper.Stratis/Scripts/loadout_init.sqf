private _unit = _this select 0;
private _klasse = vehicleVarName _unit;

switch (_klasse) do {
    case "s1": {
        /// FTL
        _unit setUnitLoadout [["arifle_AK12_GL_F","muzzle_snds_B","acc_flashlight","optic_hamr",["30Rnd_762x39_AK12_Mag_F",30],["ACE_HuntIR_M203",1],""],[],["hgun_Pistol_01_F","","","",["10Rnd_9x21_Mag",10],[],""],["U_B_CombatUniform_mcam",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_tourniquet",4],["ACE_EarPlugs",1],["ACE_microDAGR",1],["ACRE_PRC148",1]]],["V_PlateCarrier1_rgr_noflag_F",[["ACE_key_lockpick",1],["ACE_splint",2],["ACRE_PRC152",1],["ACE_HuntIR_monitor",1],["SmokeShell",2,1],["10Rnd_9x21_Mag",1,10],["SmokeShellGreen",2,1],["30Rnd_762x39_AK12_Mag_F",8,30],["ACE_HuntIR_M203",2,1]]],[],"H_HelmetSpecB_snakeskin","G_Balaclava_blk",["ACE_Vector","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","NVGoggles"]]
    };
    case "s2": {
        /// MG - Contact + Law & war
        _unit setUnitLoadout [["arifle_RPK12_F","muzzle_snds_B","acc_flashlight","optic_ACO_grn",["75rnd_762x39_AK12_Mag_F",75],[],""],[],["hgun_Pistol_01_F","","","",["10Rnd_9x21_Mag",10],[],""],["U_B_CombatUniform_mcam",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_tourniquet",4],["ACE_EarPlugs",1],["ACE_microDAGR",1],["ACRE_PRC148",1]]],["V_CarrierRigKBT_01_light_EAF_F",[["ACE_splint",2],["75rnd_762x39_AK12_Mag_F",4,75],["10Rnd_9x21_Mag",2,10],["SmokeShell",2,1],["MiniGrenade",1,1]]],["B_LegStrapBag_black_F",[["75rnd_762x39_AK12_Mag_F",3,75]]],"H_HelmetSpecB_snakeskin","G_Balaclava_blk",["","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","NVGoggles"]]
    };
    case "s3": {
       /// AT-Assi - Contact + Law & war
        _unit setUnitLoadout [["arifle_AK12_F","muzzle_snds_B","acc_flashlight","optic_hamr",["30Rnd_762x39_AK12_Mag_F",30],[],""],[],["hgun_Pistol_01_F","","","",["10Rnd_9x21_Mag",10],[],""],["U_B_CombatUniform_mcam",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_tourniquet",4],["ACE_EarPlugs",1],["ACE_microDAGR",1],["ACRE_PRC148",1]]],["V_PlateCarrier2_rgr_noflag_F",[["ACE_splint",2],["10Rnd_9x21_Mag",2,10],["SmokeShell",2,1],["HandGrenade",2,1],["SmokeShellGreen",2,1],["30Rnd_762x39_AK12_Mag_F",8,30]]],["B_FieldPack_oli",[["Vorona_HEAT",2,1]]],"H_HelmetSpecB_snakeskin","G_Balaclava_blk",["ACE_Vector","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","NVGoggles"]]
    };
    case "s4": {
        /// AT - Metis
        _unit setUnitLoadout [["arifle_AK12_F","muzzle_snds_B","acc_flashlight","optic_hamr",["30Rnd_762x39_AK12_Mag_F",30],[],""],["launch_O_Vorona_brown_F","","","",["Vorona_HEAT",1],[],""],["hgun_Pistol_01_F","","","",["10Rnd_9x21_Mag",10],[],""],["U_B_CombatUniform_mcam",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_tourniquet",4],["ACE_EarPlugs",1],["ACE_microDAGR",1],["ACRE_PRC148",1]]],["V_PlateCarrierIA1_dgtl",[["ACE_salineIV_500",2],["ACE_splint",2],["30Rnd_762x39_AK12_Mag_F",7,30],["SmokeShell",2,1],["HandGrenade",2,1],["10Rnd_9x21_Mag",2,10]]],[],"H_HelmetSpecB_snakeskin","G_Balaclava_blk",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","NVGoggles"]]
    };
    case "s5": {
        /// Explo/Pilot
        _unit setUnitLoadout [["arifle_AK12_F","muzzle_snds_B","acc_flashlight","optic_hamr",["30Rnd_762x39_AK12_Mag_F",30],[],""],[],["hgun_Pistol_01_F","","","",["10Rnd_9x21_Mag",10],[],""],["U_B_CombatUniform_mcam",[["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_tourniquet",4],["ACE_microDAGR",1],["ACRE_PRC148",1]]],["V_PlateCarrier2_rgr_noflag_F",[["HandGrenade",2,1],["SmokeShell",4,1],["30Rnd_762x39_AK12_Mag_F",8,30],["SmokeShellPurple",2,1],["10Rnd_9x21_Mag",2,10],["SmokeShellGreen",2,1]]],["B_FieldPack_oli",[["ACE_M26_Clacker",1],["ACE_DefusalKit",1],["ACE_EntrenchingTool",1],["SatchelCharge_Remote_Mag",2,1],["30Rnd_762x39_AK12_Mag_F",2,30]]],"H_HelmetSpecB_snakeskin","G_Balaclava_oli",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter","NVGoggles"]]
    };
    case "s6": {
        /// FTL
        _unit setUnitLoadout [["arifle_AK12_F","muzzle_snds_B","acc_flashlight","optic_hamr",["30Rnd_762x39_AK12_Mag_F",30],[],""],[],["hgun_Pistol_01_F","","","",["10Rnd_9x21_Mag",10],[],""],["U_B_CombatUniform_mcam",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_tourniquet",4],["ACE_EarPlugs",1],["ACE_microDAGR",1],["ACRE_PRC148",1]]],["V_PlateCarrier1_rgr_noflag_F",[["ACE_key_lockpick",1],["ACE_splint",2],["ACE_EntrenchingTool",1],["ACRE_PRC152",1],["ACE_HuntIR_monitor",1],["SmokeShell",1,1],["10Rnd_9x21_Mag",1,10],["SmokeShellGreen",2,1],["30Rnd_762x39_AK12_Mag_F",8,30]]],[],"H_HelmetSpecB_snakeskin","G_Balaclava_blk",["ACE_Vector","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","NVGoggles"]]
    };
    case "s7": {
        /// MG - Contact + Law & war
        _unit setUnitLoadout [["arifle_RPK12_F","muzzle_snds_B","acc_flashlight","optic_ACO_grn",["75rnd_762x39_AK12_Mag_F",75],[],""],[],["hgun_Pistol_01_F","","","",["10Rnd_9x21_Mag",10],[],""],["U_B_CombatUniform_mcam",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_tourniquet",4],["ACE_EarPlugs",1],["ACE_microDAGR",1],["ACRE_PRC148",1]]],["V_CarrierRigKBT_01_light_EAF_F",[["ACE_splint",2],["75rnd_762x39_AK12_Mag_F",4,75],["10Rnd_9x21_Mag",2,10],["SmokeShell",2,1],["MiniGrenade",1,1]]],["B_LegStrapBag_black_F",[["75rnd_762x39_AK12_Mag_F",3,75]]],"H_HelmetSpecB_snakeskin","G_Balaclava_blk",["","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","NVGoggles"]]
    };

    case "s8": {
        /// AT - RPG
        _unit setUnitLoadout [["arifle_AK12_F","muzzle_snds_B","acc_flashlight","optic_hamr",["30Rnd_762x39_AK12_Mag_F",30],[],""],["launch_RPG7_F","","","",["RPG7_F",1],[],""],["hgun_Pistol_01_F","","","",["10Rnd_9x21_Mag",10],[],""],["U_B_CombatUniform_mcam",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_tourniquet",4],["ACE_EarPlugs",1],["ACE_microDAGR",1],["ACRE_PRC148",1]]],["V_PlateCarrierIA1_dgtl",[["ACE_salineIV_500",2],["ACE_splint",2],["30Rnd_762x39_AK12_Mag_F",7,30],["SmokeShell",2,1],["HandGrenade",2,1],["10Rnd_9x21_Mag",2,10]]],[],"H_HelmetSpecB_snakeskin","G_Balaclava_blk",["","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","NVGoggles"]]
    };

    case "s9": {
        /// Explo/Pilot
        _unit setUnitLoadout [["arifle_AK12_F","muzzle_snds_B","acc_flashlight","optic_hamr",["30Rnd_762x39_AK12_Mag_F",30],[],""],[],["hgun_Pistol_01_F","","","",["10Rnd_9x21_Mag",10],[],""],["U_B_CombatUniform_mcam",[["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_tourniquet",4],["ACE_microDAGR",1],["ACRE_PRC148",1]]],["V_PlateCarrier2_rgr_noflag_F",[["HandGrenade",2,1],["SmokeShell",4,1],["30Rnd_762x39_AK12_Mag_F",8,30],["SmokeShellPurple",2,1],["10Rnd_9x21_Mag",2,10],["SmokeShellGreen",2,1]]],["B_FieldPack_oli",[["ACE_M26_Clacker",1],["ACE_DefusalKit",1],["ACE_EntrenchingTool",1],["SatchelCharge_Remote_Mag",1,1],["30Rnd_762x39_AK12_Mag_F",2,30],["ATMine_Range_Mag",1,1]]],"H_HelmetSpecB_snakeskin","G_Balaclava_oli",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter","NVGoggles"]]
    };

    case "s10": {
        /// CLS
        _unit setUnitLoadout [["arifle_AK12_F","muzzle_snds_B","acc_flashlight","optic_hamr",["30Rnd_762x39_AK12_Mag_F",30],[],""],[],["hgun_Pistol_01_F","","","",["10Rnd_9x21_Mag",10],[],""],["U_B_CombatUniform_mcam",[["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_tourniquet",4],["ACE_microDAGR",1],["ACRE_PRC148",1]]],["V_PlateCarrier2_rgr_noflag_F",[["HandGrenade",2,1],["SmokeShell",4,1],["30Rnd_762x39_AK12_Mag_F",8,30],["SmokeShellPurple",2,1],["10Rnd_9x21_Mag",2,10],["SmokeShellGreen",2,1]]],["B_FieldPack_oli",[["ACE_elasticBandage",20],["ACE_packingBandage",15],["ACE_epinephrine",12],["ACE_morphine",8],["ACE_salineIV",4],["ACE_salineIV_250",8],["ACE_tourniquet",4],["ACE_splint",12],["ACE_quikclot",8],["ACE_surgicalKit",1],["ACE_personalAidKit",1]]],"H_HelmetSpecB_snakeskin","G_Balaclava_oli",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ACE_Altimeter","NVGoggles"]];
        _unit setVariable ["ace_medical_medicClass", 2, true]
    };

    case "s11": {
        /// MG - Contact + Law & war
        _unit setUnitLoadout [["arifle_RPK12_F","muzzle_snds_B","acc_flashlight","optic_ACO_grn",["75rnd_762x39_AK12_Mag_F",75],[],""],[],["hgun_Pistol_01_F","","","",["10Rnd_9x21_Mag",10],[],""],["U_B_CombatUniform_mcam",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_tourniquet",4],["ACE_EarPlugs",1],["ACE_microDAGR",1],["ACRE_PRC148",1]]],["V_CarrierRigKBT_01_light_EAF_F",[["ACE_splint",2],["75rnd_762x39_AK12_Mag_F",4,75],["10Rnd_9x21_Mag",2,10],["SmokeShell",2,1],["MiniGrenade",1,1]]],["B_LegStrapBag_black_F",[["75rnd_762x39_AK12_Mag_F",3,75]]],"H_HelmetSpecB_snakeskin","G_Balaclava_blk",["","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch","NVGoggles"]]
    };
};

nil