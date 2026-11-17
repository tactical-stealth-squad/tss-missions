private _AI_mod = _this select 0;

switch (_AI_mod) do {
    case 0 : {
    	// Only VCOM
    	remoteExec ["VCM_fnc_VcomInit", 0];
    	{_x setVariable ["lambs_danger_disableAI", true]} foreach (units west)
    };
    case 1 : {}; // only LAMBS
    case 2 : {remoteExec ["VCM_fnc_VcomInit", 0]}; // LAMBS and VCOM
    case 3 : {{_x setVariable ["lambs_danger_disableAI", true]} foreach (units west)}  // None
}