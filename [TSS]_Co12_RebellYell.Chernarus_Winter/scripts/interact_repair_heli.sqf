Params ["_object", "_EngineerClass"];

private _repair_SLG = [
	"repair_heli_SLG",
	"Repair Slingload",
	["a3\ui_f\data\igui\cfg\actions\repair_ca.paa", "#FFFFFF"],
	{
		Params ["_target", "_player", "_actionParams"];

		private _config = (ConfigFile >> "ACE_Repair" >> "Actions" >> "MiscRepair");

		// Player Animation
		private _callerAnim = [getText (_config >> "animationCaller"), getText (_config >> "animationCallerProne")] select (stance _player == "PRONE");
		_player setVariable ["ACE_repair_selectedWeaponOnrepair", currentWeapon _player];

		// Cannot use secondairy weapon for animation
		if (currentWeapon _player == secondaryWeapon _player) then {
		    _player selectWeapon (primaryWeapon _player);
		};

		private _wpn = ["non", "rfl", "pst"] select (1 + ([primaryWeapon _player, handgunWeapon _player] find (currentWeapon _player)));
		_callerAnim = [_callerAnim, "[wpn]", _wpn] call CBA_fnc_replace;
		if (vehicle _player == _player && {_callerAnim != ""}) then {
		    if (primaryWeapon _player == "") then {
		        _player addWeapon "ACE_FakePrimaryWeapon";
		    };
		    if (currentWeapon _player == "") then {
		        _player selectWeapon (primaryWeapon _player); // unit always has a primary weapon here
		    };

		    if !(_player call ace_common_fnc_isSwimming) then {
		        if (stance _player == "STAND") then {
		            _player setVariable ["ace_repair_repairPrevAnimCaller", "amovpknlmstpsraswrfldnon"];
		        } else {
		            _player setVariable ["ace_repair_repairPrevAnimCaller", animationState _player];
		        };
		        [_player, _callerAnim] call ace_common_fnc_doAnimation;
		    };
		};

		private _soundPosition = _player modelToWorldVisualWorld (_player selectionPosition "RightHand");
		["Acts_carFixingWheel", _soundPosition, nil, 50] call ace_common_fnc_playConfigSound3D;

		[
			15,
			[_target, _player],
			{
				params ["_arg"];
				_args params ["_target", "_player"];

				if (primaryWeapon _player == "ACE_FakePrimaryWeapon") then {
				    _player removeWeapon "ACE_FakePrimaryWeapon";
				};
				if (vehicle _player == _player && {!(_player call ace_common_fnc_isSwimming)}) then {
				    [_player, _player getVariable ["ace_repair_repairPrevAnimCaller", ""], 2] call ace_common_fnc_doAnimation;
				};
				_player setVariable ["ace_repair_repairPrevAnimCaller", nil];

				private _weaponSelect = (_player getVariable ["ace_repair_selectedWeaponOnrepair", ""]);
				if (_weaponSelect != "") then {
				    _player selectWeapon _weaponSelect;
				} else {
				    _player action ["SwitchWeapon", _player, _player, 299];
				};

				_target setHitPointDamage ["hitwinch", 0];
			},
			{
				params ["_arg"];
				_args params ["_target", "_player"];
				if (primaryWeapon _player == "ACE_FakePrimaryWeapon") then {
				    _player removeWeapon "ACE_FakePrimaryWeapon";
				};
				if (vehicle _player == _player && {!(_player call ace_common_fnc_isSwimming)}) then {
				    [_player, _player getVariable ["ace_repair_repairPrevAnimCaller", ""], 2] call ace_common_fnc_doAnimation;
				};
				_player setVariable ["ace_repair_repairPrevAnimCaller", nil];

				private _weaponSelect = (_player getVariable ["ace_repair_selectedWeaponOnrepair", ""]);
				if (_weaponSelect != "") then {
				    _player selectWeapon _weaponSelect;
				} else {
				    _player action ["SwitchWeapon", _player, _player, 299];
				};
			},
			"... repair slingload ..."
		] call ace_common_fnc_progressBar;
	},
	{
		Params ["_target", "_player", "_actionParams"];
		_EngineerClass = _actionParams;
		(_target getHitPointDamage "hitwinch" > 0) && (_player getVariable ["ACE_IsEngineer", 0] > _EngineerClass) && [_player, ["ToolKit"]] call ace_repair_fnc_hasItems && [_player] call ace_repair_fnc_isNearRepairVehicle;
	},
	{},
	_EngineerClass
] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions"], _repair_SLG] call ace_interact_menu_fnc_addActionToObject;

private _repair_full = [
	"repair_heli_full",
	"Repair Full",
	["a3\ui_f\data\igui\cfg\actions\repair_ca.paa", "#FFFFFF"],
	{
		Params ["_target", "_player", "_actionParams"];

		private _config = (ConfigFile >> "ACE_Repair" >> "Actions" >> "MiscRepair");

		// Player Animation
		private _callerAnim = [getText (_config >> "animationCaller"), getText (_config >> "animationCallerProne")] select (stance _player == "PRONE");
		_player setVariable ["ACE_repair_selectedWeaponOnrepair", currentWeapon _player];

		// Cannot use secondairy weapon for animation
		if (currentWeapon _player == secondaryWeapon _player) then {
		    _player selectWeapon (primaryWeapon _player);
		};

		private _wpn = ["non", "rfl", "pst"] select (1 + ([primaryWeapon _player, handgunWeapon _player] find (currentWeapon _player)));
		_callerAnim = [_callerAnim, "[wpn]", _wpn] call CBA_fnc_replace;
		if (vehicle _player == _player && {_callerAnim != ""}) then {
		    if (primaryWeapon _player == "") then {
		        _player addWeapon "ACE_FakePrimaryWeapon";
		    };
		    if (currentWeapon _player == "") then {
		        _player selectWeapon (primaryWeapon _player); // unit always has a primary weapon here
		    };

		    if !(_player call ace_common_fnc_isSwimming) then {
		        if (stance _player == "STAND") then {
		            _player setVariable ["ace_repair_repairPrevAnimCaller", "amovpknlmstpsraswrfldnon"];
		        } else {
		            _player setVariable ["ace_repair_repairPrevAnimCaller", animationState _player];
		        };
		        [_player, _callerAnim] call ace_common_fnc_doAnimation;
		    };
		};

		private _soundPosition = _player modelToWorldVisualWorld (_player selectionPosition "RightHand");
		["Acts_carFixingWheel", _soundPosition, nil, 50] call ace_common_fnc_playConfigSound3D;

		[
			60,
			[_target, _player],
			{
				params ["_arg"];
				_args params ["_target", "_player"];

				if (primaryWeapon _player == "ACE_FakePrimaryWeapon") then {
				    _player removeWeapon "ACE_FakePrimaryWeapon";
				};
				if (vehicle _player == _player && {!(_player call ace_common_fnc_isSwimming)}) then {
				    [_player, _player getVariable ["ace_repair_repairPrevAnimCaller", ""], 2] call ace_common_fnc_doAnimation;
				};
				_player setVariable ["ace_repair_repairPrevAnimCaller", nil];

				private _weaponSelect = (_player getVariable ["ace_repair_selectedWeaponOnrepair", ""]);
				if (_weaponSelect != "") then {
				    _player selectWeapon _weaponSelect;
				} else {
				    _player action ["SwitchWeapon", _player, _player, 299];
				};

				_target setDamage 0;
			},
			{
				params ["_arg"];
				_args params ["_target", "_player"];
				if (primaryWeapon _player == "ACE_FakePrimaryWeapon") then {
				    _player removeWeapon "ACE_FakePrimaryWeapon";
				};
				if (vehicle _player == _player && {!(_player call ace_common_fnc_isSwimming)}) then {
				    [_player, _player getVariable ["ace_repair_repairPrevAnimCaller", ""], 2] call ace_common_fnc_doAnimation;
				};
				_player setVariable ["ace_repair_repairPrevAnimCaller", nil];

				private _weaponSelect = (_player getVariable ["ace_repair_selectedWeaponOnrepair", ""]);
				if (_weaponSelect != "") then {
				    _player selectWeapon _weaponSelect;
				} else {
				    _player action ["SwitchWeapon", _player, _player, 299];
				};
			},
			"... full repair ..."
		] call ace_common_fnc_progressBar;
	},
	{
		Params ["_target", "_player", "_actionParams"];
		_EngineerClass = _actionParams;
		(damage _target < 0.51) && (damage _target > 0) && (_player getVariable ["ACE_IsEngineer", 0] > _EngineerClass) && [_player, ["ToolKit"]] call ace_repair_fnc_hasItems && [_player] call ace_repair_fnc_isNearRepairVehicle;
	},
	{},
	_EngineerClass
] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions"], _repair_full] call ace_interact_menu_fnc_addActionToObject;

nil