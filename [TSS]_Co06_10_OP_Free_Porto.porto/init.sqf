diag_log "########### CoXX Missionsname ############";
/// VCOM
[] spawn compile preprocessFileLineNumbers "Vcom\VcomInit.sqf";

if (isServer) then {
	_id = [
		"Intel",
		{
			_unit = _this select 0;
			//["Intel", _id] call CBA_fnc_removeEventHandler;
			//Remove action global
			[_unit, 0,["ACE_MainActions", "Search for Intel"]] remoteExecCall ["ace_interact_menu_fnc_removeActionFromObject", 0];
			// Create object
			_obj = createVehicle ["Intel_File1_F", _unit, [], 0, "CAN_COLLIDE"];
			//Diary picture
			_obj setVariable ["RscAttributeDiaryRecord_texture","images\Colonel.paa", true];
			//Diary heading and text
			[_obj,"RscAttributeDiaryRecord",["Dairy","Die erbeutete Ausrüstung der Piraten wird am Hafen von Porto gelagert. Der Typ, den ihr sucht, hält sich vermutlich in einer der Häuser ganz in der Nähe auf. Ich konnte mal ein Foto von ihm machen, hätte mich beinahe den Kopf gekostet. Ich hoffe ihr bekommt ihn vor die Flinte.",""]] call BIS_fnc_setServerVariable;
			//Diary entry transmitted too when picked up.. follows BIS_fnc_MP rules
			_obj setVariable ["recipients", west, true];
			//Sides that can interact with intelObject
			_obj setVariable ["RscAttributeOwners", [west], true]
		}
	] call CBA_fnc_addEventHandler;
};