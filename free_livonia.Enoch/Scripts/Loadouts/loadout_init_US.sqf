params ["_target", "_caller", "_actionId", "_arguments"];

switch (_arguments) do {
    case "FTL": {
		// FTL // SQL
		_caller setUnitLoadout [["arifle_SPAR_01_GL_blk_F","","ACE_acc_pointer_green","optic_Arco_AK_blk_F",["30Rnd_556x45_Stanag",30],[],""],[],["hgun_Pistol_heavy_01_green_F","muzzle_snds_acp","acc_flashlight_pistol","",["11Rnd_45ACP_Mag",11],[],""],["U_B_CombatUniform_vest_mcam_wdl_f",[["ACE_painkillers",1,10],["ACE_elasticBandage",5],["ACE_quikclot",5],["ACE_splint",2],["ACE_microDAGR",1],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_MapTools",1],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",2],["ACRE_PRC148",1]]],["V_PlateCarrierSpec_wdl",[["ACE_HuntIR_monitor",1],["ACRE_PRC148",1],["SmokeShell",5,1],["SmokeShellPurple",5,1],["11Rnd_45ACP_Mag",2,11],["30Rnd_556x45_Stanag",2,30]]],["B_FieldPack_green_F",[["ACRE_PRC117F",1],["ACE_HuntIR_M203",5,1],["30Rnd_556x45_Stanag",7,30]]],"H_HelmetB_plain_wdl","G_Combat",["ACE_VectorDay","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
	};

	case "JTAC": {
		// JTAC
		_caller setUnitLoadout [["arifle_SPAR_01_blk_F","","ACE_acc_pointer_green","ACE_optic_Hamr_PIP",["30Rnd_556x45_Stanag",30],[],""],[],["hgun_Pistol_heavy_01_green_F","muzzle_snds_acp","acc_flashlight_pistol","",["11Rnd_45ACP_Mag",11],[],""],["U_B_CombatUniform_vest_mcam_wdl_f",[["ACE_painkillers",1,10],["ACE_splint",2],["ACE_elasticBandage",5],["ACE_quikclot",5],["ACE_microDAGR",1],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",2],["ACRE_PRC148",1]]],["V_PlateCarrier2_wdl",[["ACE_DAGR",1],["11Rnd_45ACP_Mag",2,11],["SmokeShell",4,1],["SmokeShellPurple",4,1],["30Rnd_556x45_Stanag",10,30]]],["B_AssaultPack_wdl_F",[["ACRE_PRC117F",1]]],"H_HelmetB_plain_wdl","G_Combat",["Laserdesignator_01_khk_F","","","",["Laserbatteries",1],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
	};

	case "GL": {
		// GL
		_caller setUnitLoadout [["arifle_SPAR_01_GL_blk_F","","ACE_acc_pointer_green","optic_ERCO_blk_F",["30Rnd_556x45_Stanag",30],[],""],[],["hgun_Pistol_heavy_01_green_F","muzzle_snds_acp","acc_flashlight_pistol","",["11Rnd_45ACP_Mag",11],[],""],["U_B_CombatUniform_vest_mcam_wdl_f",[["ACE_painkillers",1,10],["ACE_elasticBandage",5],["ACE_splint",2],["ACE_quikclot",5],["ACE_microDAGR",1],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",2],["ACRE_PRC148",1]]],["V_PlateCarrierGL_wdl",[["SmokeShell",5,1],["SmokeShellPurple",4,1],["11Rnd_45ACP_Mag",2,11],["30Rnd_556x45_Stanag",6,30],["ACE_HuntIR_M203",5,1],["1Rnd_HE_Grenade_shell",5,1]]],["B_AssaultPack_wdl_F",[["1Rnd_HE_Grenade_shell",15,1],["30Rnd_556x45_Stanag",10,30]]],"H_HelmetB_plain_wdl","G_Combat",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
	};

	case "AR": {
		// AR
		_caller setUnitLoadout [["LMG_03_F","","ACE_acc_pointer_green","optic_ERCO_blk_F",["200Rnd_556x45_Box_Tracer_F",200],[],""],[],["hgun_Pistol_heavy_01_green_F","muzzle_snds_acp","acc_flashlight_pistol","",["11Rnd_45ACP_Mag",11],[],""],["U_B_CombatUniform_vest_mcam_wdl_f",[["ACE_painkillers",1,10],["ACE_splint",2],["ACE_elasticBandage",5],["ACE_quikclot",5],["ACE_microDAGR",1],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",2],["ACRE_PRC148",1]]],["V_PlateCarrier2_wdl",[["11Rnd_45ACP_Mag",2,11],["SmokeShell",2,1],["SmokeShellPurple",2,1],["200Rnd_556x45_Box_Tracer_F",2,200],["HandGrenade",2,1]]],["B_AssaultPack_wdl_F",[["200Rnd_556x45_Box_Tracer_F",3,200]]],"H_HelmetB_plain_wdl","G_Combat",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
	};

	case "MEDIC_Lead": {
		// Medic_Lead
		_caller setUnitLoadout [["arifle_SPAR_01_blk_F","","ACE_acc_pointer_green","optic_ERCO_blk_F",["30Rnd_556x45_Stanag",30],[],""],[],["hgun_Pistol_heavy_01_green_F","muzzle_snds_acp","acc_flashlight_pistol","",["11Rnd_45ACP_Mag",11],[],""],["U_B_CombatUniform_vest_mcam_wdl_f",[["ACE_painkillers",1,10],["ACE_elasticBandage",5],["ACE_quikclot",5],["ACE_microDAGR",1],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",2],["ACRE_PRC148",2]]],["V_PlateCarrier2_wdl",[["ACE_splint",2],["11Rnd_45ACP_Mag",2,11],["SmokeShell",5,1],["SmokeShellPurple",5,1],["30Rnd_556x45_Stanag",8,30]]],["B_FieldPack_green_F",[["ACE_adenosine",10],["ACE_elasticBandage",15],["ACE_quikclot",15],["ACE_epinephrine",10],["ACE_morphine",10],["ACE_packingBandage",15],["ACE_tourniquet",4],["ACE_salineIV_500",6],["ACE_personalAidKit",5],["ACE_surgicalKit",1]]],"H_HelmetB_plain_wdl","G_Combat",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
		_caller setVariable ["ace_medical_medicClass", 2, true];
	};

	case "MEDIC_Doctor": {
		// Medic_doc
		_caller setUnitLoadout [["arifle_SPAR_01_blk_F","","ACE_acc_pointer_green","optic_ERCO_blk_F",["30Rnd_556x45_Stanag",30],[],""],[],["hgun_Pistol_heavy_01_green_F","muzzle_snds_acp","acc_flashlight_pistol","",["11Rnd_45ACP_Mag",11],[],""],["U_B_CombatUniform_vest_mcam_wdl_f",[["ACE_splint",2],["ACE_painkillers",1,10],["ACE_elasticBandage",5],["ACE_quikclot",5],["ACE_microDAGR",1],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",2],["ACRE_PRC148",1]]],["V_PlateCarrier2_wdl",[["11Rnd_45ACP_Mag",2,11],["SmokeShell",5,1],["SmokeShellPurple",5,1],["30Rnd_556x45_Stanag",8,30]]],["B_FieldPack_green_F",[["ACE_adenosine",10],["ACE_elasticBandage",10],["ACE_quikclot",10],["ACE_epinephrine",10],["ACE_morphine",10],["ACE_packingBandage",10],["ACE_salineIV",2],["ACE_tourniquet",4],["ACE_salineIV_500",8],["ACE_personalAidKit",5],["ACE_surgicalKit",1]]],"H_HelmetB_plain_wdl","G_Combat",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
		_caller setVariable ["ace_medical_medicClass", 2, true];
	};

	case "MEDIC_CLS": {
		// Medic_CLS
		_caller setUnitLoadout [["arifle_SPAR_01_blk_F","","ACE_acc_pointer_green","optic_ERCO_blk_F",["30Rnd_556x45_Stanag",30],[],""],[],["hgun_Pistol_heavy_01_green_F","muzzle_snds_acp","acc_flashlight_pistol","",["11Rnd_45ACP_Mag",11],[],""],["U_B_CombatUniform_vest_mcam_wdl_f",[["ACE_splint",2],["ACE_painkillers",1,10],["ACE_elasticBandage",5],["ACE_quikclot",5],["ACE_microDAGR",1],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",2],["ACRE_PRC148",1]]],["V_PlateCarrier2_wdl",[["11Rnd_45ACP_Mag",2,11],["SmokeShell",5,1],["SmokeShellPurple",5,1],["30Rnd_556x45_Stanag",8,30]]],["B_FieldPack_green_F",[["ACE_adenosine",20],["ACE_elasticBandage",20],["ACE_quikclot",20],["ACE_epinephrine",20],["ACE_morphine",20],["ACE_packingBandage",20],["ACE_tourniquet",5],["ACE_salineIV_500",7],["ACE_bodyBag",4],["ACE_salineIV",1]]],"H_HelmetB_plain_wdl","G_Combat",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
		_caller setVariable ["ace_medical_medicClass", 1, true];
	};

	case "AT": {
		// AT
		_caller setUnitLoadout [["arifle_SPAR_01_blk_F","","ACE_acc_pointer_green","optic_ERCO_blk_F",["30Rnd_556x45_Stanag",30],[],""],["launch_MRAWS_green_F","","","",["MRAWS_HEAT_F",1],[],""],["hgun_Pistol_heavy_01_green_F","muzzle_snds_acp","acc_flashlight_pistol","",["11Rnd_45ACP_Mag",11],[],""],["U_B_CombatUniform_vest_mcam_wdl_f",[["ACE_splint",2],["ACE_painkillers",1,10],["ACE_elasticBandage",5],["ACE_quikclot",5],["ACE_microDAGR",1],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",2],["ACRE_PRC148",1]]],["V_PlateCarrier2_wdl",[["11Rnd_45ACP_Mag",2,11],["SmokeShell",2,1],["SmokeShellPurple",2,1],["30Rnd_556x45_Stanag",8,30]]],["B_FieldPack_green_F",[["MRAWS_HEAT55_F",1,1],["MRAWS_HE_F",1,1],["MRAWS_HEAT_F",1,1]]],"H_HelmetB_plain_wdl","G_Combat",["ACE_VectorDay","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
	};

	case "AA": {
		// AA
		_caller setUnitLoadout [["arifle_SPAR_01_blk_F","","ACE_acc_pointer_green","optic_ERCO_blk_F",["30Rnd_556x45_Stanag",30],[],""],["launch_B_Titan_olive_F","","","",["Titan_AA",1],[],""],["hgun_Pistol_heavy_01_green_F","muzzle_snds_acp","acc_flashlight_pistol","",["11Rnd_45ACP_Mag",11],[],""],["U_B_CombatUniform_vest_mcam_wdl_f",[["ACE_painkillers",1,10],["ACE_elasticBandage",5],["ACE_quikclot",5],["ACE_microDAGR",1],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",2],["ACRE_PRC148",1]]],["V_PlateCarrier2_wdl",[["11Rnd_45ACP_Mag",2,11],["SmokeShell",2,1],["SmokeShellPurple",2,1],["30Rnd_556x45_Stanag",8,30]]],["B_AssaultPack_wdl_F",[["Titan_AA",1,1]]],"H_HelmetB_plain_wdl","G_Combat",["ACE_VectorDay","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
	};

	case "Mortar_BiPod": {
		// Mortar BiPod
		_caller setUnitLoadout [["arifle_SPAR_01_blk_F","","ACE_acc_pointer_green","optic_ERCO_blk_F",["30Rnd_556x45_Stanag",30],[],""],[],["hgun_Pistol_heavy_01_green_F","muzzle_snds_acp","acc_flashlight_pistol","",["11Rnd_45ACP_Mag",11],[],""],["U_B_CombatUniform_vest_mcam_wdl_f",[["ACE_splint",2],["ACE_painkillers",1,10],["ACE_elasticBandage",5],["ACE_quikclot",5],["ACE_microDAGR",1],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",2],["ACRE_PRC148",1]]],["V_PlateCarrier2_wdl",[["11Rnd_45ACP_Mag",2,11],["SmokeShell",2,1],["SmokeShellPurple",2,1],["30Rnd_556x45_Stanag",8,30]]],["I_Mortar_01_support_F",[]],"H_HelmetB_plain_wdl","G_Combat",["ACE_VectorDay","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
	};

	case "Mortar_Tube": {
		// Mortar Tube
		_caller setUnitLoadout [["arifle_SPAR_01_blk_F","","ACE_acc_pointer_green","optic_ERCO_blk_F",["30Rnd_556x45_Stanag",30],[],""],[],["hgun_Pistol_heavy_01_green_F","muzzle_snds_acp","acc_flashlight_pistol","",["11Rnd_45ACP_Mag",11],[],""],["U_B_CombatUniform_vest_mcam_wdl_f",[["ACE_splint",2],["ACE_painkillers",1,10],["ACE_elasticBandage",5],["ACE_quikclot",5],["ACE_microDAGR",1],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",2],["ACRE_PRC148",1]]],["V_PlateCarrier2_wdl",[["11Rnd_45ACP_Mag",2,11],["SmokeShell",2,1],["SmokeShellPurple",2,1],["30Rnd_556x45_Stanag",8,30]]],["I_Mortar_01_weapon_F",[]],"H_HelmetB_plain_wdl","G_Combat",["ACE_VectorDay","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
	};

	case "DMR": {
		// DMR
		_caller setUnitLoadout [["srifle_DMR_06_olive_F","muzzle_snds_B_khk_F","","optic_AMS_khk",["ACE_20Rnd_762x51_Mag_tracer_yellow",20],[],"bipod_03_F_oli"],[],["hgun_Pistol_heavy_01_green_F","muzzle_snds_acp","acc_flashlight_pistol","",["11Rnd_45ACP_Mag",11],[],""],["U_B_CombatUniform_vest_mcam_wdl_f",[["ACE_splint",2],["ACE_painkillers",1,10],["ACE_elasticBandage",5],["ACE_quikclot",5],["ACE_microDAGR",1],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",2],["ACE_Kestrel4500",1],["ACE_RangeCard",1],["ACRE_PRC148",1]]],["V_PlateCarrier2_wdl",[["11Rnd_45ACP_Mag",2,11],["SmokeShell",5,1],["SmokeShellPurple",5,1],["ACE_20Rnd_762x51_Mag_tracer_yellow",5,20]]],["B_AssaultPack_wdl_F",[["ACE_20Rnd_762x51_Mag_tracer_yellow",10,20],["ClaymoreDirectionalMine_Remote_Mag",1,1]]],"H_HelmetB_plain_wdl","G_Combat",["ACE_VectorDay","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
	};

	case "PIO_Repair": {
		// Pionier_Repair
		_caller setUnitLoadout [["arifle_SPAR_01_blk_F","","ACE_acc_pointer_green","ACE_optic_Hamr_PIP",["30Rnd_556x45_Stanag",30],[],""],[],["hgun_Pistol_heavy_01_green_F","muzzle_snds_acp","acc_flashlight_pistol","",["11Rnd_45ACP_Mag",11],[],""],["U_B_CombatUniform_vest_mcam_wdl_f",[["ACE_splint",2],["ACE_painkillers",1,10],["ACE_elasticBandage",5],["ACE_quikclot",5],["ACE_microDAGR",1],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",2],["ACRE_PRC148",1]]],["V_PlateCarrier2_wdl",[["ACE_DefusalKit",1],["ACE_M26_Clacker",1],["11Rnd_45ACP_Mag",2,11],["SmokeShell",2,1],["SmokeShellPurple",2,1],["30Rnd_556x45_Stanag",10,30]]],["B_FieldPack_green_F",[["ACE_EntrenchingTool",1],["ACE_wirecutter",1],["ToolKit",1]]],"H_HelmetB_plain_wdl","G_Combat",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
		_caller setVariable ["ìsEngineer", 2, true];
	};

	case "PIO_Demo": {
		// Pionier_Demo
		_caller setUnitLoadout [["arifle_SPAR_01_blk_F","","ACE_acc_pointer_green","ACE_optic_Hamr_PIP",["30Rnd_556x45_Stanag",30],[],""],[],["hgun_Pistol_heavy_01_green_F","muzzle_snds_acp","acc_flashlight_pistol","",["11Rnd_45ACP_Mag",11],[],""],["U_B_CombatUniform_vest_mcam_wdl_f",[["ACE_splint",2],["ACE_painkillers",1,10],["ACE_elasticBandage",5],["ACE_quikclot",5],["ACE_microDAGR",1],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",2],["ACRE_PRC148",1]]],["V_PlateCarrier2_wdl",[["ACE_DefusalKit",1],["ACE_M26_Clacker",1],["11Rnd_45ACP_Mag",2,11],["SmokeShell",2,1],["SmokeShellPurple",2,1],["30Rnd_556x45_Stanag",10,30]]],["B_FieldPack_green_F",[["ACE_EntrenchingTool",1],["ACE_wirecutter",1],["SatchelCharge_Remote_Mag",1,1],["DemoCharge_Remote_Mag",4,1]]],"H_HelmetB_plain_wdl","G_Combat",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
		_caller setVariable ["ìsEngineer", 2, true];
	};

	case "PIO_Lead": {
		// Pionier_Lead
		_caller setUnitLoadout [["arifle_SPAR_01_blk_F","","ACE_acc_pointer_green","ACE_optic_Hamr_PIP",["30Rnd_556x45_Stanag",30],[],""],[],["hgun_Pistol_heavy_01_green_F","muzzle_snds_acp","acc_flashlight_pistol","",["11Rnd_45ACP_Mag",11],[],""],["U_B_CombatUniform_vest_mcam_wdl_f",[["ACE_painkillers",1,10],["ACE_elasticBandage",5],["ACE_quikclot",5],["ACE_microDAGR",1],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",2],["ACRE_PRC148",2]]],["V_PlateCarrier2_wdl",[["ACE_splint",2],["ACE_DefusalKit",1],["ACE_M26_Clacker",2],["11Rnd_45ACP_Mag",2,11],["SmokeShell",2,1],["SmokeShellPurple",2,1],["30Rnd_556x45_Stanag",10,30]]],["B_FieldPack_green_F",[["ACE_wirecutter",1],["ACE_EntrenchingTool",1],["ACRE_PRC117F",1]]],"H_HelmetB_plain_wdl","G_Combat",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
		_caller setVariable ["ìsEngineer", 2, true];
	};

	case "HELI": {
		// Pilot Heli
		_caller setUnitLoadout [["SMG_05_F","","","",["30Rnd_9x21_Mag_SMG_02_Tracer_Yellow",30],[],""],[],["hgun_Pistol_heavy_01_green_F","","","",["11Rnd_45ACP_Mag",11],[],""],["U_B_HeliPilotCoveralls",[["ACE_painkillers",1,10],["ACE_elasticBandage",5],["ACE_quikclot",5],["ACE_EarPlugs",1],["ACE_splint",2],["ACE_epinephrine",2],["ACE_MapTools",1],["ACE_morphine",2],["ACE_microDAGR",1],["ACE_packingBandage",5],["ACE_tourniquet",2],["ACE_microDAGR",1],["ACRE_PRC148",1]]],[],[],"H_PilotHelmetHeli_B","",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
	};

	case "CREW_Lead": {
		// Crew Lead
		_caller setUnitLoadout [["SMG_05_F","","","",["30Rnd_9x21_Mag_SMG_02_Tracer_Yellow",30],[],""],[],["hgun_Pistol_heavy_01_green_F","","","",["11Rnd_45ACP_Mag",11],[],""],["U_B_CombatUniform_vest_mcam_wdl_f",[["ACE_painkillers",1,10],["ACE_elasticBandage",5],["ACE_quikclot",5],["ACE_splint",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_microDAGR",1],["ACE_MapTools",1],["ACE_morphine",2],["ACE_microDAGR",1],["ACE_packingBandage",5],["ACE_tourniquet",2],["ACRE_PRC148",1]]],["V_BandollierB_oli",[["30Rnd_9x21_Mag_SMG_02_Tracer_Yellow",4,30],["SmokeShell",2,1],["SmokeShellPurple",2,1]]],["B_AssaultPack_wdl_F",[["ACRE_PRC117F",1]]],"H_HelmetCrew_B","",["ACE_VectorDay","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
		};

	case "CREW": {
		// Crew
		_caller setUnitLoadout [["SMG_05_F","","","",["30Rnd_9x21_Mag_SMG_02_Tracer_Yellow",30],[],""],[],["hgun_Pistol_heavy_01_green_F","","","",["11Rnd_45ACP_Mag",11],[],""],["U_B_CombatUniform_vest_mcam_wdl_f",[["ACE_painkillers",1,10],["ACE_elasticBandage",5],["ACE_quikclot",5],["ACE_splint",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_microDAGR",1],["ACE_MapTools",1],["ACE_morphine",2],["ACE_microDAGR",1],["ACE_packingBandage",5],["ACE_tourniquet",2],["ACRE_PRC148",1]]],["V_BandollierB_oli",[["30Rnd_9x21_Mag_SMG_02_Tracer_Yellow",4,30],["SmokeShell",2,1],["SmokeShellPurple",2,1]]],[],"H_HelmetCrew_B","",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
	};
};