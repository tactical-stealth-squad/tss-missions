// ACE Medical
force ace_medical_useLocation_PAK = 3;
force ace_medical_useLocation_SurgicalKit = 3;

// ACE Vehicle Lock
force ace_vehiclelock_lockVehicleInventory = true;

// Lmabs
if (isClass (configFile >> "CfgPatches" >> "lambs_danger")) then {
	force lambs_danger_radio_backpack = 1200
};