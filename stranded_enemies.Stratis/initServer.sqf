// Skill
{
	if (side _x isEqualTo independent) then {
		_x setskill ["spotDistance", 1];
		_x setskill ["spotTime", 1];
		_x setskill ["courage", 1]
	}
} foreach allUnits;

sleep 60;

// Reveal Mines
{
	independent revealMine _x
} foreach allMines;

// Loadout und EH for officer
officer setUnitLoadout [["CUP_arifle_FNFAL5061_wooden","","","",["CUP_20Rnd_762x51_FNFAL_M",20],[],""],[],["CUP_hgun_Deagle","","","",["CUP_7Rnd_50AE_Deagle",7],[],""],["CUP_I_B_PMC_Unit_16",[["ACE_quikclot",5],["ACE_epinephrine",3],["ACE_morphine",2],["ACE_tourniquet",2],["ACE_packingBandage",5],["ACE_fieldDressing",5],["ACE_salineIV_250",2],["ACE_Cellphone",1],["CUP_HandGrenade_M67",2,1]]],["CUP_V_JPC_medical_rngr",[["CUP_7Rnd_50AE_Deagle",3,7],["CUP_20Rnd_762x51_FNFAL_M",4,20]]],[],"CUP_H_SLA_BeretRed","G_Bandanna_aviator",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
officer addEventhandler ["KILLED",{[(_this select 0), [("<t color=""#ffb730"">" + ("Untersuchen") + "</t>"), {Hintsilent "Das scheint Rhakim Faizal zu sein!"; [(_this select 0), (_this select 2)] remoteExecCall ["removeAction", allPlayers]}, nil, 1.5, true, true, "", "true", 3]] remoteExecCall ["addaction", allPlayers]}]