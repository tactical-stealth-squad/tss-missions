if !(isServer) exitWith {};

clearweaponcargoGlobal (_this select 0);
clearmagazinecargoGlobal (_this select 0);
clearitemcargoGlobal (_this select 0);

(_this select 0) addmagazinecargoGlobal ["IEDUrbanSmall_Remote_Mag", 2];
(_this select 0) additemcargoGlobal ["ACE_DefusalKit", 5];
(_this select 0) additemcargoGlobal ["ACE_Clacker", 1];
(_this select 0) additemcargoGlobal ["ACE_packingBandage", 5];
(_this select 0) additemcargoGlobal ["ACE_elasticBandage", 5];
(_this select 0) additemcargoGlobal ["ACE_wirecutter", 1];
(_this select 0) additemcargoGlobal ["ACE_morphine", 5];
(_this select 0) additemcargoGlobal ["ACE_epinephrine", 5];
(_this select 0) additemcargoGlobal ["ACE_key_lockpick", 2];
(_this select 0) additemcargoGlobal ["ACE_DefusalKit", 1];
(_this select 0) addmagazinecargoGlobal ["SmokeShellPurple", 5];
(_this select 0) addmagazinecargoGlobal ["ACE_M84", 5];

nil