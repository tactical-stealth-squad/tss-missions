////////////////////////////////////////////////
//                  BCM                       //
////////////////////////////////////// by DÄZ //


private _objet_Hack = BCM_Action_Obj;
password_elec = with uiNamespace do {ctrlText (findDisplay 1984 displayCtrl 1400)};

if (password_elec == DAZ_mdp_courant) then {

	[_objet_Hack,"DAZ_mdp_ok"] remoteExec ["say3d"];

	closeDialog 1984;
	_objet_Hack setObjectTextureGlobal [0, "DAZ_BCM_POWER_PLANT\images\hack_Acces_ok.paa"];

	sleep 2;
	[] spawn BCM_code

} else {

	//playSound "DAZ_mdp_erreur";
	[_objet_Hack,"DAZ_mdp_erreur"] remoteExec ["say3d"];

	closeDialog 1984;

	_objet_Hack setVariable ["BCM_hack_1", false, true];
	_objet_Hack setObjectTextureGlobal [0, "DAZ_BCM_POWER_PLANT\images\hack_Acces_Refu.paa"];

	sleep 2;
	_objet_Hack setObjectTextureGlobal [0, "image\WinLogIN.jpg"];

};
