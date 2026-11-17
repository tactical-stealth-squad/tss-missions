diag_log "################################## Devils Castle ##################################";
// VCOM
[] spawn VCM_fnc_VcomInit;
// Intel
if (isServer OR HasInterface) then {
	[intel_igla] call compile preprocessFileLineNumbers "Scripts\intel_igla.sqf";
	[intel_boss] call compile preprocessFileLineNumbers "Scripts\intel_boss.sqf";
};