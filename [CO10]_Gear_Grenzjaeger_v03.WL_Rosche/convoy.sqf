//Simple Convoy Script by Tova modifed by Gearfield (removed pushThrough)

// Put the script code in an sqf file, trigger, init field or whatever you fancy, then call it with:
// convoyScript = [convoyGroup] spawn TOV_fnc_SimpleConvoy;
// Optional parameters are also available :
// convoyScript = [convoyGroup, convoySpeed, convoySeparation] spawn TOV_fnc_SimpleConvoy;

params ["_convoyGroup",["_convoySpeed",50],["_convoySeparation",50]];
_convoyGroup setFormation "COLUMN";
{	(vehicle _x) limitSpeed _convoySpeed*1.15;
	(vehicle _x) setConvoySeparation _convoySeparation;
} forEach (units _convoyGroup);
(vehicle leader _convoyGroup) limitSpeed _convoySpeed;
while {sleep 5; !isNull _convoyGroup} do {
	{
		if ((speed vehicle _x < 5) && (behaviour _x != "COMBAT")) then {
		(vehicle _x) doFollow (leader _convoyGroup);
		};	
	} forEach (units _convoyGroup)-(crew (vehicle (leader _convoyGroup)))-allPlayers;
{(vehicle _x) setConvoySeparation _convoySeparation;} forEach (units _convoyGroup);
};