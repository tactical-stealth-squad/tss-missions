params ["_player"];

cutText ["Click somewhere on the map to jump from there", "PLAIN"];

openMap true;

addMissionEventHandler ["MapSingleClick", {
	params ["_units", "_pos", "_alt", "_shift"];

	{
		_x addBackpack "B_Parachute";
		_x setPosATL [(_pos select 0) + selectRandom [0,10,15,20] , (_pos select 1) + selectRandom [0,10,15,20], 3000  + selectRandom [0,10,15,20] ];
	} forEach units (group player);

	openMap false;

	waitUntil {!visibleMap}; // Wait until map is closed, either by ESC/M or map click
	removeMissionEventHandler ["MapSingleClick",_thisEventHandler];
}];


/// brains Skript

private _server_jump = {
	params["_center", "_units"];


	private _time_between_jumps = 1.5;
	private _plane_speed = 300 / 3.6; // 300km/h
	private _jump_height = 3000;

	// create position for jump position from a plane flying 300km/h per hour in a random direction
	private _unit_count = count _units;
	private _total_distance = _plane_speed * _time_between_jumps * _unit_count;
	private _distance_between_units = _total_distance / _unit_count;
	private _dir = random 360;

	private _normalized_offset_vector = [sin _dir, cos _dir];
	private _unit_offset_vector = _normalized_offset_vector vectorMultiply _distance_between_units;
	private _start_position = [_center#0, _center#1] vectorAdd (_normalized_offset_vector vectorMultiply (-1 * _total_distance / 2));

	{
		private _idx = _forEachIndex;	
		private _pos_2d = _start_position vectorAdd (_unit_offset_vector vectorMultiply _idx);

		private _pos = [_pos_2d#0, _pos_2d#1, _jump_height];
		private _time = _time_between_jumps * _idx;

		["mission_local_jump", [_x, _time, _pos], owner _x] call CBA_fnc_ownerEvent; 	
	} forEach _units;
};

private _local_jump = {
	params["_unit", "_sleep", "_pos"];	
	
	[
		{
			params["_unit", "_pos"];
			_unit addBackpack "B_Parachute";
			_unit setPosASL _pos;
		},
		[_unit, _pos],
		_sleep
	] call CBA_fnc_waitAndExecute;	
};

["mission_server_jump", _server_jump] call CBA_fnc_addEventHandler;
["mission_local_jump", _local_jump] call CBA_fnc_addEventHandler;

private _action = [	
	"mission_para_drop", 
	"ParaJump", 
	"", 
	{
		params ["_target", "_player", "_actionParams"];

		cutText ["Click somewhere on the map to jump from there", "PLAIN"];
		openMap true;

		addMissionEventHandler ["MapSingleClick", {
			params ["_units", "_pos", "_alt", "_shift"];

			["mission_server_jump", [_pos, units group player]] call CBA_fnc_serverEvent;

			openMap false;

			// Wait until map is closed, either by ESC/M or map click
			[
				{!visibleMap},
				{removeMissionEventHandler ["MapSingleClick", _this];},
				_thisEventHandler
			] call CBA_fnc_waitUntilAndExecute;

		}];

	},
	{
		true  
	}
] call ace_interact_menu_fnc_createAction;

["CAManBase", 1, ["ACE_SelfActions"], _action, true] call ace_interact_menu_fnc_addActionToClass;