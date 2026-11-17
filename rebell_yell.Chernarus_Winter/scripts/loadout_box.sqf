{
	clearweaponcargoGlobal _x;
	clearmagazinecargoGlobal _x;
	clearitemcargoGlobal _x;
	clearBackpackCargoGlobal _x;
} foreach [b_heli, box_pilots_1, box_pilots_2];

sup_box_1 addmagazinecargoGlobal ["CUP_30Rnd_Sa58_M", 30];
sup_box_1 addmagazinecargoGlobal ["CUP_10Rnd_762x54_SVD_M", 20];
sup_box_1 addmagazinecargoGlobal ["150Rnd_762x54_Box", 20];
sup_box_1 addmagazinecargoGlobal ["CUP_HandGrenade_RGD5", 10];
sup_box_1 addmagazinecargoGlobal ["SmokeShell", 20];
sup_box_1 addmagazinecargoGlobal ["RPG7_F", 5];
sup_box_1 addmagazinecargoGlobal ["CUP_30Rnd_9x39_SP5_VIKHR_M", 10];
sup_box_1 additemcargoGlobal ["ACE_wirecutter", 1];
sup_box_1 additemcargoGlobal ["ACE_EntrenchingTool", 2];
sup_box_1 additemcargoGlobal ["ACE_key_lockpick", 4];
sup_box_1 additemcargoGlobal ["cup_acc_flashlight_wdl", 20];

b_heli addBackpackCargoGlobal ["B_parachute", 10];

box_pilots_1 additemcargoGlobal ["ItemMap", 12];
box_pilots_1 additemcargoGlobal ["ItemCompass", 12];
box_pilots_1 additemcargoGlobal ["ItemWatch", 12];
box_pilots_1 additemcargoGlobal ["ACE_MapTools", 12];
box_pilots_1 additemcargoGlobal ["G_Aviator", 12];
box_pilots_1 additemcargoGlobal ["CUP_H_PASGTv2_OD", 12];
box_pilots_1 additemcargoGlobal ["CUP_V_CDF_OfficerBelt", 12];
box_pilots_1 additemcargoGlobal ["CUP_U_B_CDF_SNW_2", 12];
box_pilots_1 additemcargoGlobal ["ACE_DAGR", 12];
box_pilots_1 additemcargoGlobal ["ACE_EarPlugs", 12];

box_pilots_2 addmagazinecargoGlobal ["CUP_30Rnd_9x39_SP5_VIKHR_M", 20];
box_pilots_2 addmagazinecargoGlobal ["SmokeShell", 15];
box_pilots_2 addWeaponCargoGlobal ["CUP_arifle_SR3M_Vikhr", 15];
box_pilots_2 addBackpackCargoGlobal ["CUP_B_CivPack_WDL", 8];

if !(isNil "kat_airway_Accuvac_time") then {
	b_apc additemcargoGlobal ["kat_Painkiller", 20];
	b_apc additemcargoGlobal ["kat_guedel", 50];
	b_apc additemcargoGlobal ["kat_chestSeal", 25];

	b_apc additemcargoGlobal ["kat_larynx", 15];
	b_apc additemcargoGlobal ["kat_aatKit", 5];
	b_apc additemcargoGlobal ["kat_IV_16", 10];
	b_apc additemcargoGlobal ["kat_IO_FAST", 5];
	b_apc additemcargoGlobal ["kat_amiodarone", 5];
	b_apc additemcargoGlobal ["kat_lidocaine", 5];
	b_apc additemcargoGlobal ["kat_Carbonate", 2];
	b_apc additemcargoGlobal ["kat_accuvac", 1];
	b_apc additemcargoGlobal ["kat_X_AED", 1];
	b_apc additemcargoGlobal ["kat_Pulseoximeter", 2];
};

nil