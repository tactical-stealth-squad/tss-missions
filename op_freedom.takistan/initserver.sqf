/// Skill & Eventhandler///
{
	_x setskill ["spotDistance", 1];
	_x setskill ["spotTime", 1];
	_x setskill ["courage", 1];
	// Eventhandler for moving when hit
	_x addEventhandler [
		"HIT",
		{
			if (side (_this select 3) isEqualTo independent OR !alive (_this select 0) OR (vehicle (_this select 0) != (_this select 0))) exitWith {};
			(_this select 0) removeEventHandler ["HIT", _thisEventHandler];
			if !((_this select 0) checkAIFeature "PATH") then {(_this select 0) enableAI "PATH"};
			(_this select 0) doSuppressiveFire getPosASL (_this select 3);
			[(_this select 0), (_this select 3), 50, true] call CBA_fnc_taskAttack
		}
	]
} foreach (units independent);


// Eventhandler Support
private _id = [
	"SupportEH",
	{
		[_thisType, _thisId] call CBA_fnc_removeEventHandler;
		sleep 10;
		[3] spawn compile preprocessFileLineNumbers "scripts\spawn_tank.sqf"
	}
] call CBA_fnc_addEventHandlerArgs;

// Lambs
if (isClass (configFile >> "CfgPatches" >> "lambs_danger")) then {
	{
		if !(_x checkAIFeature "PATH" OR (vehicle _x != _x) or (side _x == west)) then {
			_x setVariable ["lambs_danger_disableAI",true]
		}
	} foreach AllUnits
};

// Tasks
call compile preprocessFileLineNumbers "scripts\tasks.sqf";

// + Magazines
box_ammo additemcargoGlobal ["CUP_20Rnd_TE1_Yellow_Tracer_762x51_SCAR",50];

// Loadout Officer
officer setUnitLoadout [["CUP_arifle_AKS_Gold","","","",["CUP_30Rnd_762x39_AK47_M",30],[],""],[],["hgun_Pistol_heavy_02_F","","","",["6Rnd_45ACP_Cylinder",6],[],""],["CUP_I_TKG_Khet_Partug_02",[["FirstAidKit",1],["ACE_quikclot",5],["ACE_epinephrine",1],["ACE_morphine",1],["ACE_tourniquet",1],["6Rnd_45ACP_Cylinder",2,6],["CUP_HandGrenade_M67",2,1]]],["CUP_V_OI_TKI_Jacket1_04",[["CUP_20Rnd_Subsonic_762x39_AMD63_M",2,20]]],[],"H_Bandanna_gry","G_Squares_Tinted",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch",""]]