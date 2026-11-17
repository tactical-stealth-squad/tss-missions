//--------------BaseDecoration----------------------------
model setPos [17625.95,17281.05,-4.3]; 
[model, [270.830,0.942,21.049]] call BIS_fnc_setObjectRotation; 

base setPos [17626.12,17281.06,1.446];

{	_x disableAI 'PATH'; //otherwise last unit in group will run away
} forEach (units grp_guard);

sleep 10;

[model, stick] remoteExecCall ["BIS_fnc_attachToRelative", 0];
[base, stick] remoteExecCall ["BIS_fnc_attachToRelative", 0];
[model, 0.02] remoteExecCall ["setObjectScale", 0, true];
[base, 0.22] remoteExecCall ["setObjectScale", 0, true];

sleep 2;

{	_x setUnitLoadout [["CUP_arifle_M16A2","","","",["CUP_30Rnd_556x45_Stanag",30],[],""],[],[],["CUP_U_B_BDUv2_DCU_US",[]],["CUP_V_B_Interceptor_Base_M81",[]],[],"CUP_H_PASGTv2_desert","",[],["ItemMap","","ItemRadioAcreFlagged","ItemCompass","ItemWatch",""]];
	_x disableAI 'ALL';
} forEach (units grp_guard);

//--------------Enemy----------------------------
GEA_fnc_loadout = compile preprocessFileLineNumbers "loadout.sqf";

private _head = ["AfricanHead_01","AfricanHead_02","AfricanHead_03"];
private _voice = ["CUP_D_TK","CUP_D_Male01_TK","CUP_D_Male02_TK","CUP_D_Male03_TK","CUP_D_Male04_TK","CUP_D_Male05_TK"];
private _pitch = [0.8,0.9,1,1.1,1.2];

{	[_x, selectRandom _head] remoteExec ["setFace", 0, true];
	[_x, selectRandom _voice] remoteExec ["setSpeaker", 0, true];
	[_x, selectRandom _pitch] remoteExec ["setPitch", 0, true];
	[_x] call GEA_fnc_loadout;
} forEach units independent;

{	_x disableAI 'PATH';
} forEach [driver_1,driver_2,driver_3,driver_4];


//--------------Target----------------------------
private _pos = selectRandom [pos_1,pos_2,pos_3,pos_4,pos_5];

trgt setVehiclePosition [_pos, [], 0];
trgt setDir (getDir _pos);

trg_safe setPos (getPos trgt);
safe = false;

//--------------HousePatrol----------------------------
{	[_x] execVM "HousePatrol.sqf";
} forEach (units grp_pat_1);

{	[_x] execVM "HousePatrol.sqf";
} forEach (units grp_pat_2);

sleep 30;

//--------------Adapt mission to slots----------------------------
if ((isNil "pilot_1") and (isNil "pilot_2")) then {
	{deleteVehicle (objectParent _x); deleteVehicle _x;} forEach (units grp_support_tec_1);
	{deleteVehicle (objectParent _x); deleteVehicle _x;} forEach (units grp_support_tec_2);
	{deleteVehicle (objectParent _x); deleteVehicle _x;} forEach (units grp_support_tec_3);
	{deleteVehicle (objectParent _x); deleteVehicle _x;} forEach (units grp_support_truck);
};