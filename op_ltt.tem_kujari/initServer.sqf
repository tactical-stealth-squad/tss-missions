//--------------BaseDecoration----------------------------
{	_x disableAI 'PATH'; //otherwise last unit in group will run away
} forEach (units grp_guard);

sleep 12;

{	_x setUnitLoadout [["arifle_SPAR_02_blk_F","","","optic_Arco_blk_F",["ACE_30Rnd_556x45_Stanag_M995_AP_mag",30],[],""],[],["hgun_Pistol_heavy_01_F","","","",["11Rnd_45ACP_Mag",15],[],""],["U_B_CombatUniform_mcam",[["ACE_elasticBandage",12],["ACE_packingBandage",5],["ACE_EarPlugs",1],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_quikclot",2],["11Rnd_45ACP_Mag",1,15]]],["V_PlateCarrier1_rgr_noflag_F",[["ACE_salineIV_500",2],["ACE_splint",2],["ACRE_PRC343",1],["HandGrenade",2,1],["SmokeShell",2,1],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",10,30]]],[],"H_HelmetSpecB_paint1","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
	_x disableAI 'ALL';
} forEach (units grp_guard);

//--------------Enemy----------------------------
GEA_fnc_loadout = compile preprocessFileLineNumbers "loadout.sqf";

{
	[_x] call GEA_fnc_loadout;
} forEach (units east);