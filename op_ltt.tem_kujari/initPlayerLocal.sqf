params ["_player", "_didJIP"];

//call compile preprocessFileLineNumbers "briefing.sqf";

//--------------------Loadout-------------------------
switch (typeOf _player) do {
	//TL
	case "B_Soldier_TL_F": {
		_player setUnitLoadout [["hgun_PDW2000_F","","","optic_Yorris",["30Rnd_9x21_Mag",30],[],""],[],[],["U_B_CombatUniform_mcam_tshirt",[["ACE_epinephrine",3],["ACE_morphine",2],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_tourniquet",4],["ACE_EarPlugs",1],["ACRE_BF888S",1]]],["V_TacVest_oli",[["ACE_personalAidKit",1],["ACE_surgicalKit",1],["ACE_salineIV_250",6],["30Rnd_9x21_Mag",3,30],["HandGrenade",2,1],["SmokeShell",2,1]]],["B_AssaultPack_sgg",[["ACE_elasticBandage",18],["ACE_packingBandage",5],["ACE_epinephrine",12],["ACE_salineIV",4],["ACE_salineIV_250",2],["ACE_tourniquet",4],["ACE_splint",12],["ACE_morphine",8]]],"H_Cap_grn","",["ACE_VectorDay","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
	};
	//Gunner
	case "B_Soldier_A_F": {
		_player setUnitLoadout [["arifle_TRG20_F","","","ACE_optic_MRCO_2D",["30Rnd_556x45_Stanag",30],[],""],[],[],["U_B_CombatUniform_mcam_tshirt",[["ACE_epinephrine",3],["ACE_morphine",2],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_tourniquet",4],["ACE_EarPlugs",1],["ACRE_BF888S",1]]],["V_TacVest_oli",[["ACE_salineIV_250",4],["HandGrenade",2,1],["SmokeShell",2,1],["30Rnd_556x45_Stanag",5,30]]],[],"H_Cap_grn","",["ACE_VectorDay","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
	};
	//Fahrer
	case "B_soldier_AR_F": {
		_player setUnitLoadout [["hgun_PDW2000_F","","","optic_Yorris",["30Rnd_9x21_Mag",30],[],""],[],[],["U_B_CombatUniform_mcam_tshirt",[["ACE_epinephrine",3],["ACE_morphine",2],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_tourniquet",4],["ACE_EarPlugs",1],["ACRE_BF888S",1]]],["V_TacVest_oli",[["ACE_salineIV_250",8],["ACE_salineIV",2],["30Rnd_9x21_Mag",3,30],["HandGrenade",2,1],["SmokeShell",2,1]]],["B_AssaultPack_sgg",[["ToolKit",1],["SatchelCharge_Remote_Mag",1,1]]],"H_Cap_grn","",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
	};
	//Recon TL
	case "B_recon_TL_F": {
		_player setUnitLoadout [["arifle_SPAR_03_snd_F","muzzle_snds_B_snd_F","","ACE_optic_SOS_2D",["20Rnd_762x51_Mag",20],[],"bipod_01_F_snd"],[],["hgun_Pistol_heavy_01_F","muzzle_snds_acp","","",["11Rnd_45ACP_Mag",15],[],""],["U_B_CombatUniform_mcam",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_RangeCard",1]]],["V_PlateCarrier2_rgr_noflag_F",[["ACE_salineIV_500",2],["ACE_splint",2],["ACE_Kestrel4500",1],["ACRE_BF888S",1],["HandGrenade",2,1],["SmokeShell",2,1],["20Rnd_762x51_Mag",7,20]]],[],"H_HelmetSpecB_paint1","",["ACE_MX2A","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
	};
	//Recon
	case "B_recon_F": {
		_player setUnitLoadout [["arifle_SPAR_03_snd_F","muzzle_snds_B_snd_F","","ACE_optic_SOS_2D",["20Rnd_762x51_Mag",20],[],"bipod_01_F_snd"],[],["hgun_Pistol_heavy_01_F","muzzle_snds_acp","","",["11Rnd_45ACP_Mag",15],[],""],["U_B_CombatUniform_mcam",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["ACE_RangeCard",1]]],["V_PlateCarrier2_rgr_noflag_F",[["ACE_salineIV_500",2],["ACE_splint",2],["ACE_Kestrel4500",1],["ACRE_BF888S",1],["HandGrenade",2,1],["SmokeShell",2,1],["20Rnd_762x51_Mag",7,20]]],[],"H_HelmetSpecB_paint1","",["ACE_VectorDay","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
	};
};

_player action ["SwitchWeapon", player, player, -1];
sleep 10;
[["Operation Learn to Tank"],
 ["Combat Outpost Try Hard"],
 ["Irgendwo in Afrika",2,1,4]]
 spawn BIS_fnc_EXP_camp_SITREP;

//--------------------ACE Action-------------------------
[teleporter] call compile preprocessFileLineNumbers "fn_addTeleporter.sqf";