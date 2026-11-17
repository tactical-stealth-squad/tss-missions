
// SKill and EH when unit get`s hit
[
	"SoldierEB",
	"init",
	{
		(_this select 0) setskill ["spotDistance", 1];
		(_this select 0) setskill ["spotTime", 1];
		(_this select 0) setskill ["courage", 1];
		// Eventhandler for moving when hit
		(_this select 0) addEventhandler [
			"HIT",
			{
				if (side (_this select 3) isEqualTo EAST OR !alive (_this select 0)) exitWith {};
				(_this select 0) removeEventHandler ["HIT", _thisEventHandler];
				(_this select 0) enableAI "PATH";
				(_this select 0) doSuppressiveFire getPosASL (_this select 3);
				[(_this select 0), (_this select 3), 100, true] call CBA_fnc_taskAttack;
			}
		];

		// Custom loadouts
		private _klasse = typeOf (_this select 0);

		switch (_klasse) do {
			// Officer
			case "O_officer_F": {
				(_this select 0) setUnitLoadout	[["arifle_AKS_F","","","",["30Rnd_545x39_Mag_F",30],[],""],[],["hgun_Pistol_heavy_02_F","","","",["6Rnd_45ACP_Cylinder",6],[],""],["U_I_E_Uniform_01_sweater_F",[["ACE_elasticBandage",5],["ACE_quikclot",5],["ACE_adenosine",1],["ACE_CableTie",1],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",2],["ACE_MapTools",1],["ACRE_PRC148",1]]],["V_BandollierB_blk",[["ACRE_PRC148",1],["6Rnd_45ACP_Cylinder",2,6],["30Rnd_545x39_Mag_Tracer_F",6,30]]],[],"H_Beret_ocamo","G_Aviator",["ACE_VectorDay","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
				(_this select 0) addEventhandler ["KILLED",{[(_this select 0), [("<t color=""#ffb730"">" + ("Untersuchen") + "</t>"), {Hintsilent "Das scheint einer der gesuchten Offiziere zu sein!"}, nil, 1.5, true, true, "", "true", 3]] remoteExecCall ["addaction", Allplayers]}]
			};

			/// FTL
			case "O_Soldier_TL_F": {
				(_this select 0) setUnitLoadout [["arifle_AK12_GL_F","","","optic_Arco_AK_blk_F",["30Rnd_762x39_AK12_Mag_F",30],["1Rnd_HE_Grenade_shell",1],""],[],["hgun_Pistol_01_F","","","",["10Rnd_9x21_Mag",10],[],""],["U_I_E_Uniform_01_sweater_F",[["ACE_elasticBandage",5],["ACE_quikclot",5],["ACE_adenosine",1],["ACE_CableTie",1],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",2],["ACE_MapTools",1],["ACRE_PRC148",1],["10Rnd_9x21_Mag",1,10]]],["V_CarrierRigKBT_01_light_EAF_F",[["ACRE_PRC148",1],["30Rnd_762x39_AK12_Mag_Tracer_F",6,30],["SmokeShell",3,1],["1Rnd_HE_Grenade_shell",5,1],["SmokeShellPurple",3,1]]],["B_AssaultPack_EAF_F",[["1Rnd_HE_Grenade_shell",15,1],["30Rnd_762x39_AK12_Mag_Tracer_F",5,30],["30Rnd_762x39_AK12_Mag_F",4,30],["HandGrenade",1,1]]],"H_HelmetHBK_F","G_Balaclava_blk",["ACE_VectorDay","","","",[],[],""],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]]
			};

			/// MMG
			case "O_Soldier_AR_F":{
				(_this select 0) setUnitLoadout [["arifle_RPK12_F","","","optic_ACO_grn",["75rnd_762x39_AK12_Mag_F",75],[],""],[],["hgun_Pistol_01_F","","","",["10Rnd_9x21_Mag",10],[],""],["U_I_E_Uniform_01_sweater_F",[["ACE_elasticBandage",5],["ACE_quikclot",5],["ACE_adenosine",1],["ACE_CableTie",1],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",1],["ACRE_PRC148",1],["10Rnd_9x21_Mag",1,10]]],["V_CarrierRigKBT_01_heavy_EAF_F",[["75Rnd_762x39_Mag_Tracer_F",3,75],["SmokeShell",2,1]]],["B_AssaultPack_EAF_F",[["75Rnd_762x39_Mag_Tracer_F",5,75]]],"H_HelmetHBK_F","G_Balaclava_blk",[],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]]
			};

			// Grenadier
			case "O_Soldier_GL_F": {
				(_this select 0) setUnitLoadout [["arifle_AK12_GL_F","","","optic_ACO_grn",["30Rnd_762x39_AK12_Mag_F",30],["1Rnd_HE_Grenade_shell",1],""],["launch_RPG7_F","","","",["RPG7_F",1],[],""],["hgun_Pistol_01_F","","","",["10Rnd_9x21_Mag",10],[],""],["U_I_E_Uniform_01_sweater_F",[["ACE_elasticBandage",5],["ACE_quikclot",5],["ACE_adenosine",1],["ACE_CableTie",1],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",1],["ACRE_PRC148",1]]],["V_CarrierRigKBT_01_heavy_EAF_F",[["30Rnd_762x39_AK12_Mag_Tracer_F",7,30],["SmokeShell",2,1]]],["B_AssaultPack_EAF_F",[["1Rnd_HE_Grenade_shell",19,1],["30Rnd_762x39_AK12_Mag_Tracer_F",5,30]]],"H_HelmetHBK_F","G_Balaclava_blk",["Binocular","","","",[],[],""],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]]
			};

			// AT
			case "O_Soldier_AT_F": {
				(_this select 0) setUnitLoadout [["arifle_AK12_F","","","optic_ACO_grn",["30Rnd_762x39_AK12_Mag_F",30],[],""],["launch_O_Vorona_green_F","","","",["Vorona_HEAT",1],[],""],["hgun_Pistol_01_F","","","",["10Rnd_9x21_Mag",10],[],""],["U_I_E_Uniform_01_sweater_F",[["ACE_elasticBandage",5],["ACE_quikclot",5],["ACE_adenosine",1],["ACE_CableTie",1],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",1],["ACRE_PRC148",1]]],["V_CarrierRigKBT_01_light_EAF_F",[["30Rnd_762x39_AK12_Mag_Tracer_F",8,30],["SmokeShell",2,1],["10Rnd_9x21_Mag",2,10]]],["B_FieldPack_Taiga_F",[["Vorona_HE",1,1],["Vorona_HEAT",1,1]]],"H_HelmetHBK_F","G_Balaclava_blk",[],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]]
			};

			// Normal soilder
			case "O_Soldier_F": {
				(_this select 0) setUnitLoadout [["arifle_AK12_F","","","optic_Arco_AK_blk_F",["30Rnd_762x39_AK12_Mag_F",30],[],""],[],["hgun_Pistol_01_F","","","",["10Rnd_9x21_Mag",10],[],""],["U_I_E_Uniform_01_sweater_F",[["ACE_elasticBandage",5],["ACE_quikclot",5],["ACE_adenosine",1],["ACE_CableTie",1],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",2],["ACRE_PRC148",1]]],["V_CarrierRigKBT_01_light_EAF_F",[["30Rnd_762x39_AK12_Mag_Tracer_F",10,30],["SmokeShell",2,1],["SmokeShellPurple",1,1],["10Rnd_9x21_Mag",2,10]]],[],"H_HelmetHBK_F","G_Balaclava_blk",[],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]]
			};

			// AA
			case "O_Soldier_AA_F": {
				(_this select 0) setUnitLoadout [["arifle_AK12_F","","","optic_ACO_grn",["30Rnd_762x39_AK12_Mag_F",30],[],""],["launch_B_Titan_olive_F","","","",["Titan_AA",1],[],""],["hgun_Pistol_01_F","","","",["10Rnd_9x21_Mag",10],[],""],["U_I_E_Uniform_01_sweater_F",[["ACE_elasticBandage",5],["ACE_quikclot",5],["ACE_adenosine",1],["ACE_CableTie",1],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",1],["ACRE_PRC148",1]]],["V_CarrierRigKBT_01_light_EAF_F",[["30Rnd_762x39_AK12_Mag_Tracer_F",8,30],["SmokeShell",2,1],["10Rnd_9x21_Mag",1,10]]],["B_FieldPack_Taiga_F",[["Titan_AA",2,1]]],"H_HelmetHBK_F","G_Balaclava_blk",[],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]]
			};

			// Medic
			case "O_medic_F": {
				(_this select 0) setUnitLoadout [["arifle_AK12_F","","","optic_Arco_AK_blk_F",["30Rnd_762x39_AK12_Mag_F",30],[],""],[],["hgun_Pistol_01_F","","","",["10Rnd_9x21_Mag",10],[],""],["U_I_E_Uniform_01_sweater_F",[["ACE_elasticBandage",5],["ACE_quikclot",5],["ACE_adenosine",1],["ACE_CableTie",1],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",2],["ACRE_PRC148",1],["10Rnd_9x21_Mag",1,10]]],["V_CarrierRigKBT_01_light_EAF_F",[["ACE_surgicalKit",1],["30Rnd_762x39_AK12_Mag_Tracer_F",8,30],["SmokeShell",3,1],["SmokeShellPurple",2,1]]],["B_FieldPack_Taiga_F",[["ACE_adenosine",20],["ACE_elasticBandage",25],["ACE_quikclot",20],["ACE_epinephrine",20],["ACE_morphine",20],["ACE_packingBandage",20],["ACE_salineIV_500",8],["ACE_salineIV",2],["ACE_tourniquet",5]]],"H_HelmetHBK_F","G_Balaclava_blk",[],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
				(_this select 0) setVariable ["ace_medical_medicClass", 2, true]
			};

			// Sniper
			case "O_Sharpshooter_F": {
				(_this select 0) setUnitLoadout [["srifle_LRR_tna_F","","","optic_Nightstalker",["7Rnd_408_Mag",7],[],""],[],["hgun_Pistol_01_F","","","",["10Rnd_9x21_Mag",10],[],""],["U_B_T_FullGhillie_tna_F",[["ACRE_PRC148",1],["ACE_elasticBandage",5],["ACE_quikclot",10],["ACE_adenosine",1],["ACE_CableTie",1],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_Flashlight_MX991",1],["ACE_morphine",2],["ACE_packingBandage",10],["ACE_tourniquet",2],["ACE_MapTools",1],["ACE_Kestrel4500",1],["ACE_DAGR",1],["10Rnd_9x21_Mag",1,10]]],["V_CarrierRigKBT_01_light_EAF_F",[["ACE_RangeCard",1],["ACE_7Rnd_408_305gr_Mag",6,7],["7Rnd_408_Mag",2,7],["SmokeShell",2,1],["SmokeShellPurple",2,1]]],[],"H_Booniehat_mgrn","G_Balaclava_blk",["ACE_VectorDay","","","",[],[],""],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch","NVGoggles_INDEP"]]
			};

			// DMR
			case "O_soldier_M_F": {
				(_this select 0) setUnitLoadout [["srifle_DMR_06_olive_F","muzzle_snds_B_khk_F","","ACE_optic_Hamr_PIP",["20Rnd_762x51_Mag",20],[],"bipod_01_F_khk"],[],["hgun_Pistol_01_F","","","",["10Rnd_9x21_Mag",10],[],""],["U_I_E_Uniform_01_sweater_F",[["ACRE_PRC148",1],["ACE_elasticBandage",5],["ACE_quikclot",10],["ACE_adenosine",1],["ACE_CableTie",1],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",9]]],["V_CarrierRigKBT_01_light_EAF_F",[["ACE_RangeCard",1],["ACE_Kestrel4500",1],["ACE_DAGR",1],["SmokeShell",2,1],["SmokeShellPurple",2,1],["ACE_20Rnd_762x51_Mag_tracer_green",7,20]]],[],"H_HelmetHBK_F","G_Balaclava_blk",["ACE_VectorDay","","","",[],[],""],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch",""]]
			};

			// Pilot
			case "O_helipilot_F": {
				(_this select 0) setUnitLoadout [["arifle_AKS_F","","","",["30Rnd_545x39_Mag_F",30],[],""],[],["hgun_Pistol_01_F","","","",["10Rnd_9x21_Mag",10],[],""],["U_I_pilotCoveralls",[["ACRE_PRC148",1],["ACE_elasticBandage",5],["ACE_quikclot",5],["ACE_adenosine",1],["ACE_CableTie",1],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_MapTools",1],["ACE_morphine",2],["ACE_tourniquet",2],["10Rnd_9x21_Mag",2,10],["SmokeShell",2,1]]],["V_TacVest_khk",[["30Rnd_545x39_Mag_F",5,30],["SmokeShellPurple",2,1],["ACE_microDAGR",1],["SmokeShell",2,1],["HandGrenade",1,1]]],[],"H_PilotHelmetHeli_O","",[],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch","NVGoggles_OPFOR"]]
			};

			// Crew
			case "O_T_Crew_F": {
				(_this select 0) setUnitLoadout [["arifle_AKS_F","","","",["30Rnd_545x39_Mag_F",30],[],""],[],["hgun_Pistol_01_F","","","",["10Rnd_9x21_Mag",10],[],""],["U_B_CombatUniform_tshirt_mcam_wdL_f",[["ACE_elasticBandage",5],["ACE_quikclot",5],["ACE_adenosine",1],["ACE_CableTie",1],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_MapTools",1],["ACE_morphine",2],["ACE_tourniquet",2],["ACRE_PRC148",1],["10Rnd_9x21_Mag",2,10],["SmokeShell",1,1]]],["V_PlateCarrier1_wdl",[["30Rnd_545x39_Mag_F",5,30],["SmokeShellPurple",2,1],["SmokeShell",2,1],["HandGrenade",1,1]]],[],"H_HelmetHBK_F","G_Balaclava_blk",[],["ItemMap","ItemGPS","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]]
			}
		}
	},
	true,
	[],
	true
] call CBA_fnc_addClassEventHandler;