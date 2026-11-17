private _vehicle = _this select 0;

private _apcLoadout = {
	private _apc = _this select 0;

	clearweaponcargoGlobal _apc;
	clearmagazinecargoGlobal _apc;
	clearitemcargoGlobal _apc;
	clearBackpackCargoGlobal _apc;

	_apc addmagazinecargoGlobal ["CUP_30Rnd_Sa58_M", 30];
	_apc addmagazinecargoGlobal ["CUP_10Rnd_762x54_SVD_M", 20];
	_apc addmagazinecargoGlobal ["150Rnd_762x54_Box", 20];
	_apc addmagazinecargoGlobal ["CUP_HandGrenade_RGD5", 10];
	_apc addmagazinecargoGlobal ["SmokeShell", 20];
	_apc addmagazinecargoGlobal ["RPG7_F", 5];
	_apc addmagazinecargoGlobal ["CUP_30Rnd_9x39_SP5_VIKHR_M", 10];
	_apc additemcargoGlobal ["ACE_wirecutter", 1];
	_apc additemcargoGlobal ["ACE_EntrenchingTool", 2];
	_apc additemcargoGlobal ["ACE_key_lockpick", 4];
};

if (_vehicle isEqualTo 0) then {deleteVehicle b_apc; [b_apc_2] call _apcLoadout;};
if (_vehicle isEqualTo 1) then {deleteVehicle b_apc_2; [b_apc] call _apcLoadout;};