Params [
	"_target",
	"_caller",
	"_id",
	["_arp", false]
];

if (_arp) then {
	if (!(_caller canAddItemToBackpack ["ARP_Objects_Laptop_M", 1])) then {
		hintSilent "Kein Platz im Rucksack oder kein Rucksack vorhanden!"
	} else {
		_caller addItemToBackpack "ARP_Objects_Laptop_M";
		sleep 1;
		titleText ["Eventuell kann es unser IT-Spezialist knacken!","PLAIN DOWN"]
	}
} else {
	deleteVehicle _target;
	sleep 1;
	titleText ["Eventuell kann es unser IT-Spezialist knacken!","PLAIN DOWN"]
};