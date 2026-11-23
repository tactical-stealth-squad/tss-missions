diag_log "########### Co16 Monument ############";

{
	_x addAction ["Befreien", "scripts\addaction\hostage.sqf", nil , 1.5, true, true, "", "(_this distance _target) < 3"];
	_x setCaptive true;
	_x disableAI "Move";
	removeAllWeapons _x;
	removeAllItems _x;
	removeAllAssignedItems _x;
	removeUniform _x;
	removeVest _x;
	removeBackpack _x;
	removeHeadgear _x;
	removeGoggles _x;
} foreach [general_1, general_2, general_3];