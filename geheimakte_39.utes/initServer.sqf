{_x setMarkerAlpha 0} foreach ["Area1", "area2", "area4", "area5", "area6", "z3", "z4", "delete_1", "delete_2"];

if (isNil "start") then {start = false;};

// SKill and EH when unit get`s hit
{
	_x setskill ["spotDistance", 1];
	_x setskill ["spotTime", 1];
	_x setskill ["courage", 1];

	_x addItem "NVGoggles_OPFOR";
	_x assignItem "NVGoggles_OPFOR";
	// Eventhandler for moving when hit
	_x addEventhandler [
		"HIT",
		{
			if (side (_this select 3) isEqualTo EAST OR !alive (_this select 0)) exitWith {};
			(_this select 0) removeEventHandler ["HIT", _thisEventHandler];
			if !((_this select 0) checkAIFeature "PATH") then {(_this select 0) enableAI "PATH"};
			(_this select 0) doSuppressiveFire getPosASL (_this select 3);
			[(_this select 0), (_this select 3), 50, true] call CBA_fnc_taskAttack;
		}
	];

	(vehicle _x) disableTIEquipment true;
} foreach (units east);

// keine Bewebung
private _static_groups = [];
{
	_static_groups append _x;
} foreach [units z1_stat, units z2_stat, units flug_stat];

{
	_x setUnitPos "UP";
	dostop _x;
	_x disableAI "PATH";
	_x removeMagazines "smokeshell";
} foreach _static_groups;

// no LAMBS/VCOM for boat
{
	_x setVariable ["lambs_danger_disableAI",true];
	_x setVariable ["Vcm_Disable",true];
} foreach (units o_boot);

// Box Loadout
call compile preprocessFileLineNumbers "scripts\box.sqf";

// Tasks
call compile preprocessFileLineNumbers "scripts\tasks.sqf";

// mortar
mortar1 setVariable ["ace_mk6mortar_exclude", true];
mortar1 setVehicleAmmoDef 1;
(gunner Mortar1) setVariable ["lambs_danger_disableAI",true];
(group (gunner Mortar1)) setVariable ["Vcm_Disable",true];

// Reveal Mines
{
	east revealMine _x;
} foreach AllMines;

// Intel
{
	[
		_x,
		"RscAttributeDiaryRecord",
		[
			"Geheimakte",
			"== Prototypenstandort ==<br/><br/><img image='image\Prototyp.jpg'/><br/><br/>Die Dokumente enthalten Baupläne von einem Flugzeugprototypen, der auf Utes stationiert ist. Der Prototyp scheint sich in einem der Hangars am Flughafen zu befinden. Da Sie nun die Baupläne haben, zerstören Sie den verbleibenden Prototypen! Suchen Sie notfalls nach geeigneter Ausrüstung!<br/><br/>",
			""
		]
	] call bis_fnc_setServerVariable;
	_x setvariable ["RscAttributeDiaryRecord_texture", "image\BlauPause.jpg", true];

	//Diary entry shared with.. follows BIS_fnc_MP target rules
	//this setVariable ["recipients", west, true];

	//Sides that can interact with intelObject
	//_thisIntel setVariable ["RscAttributeOwners", [west], true]
} foreach [task_1, task_1_1];

// Random hide/delete of intel files/airplane
private _hideIntel = selectRandom [task_1, task_1_1];
_hideIntel hideobjectGlobal true;
_hideIntel enableSimulationGlobal false;
_hideIntel allowDamage false;
deleteVehicle selectRandom [o_target_1, o_target_2];