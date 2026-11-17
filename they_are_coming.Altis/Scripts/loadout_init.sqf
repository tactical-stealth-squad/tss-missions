private _unit = (_this select 0);

private _uniform = selectRandom ["U_BG_Guerilla2_2","U_BG_Guerilla2_1","U_BG_Guerilla2_3","U_I_G_resistanceLeader_F", "U_I_L_Uniform_01_tshirt_olive_F"];
private _vest = selectRandom ["V_MU_PlateCarrier2_2_blk","V_MU_PlateCarrier2_2_cbr","V_MU_PlateCarrier2_2_rgr"];
private _helmet = selectRandom ["H_HelmetB","H_HelmetB_black","H_HelmetB_sand"];
private _facewear = selectRandom ["G_Bandanna_aviator","G_Bandanna_beast","G_Bandanna_blk","G_Bandanna_khk","G_Bandanna_oli","G_Bandanna_tan"];

switch (typeOf _unit) do {
    // Teamlead
    case "I_G_Soldier_TL_F": {
        _unit setUnitLoadout [["arifle_TRG21_F","","","ACE_optic_MRCO_2D",["30Rnd_556x45_Stanag_Sand",30],[],""],[],[],["U_BG_Guerilla2_3",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2]]],["V_MU_PlateCarrier2_2_rgr",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["HandGrenade",2,1],["SmokeShell",2,1],["30Rnd_556x45_Stanag_Sand",8,30]]],[],"H_HelmetB","G_Bandanna_aviator",["ACE_Vector","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
        _unit setVariable ["ace_medical_medicClass", 2, true]
    };
    // AR Schütze
    case "I_G_Soldier_AR_F": {
        _unit setUnitLoadout [["LMG_Zafir_F","","","ACE_optic_Arco_2D",["150Rnd_762x54_Box",150],[],""],[],["hgun_Pistol_heavy_02_F","","","",["6Rnd_45ACP_Cylinder",6],[],""],["U_BG_Guerilla2_3",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2]]],["V_MU_PlateCarrier2_2_rgr",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["HandGrenade",2,1],["SmokeShell",2,1],["150Rnd_762x54_Box_Tracer",1,150],["6Rnd_45ACP_Cylinder",3,6]]],["B_TacticalPack_oli",[["150Rnd_762x54_Box_Tracer",4,150]]],"H_HelmetB","G_Bandanna_aviator",["","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
    };
    // Grenadier/Schlepper
    case "I_G_Soldier_GL_F": {
        _unit setUnitLoadout [["arifle_TRG21_GL_F","","","ACE_optic_MRCO_2D",["30Rnd_556x45_Stanag_Sand",30],["1Rnd_HE_Grenade_shell",1],""],[],[],["U_BG_Guerilla2_3",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2]]],["V_MU_PlateCarrier2_2_rgr",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["HandGrenade",2,1],["SmokeShell",2,1],["30Rnd_556x45_Stanag_Sand",7,30]]],["B_TacticalPack_oli",[["30Rnd_556x45_Stanag_Sand",8,30],["1Rnd_HE_Grenade_shell",15,1],["150Rnd_762x54_Box_Tracer",2,150]]],"H_HelmetB","G_Bandanna_aviator",["","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
    };
    // AT
    case "I_G_Soldier_LAT_F": {
        _unit setUnitLoadout [["arifle_TRG20_F","","","ACE_optic_MRCO_2D",["30Rnd_556x45_Stanag_Sand",30],[],""],["launch_MRAWS_green_rail_F","","","",["MRAWS_HEAT_F",1],[],""],[],["U_BG_Guerilla2_3",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2]]],["V_MU_PlateCarrier2_2_rgr",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["HandGrenade",2,1],["SmokeShell",2,1],["30Rnd_556x45_Stanag_Sand",8,30]]],[],"H_HelmetB","G_Bandanna_aviator",["ACE_Vector","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
    };
    // Marksman
    case "I_G_Soldier_M_F": {
        _unit setUnitLoadout [["arifle_SPAR_03_blk_F","","","ACE_optic_SOS_2D",["20Rnd_762x51_Mag",20],[],"bipod_01_F_blk"],[],[],["U_BG_Guerilla2_3",[["ACE_elasticBandage",11],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_RangeCard",1]]],["V_MU_PlateCarrier2_2_rgr",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["HandGrenade",1,1],["SmokeShell",1,1],["20Rnd_762x51_Mag",7,20]]],[],"H_HelmetB","G_Bandanna_aviator",["ACE_Vector","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
    };
    // Medic
    case "I_G_medic_F": {
        _unit setUnitLoadout [["arifle_TRG20_F","","","ACE_optic_MRCO_2D",["30Rnd_556x45_Stanag_Sand",30],[],""],[],[],["U_BG_Guerilla2_3",[["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_tourniquet",4]]],["V_MU_PlateCarrier2_2_rgr",[["ACE_personalAidKit",1],["ACE_surgicalKit",1],["ACRE_PRC343",1],["HandGrenade",3,1],["SmokeShell",3,1]]],["B_TacticalPack_oli",[["ACE_elasticBandage",18],["ACE_packingBandage",5],["ACE_epinephrine",12],["ACE_morphine",8],["ACE_salineIV",4],["ACE_salineIV_250",8],["ACE_tourniquet",4],["ACE_splint",12],["30Rnd_556x45_Stanag_Sand",10,30]]],"H_HelmetB","G_Bandanna_aviator",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
        _unit setVariable ["ace_medical_medicClass", 2, true]
    };
/*
    case "SCHÜTZE": {
        _unit setUnitLoadout [["arifle_TRG21_F","","","ACE_optic_MRCO_2D",["30Rnd_556x45_Stanag_Sand",30],[],""],[],[],["U_BG_Guerilla2_3",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2]]],["V_MU_PlateCarrier2_2_rgr",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["HandGrenade",2,1],["SmokeShell",2,1],["30Rnd_556x45_Stanag_Sand",8,30]]],[],"H_HelmetB","G_Bandanna_aviator",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
    };
*/
}