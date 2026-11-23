{
	clearweaponcargoGlobal _x;
	clearmagazinecargoGlobal _x;
	clearitemcargoGlobal _x;
	clearBackpackCargoGlobal _x
} foreach [b_nachschub_3, b_nachschub_2, b_nachschub_1];

b_nachschub_3 addweaponcargoGlobal ["arifle_RPK12_F",1];
b_nachschub_3 addweaponcargoGlobal ["arifle_AK12_GL_F",1];
b_nachschub_3 addmagazinecargoGlobal ["75rnd_762x39_AK12_Mag_F",15];
b_nachschub_3 addmagazinecargoGlobal ["30Rnd_762x39_AK12_Mag_F",30];
b_nachschub_3 addmagazinecargoGlobal ["IEDLandBig_Remote_Mag",1];
b_nachschub_3 addmagazinecargoGlobal ["IEDUrbanBig_Remote_Mag",1];
b_nachschub_3 addmagazinecargoGlobal ["SmokeShellGreen",15];
b_nachschub_3 additemcargoGlobal ["ACE_DefusalKit",5];
b_nachschub_3 additemcargoGlobal ["ACE_M26_Clacker",5];
b_nachschub_3 additemcargoGlobal ["ACE_wirecutter",2];
b_nachschub_3 additemcargoGlobal ["ACE_key_lockpick",2];

b_nachschub_2 addweaponcargoGlobal ["launch_RPG7_F",1];
b_nachschub_2 addmagazinecargoGlobal ["RPG7_F",5];
b_nachschub_2 addmagazinecargoGlobal ["IEDUrbanSmall_Remote_Mag",1];
b_nachschub_2 addmagazinecargoGlobal ["IEDLandBig_Remote_Mag",1];
b_nachschub_2 additemcargoGlobal ["ACE_DefusalKit",5];
b_nachschub_2 additemcargoGlobal ["ACE_M26_Clacker",5];
b_nachschub_2 additemcargoGlobal ["ACE_wirecutter",2];
b_nachschub_2 addmagazinecargoGlobal ["SmokeShellGreen",15];

b_nachschub_1 addweaponcargoGlobal ["arifle_RPK12_F",1];
b_nachschub_1 addweaponcargoGlobal ["arifle_AK12_GL_F",1];
b_nachschub_1 addmagazinecargoGlobal ["75rnd_762x39_AK12_Mag_F",15];
b_nachschub_1 addmagazinecargoGlobal ["30Rnd_762x39_AK12_Mag_F",30];
b_nachschub_1 addmagazinecargoGlobal ["IEDUrbanSmall_Remote_Mag",2];
b_nachschub_1 addmagazinecargoGlobal ["IEDUrbanBig_Remote_Mag",2];
b_nachschub_1 additemcargoGlobal ["ACE_Clacker",5];
b_nachschub_1 additemcargoGlobal ["ACE_key_lockpick",2];

nil