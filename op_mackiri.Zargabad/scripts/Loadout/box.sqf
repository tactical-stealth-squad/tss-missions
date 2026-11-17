/// Clear Cargo
{
  clearweaponcargoGlobal _x;
  clearmagazinecargoGlobal _x;
  clearitemcargoGlobal _x;
  clearBackpackCargoGlobal _x;
} foreach [o_box_ied, o_box_mun, o_box_Launcher, b_veh_spw];
// b_box_ied
o_box_ied addmagazinecargoGlobal ["IEDUrbanSmall_Remote_Mag",2];
o_box_ied addmagazinecargoGlobal ["IEDLandSmall_Remote_Mag",2];
o_box_ied addmagazinecargoGlobal ["IEDUrbanBig_Remote_Mag",2];
o_box_ied addmagazinecargoGlobal ["IEDLandBig_Remote_Mag",2];
o_box_ied addmagazinecargoGlobal ["SatchelCharge_Remote_Mag",2];
o_box_ied addmagazinecargoGlobal ["ClaymoreDirectionalMine_Remote_Mag",2];
o_box_ied addmagazinecargoGlobal ["ATMine_Range_Mag",2];
o_box_ied addmagazinecargoGlobal ["APERSBoundingMine_Range_Mag",2];
o_box_ied addmagazinecargoGlobal ["SLAMDirectionalMine_Wire_Mag",2];
o_box_ied addmagazinecargoGlobal ["DemoCharge_Remote_Mag",2];
o_box_ied addmagazinecargoGlobal ["APERSMine_Range_Mag",2];
o_box_ied additemcargoGlobal ["ACE_DefusalKit",5];
o_box_ied additemcargoGlobal ["ACE_M26_Clacker",2];
o_box_ied additemcargoGlobal ["ACE_Clacker",2];
// b_box_mun
o_box_mun addmagazinecargoGlobal ["16Rnd_9x21_Mag",10];
o_box_mun addmagazinecargoGlobal ["CUP_30Rnd_762x39_AKM_bakelite_desert_M",15];
o_box_mun addmagazinecargoGlobal ["CUP_30Rnd_762x39_AK103_bakelite_M",10];
o_box_mun addmagazinecargoGlobal ["CUP_10Rnd_762x54_SVD_M",20];
o_box_mun addmagazinecargoGlobal ["150Rnd_762x54_Box",20];
o_box_mun addmagazinecargoGlobal ["CUP_HandGrenade_RGD5",10];
o_box_mun addmagazinecargoGlobal ["SmokeShell",20];
o_box_mun additemcargoGlobal ["ACE_wirecutter",1];
o_box_mun additemcargoGlobal ["ACE_CableTie",2];
// Launcher
o_box_Launcher addweaponcargoGlobal ["CUP_launch_RPG7V",2];
o_box_Launcher addmagazinecargoGlobal ["CUP_PG7V_M",5];
o_box_Launcher addmagazinecargoGlobal ["CUP_AT13_M",5];
o_box_Launcher addmagazinecargoGlobal ["CUP_PG7VR_M",5];

nil