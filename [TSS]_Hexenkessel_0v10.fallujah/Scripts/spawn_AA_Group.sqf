private _groupAA = createGroup east;

private _data = [
	["CUP_O_TK_INS_Soldier_FNFAL", [3194.57,5289.08,24.7487], [[-0.976099,0.217324,0],[0,0,1]]],
	["CUP_O_TK_INS_Soldier", [3205.9,5282.52,24.7487], [[0.57032,-0.821422,0],[0,0,1]]],
	["CUP_O_TK_INS_Soldier", [3204.63,5284.51,21.9487], [[0.468414,-0.883509,0],[0,0,1]]],
	["CUP_O_TK_INS_Soldier", [3199.46,5275.27,21.9487], [[-0.719266,-0.694734,0],[0,0,1]]],
	["CUP_O_TK_INS_Soldier_AR", [3217.49,5275.17,24.7487], [[0.939137,-0.343542,0],[0,0,1]]],
	["CUP_O_TK_INS_Soldier", [3198.12,5279.5,13.5487], [[-0.745041,-0.667019,0],[0,0,1]]],
	["CUP_O_TK_INS_Soldier_MG", [3208.52,5284.81,7.94872], [[-0.818406,-0.574641,0],[0,0,1]]],
	["CUP_O_TK_INS_Soldier", [3210.06,5285.77,10.7487], [[-0.747111,-0.6647,0],[0,0,1]]],
	["CUP_O_TK_INS_Soldier", [3194.96,5287.32,7.94872], [[-0.945271,0.326288,0],[0,0,1]]],
	["CUP_O_TK_INS_Soldier_AR", [3196.98,5286.64,10.7487], [[0.653785,0.756681,0],[0,0,1]]],
	["CUP_O_TK_INS_Soldier_GL", [3203.68,5288.69,16.3487], [[0.502079,-0.864822,0],[0,0,1]]],
	["CUP_O_TK_INS_Soldier", [3202.35,5292.52,19.1487], [[-0.0202109,-0.999796,0],[0,0,1]]],
	["CUP_O_TK_INS_Soldier_Enfield", [3210.09,5274.05,7.94872], [[-0.294438,0.955671,0],[0,0,1]]],
	["CUP_O_TK_INS_Soldier_AR", [3208.76,5271.81,12.0487], [[0,1,0],[0,0,1]]],
	["CUP_O_TK_INS_Soldier", [3207.99,5276.21,16.3487], [[0.769507,-0.638638,0],[0,0,1]]],
	["CUP_O_TK_INS_Soldier_AR", [3208.85,5272.06,20.4487], [[-0.345948,0.938254,0],[0,0,1]]]
];

{
	private _unit = _groupAA createUnit [_x select 0, [0,0,0], [], 0, "NONE"];
	_unit setVectorDirAndUp (_x select 2);
	_unit setPosASL (_x select 1);
	_unit disableAI "PATH";
	_unit setUnitPos selectRandom ["UP", "MIDDLE"];
	dostop _unit;

	// SKill
	_unit setskill ["spotDistance", 1];
	_unit setskill ["spotTime", 1];
	_unit setskill ["courage", 1];

	// no LAMBS and VCOM for editor units
	_unit setVariable ["lambs_danger_disableAI", true];
	_unit setVariable ["Vcm_Disable", true];

	// grr CFP and Alive ...
	_unit setVariable ["CFP_DisableRandom", true];
	_unit setVariable ["ALiVE_OverrideLoadout", true];

	_unit addEventhandler [
		"HIT",
		{
			if (side (_this select 1) isEqualTo east OR !alive (_this select 0)) exitWith {};
			(_this select 0) removeEventHandler ["HIT", _thisEventHandler];
			if !((_this select 0) checkAIFeature "PATH") then {(_this select 0) enableAI "PATH"};
			(_this select 0) doSuppressiveFire getPosASL (_this select 1);
		}
	];
	sleep 30;
} forEach _data;