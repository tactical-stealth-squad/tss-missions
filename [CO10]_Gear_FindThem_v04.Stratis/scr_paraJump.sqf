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
