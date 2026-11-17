private _unit = (_this select 0);

switch (typeOf _unit) do {
	//Rifleman
	case "O_Soldier_F": {
		(_this select 0) setUnitloadout [["arifle_CTAR_blk_F","","ACE_acc_pointer_green","optic_MRCO",["30Rnd_580x42_Mag_F",30],[],""],[],[],["U_O_T_Officer_F",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["30Rnd_556x45_Stanag",1,30]]],["V_HarnessO_ghex_F",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["MiniGrenade",4,1],["30Rnd_580x42_Mag_F",10,30]]],[],"H_PASGT_basic_olive_F","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
		};
	// Team Leader
	case "O_Soldier_TL_F": {
		(_this select 0) setUnitloadout [["arifle_CTAR_blk_F","","ACE_acc_pointer_green","optic_MRCO",["30Rnd_580x42_Mag_F",30],[],""],[],[],["U_O_T_Officer_F",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["30Rnd_556x45_Stanag",1,30]]],["V_HarnessO_ghex_F",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["MiniGrenade",4,1],["30Rnd_580x42_Mag_F",10,30]]],[],"H_PASGT_basic_olive_F","",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
	};
	// RPG
	case "O_Soldier_LAT_F": {
		(_this select 0) setUnitloadout [["arifle_CTAR_blk_F","","ACE_acc_pointer_green","optic_Yorris",["30Rnd_580x42_Mag_F",30],[],""],["launch_RPG32_green_F","","","",["RPG32_HE_F",1],[],""],[],["U_O_T_Officer_F",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2]]],["V_TacChestrig_grn_F",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["MiniGrenade",4,1],["30Rnd_580x42_Mag_F",8,30]]],["B_AssaultPack_wdl_F",[["RPG32_F",2,1],["RPG32_HE_F",1,1]]],"H_PASGT_basic_olive_F","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
	};
	//RPG Assi
	case "O_Soldier_A_F": {
		(_this select 0) setUnitloadout [["arifle_CTAR_blk_F","","ACE_acc_pointer_green","optic_Yorris",["30Rnd_580x42_Mag_F",30],[],""],[],[],["U_O_T_Officer_F",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2]]],["V_TacChestrig_grn_F",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["MiniGrenade",4,1],["30Rnd_580x42_Mag_F",8,30]]],["B_AssaultPack_wdl_F",[["RPG32_F",2,1],["RPG32_HE_F",1,1]]],"H_PASGT_basic_olive_F","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
	};
	// Metis
	case "O_Soldier_HAT_F": {
		(_this select 0) setUnitloadout [["arifle_CTAR_blk_F","","ACE_acc_pointer_green","optic_Yorris",["30Rnd_580x42_Mag_F",30],[],""],["launch_O_Vorona_green_F","","","",["Vorona_HEAT",1],[],""],[],["U_O_T_Officer_F",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2]]],["V_TacChestrig_grn_F",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["MiniGrenade",4,1],["30Rnd_580x42_Mag_F",8,30]]],["B_FieldPack_green_F",[["Vorona_HEAT",2,1]]],"H_PASGT_basic_olive_F","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
	};
	// Metis Assi
	case "O_Soldier_AHAT_F": {
		(_this select 0) setUnitloadout [["arifle_CTAR_blk_F","","ACE_acc_pointer_green","optic_Yorris",["30Rnd_580x42_Mag_F",30],[],""],[],[],["U_O_T_Officer_F",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2]]],["V_TacChestrig_grn_F",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["MiniGrenade",4,1],["30Rnd_580x42_Mag_F",8,30]]],["B_FieldPack_green_F",[]],"H_PASGT_basic_olive_F","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
	};
	// Crewman
	case "O_crew_F": {
		(_this select 0) setUnitloadout [["SMG_02_F","","","",["30Rnd_9x21_Mag_SMG_02",30],[],""],[],[],["U_O_R_Gorka_01_black_F",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["30Rnd_9x21_Mag_SMG_02",1,30]]],["V_LegStrapBag_black_F",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC148",1],["SmokeShell",4,1],["30Rnd_9x21_Mag_SMG_02",4,30]]],[],"H_Tank_black_F","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
	};

	// Crewman Tropic
	case "O_T_Crew_F": {
		(_this select 0) setUnitloadout [["SMG_02_F","","","",["30Rnd_9x21_Mag_SMG_02",30],[],""],[],[],["U_O_R_Gorka_01_black_F",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["30Rnd_9x21_Mag_SMG_02",1,30]]],["V_LegStrapBag_black_F",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC148",1],["SmokeShell",4,1],["30Rnd_9x21_Mag_SMG_02",4,30]]],[],"H_Tank_black_F","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
	};
};

nil