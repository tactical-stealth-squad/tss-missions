//setSkill for ai on map from editor
//AI Skill  

_unit = _this select 0;
_level = _this select 1;

if (_level == 0) then {
	
	_unit setskill ["aimingAccuracy",0.01];
	_unit setskill ["aimingShake",0.01];
	_unit setskill ["aimingSpeed",0.01];
	_unit setskill ["spotDistance",0.3];
	_unit setskill ["spotTime",0.1];
	_unit setskill ["courage",0.03];
	_unit setskill ["reloadSpeed",0.2];
	_unit setskill ["commanding",0.5];
	_unit setskill ["general",0.3];
	vardebug2 = 0;
		
};
if (_level == 1) then {
	
	_unit setskill ["aimingAccuracy",0.01];
	_unit setskill ["aimingShake",0.02];
	_unit setskill ["aimingSpeed",0.1];
	_unit setskill ["spotDistance",0.3];
	_unit setskill ["spotTime",0.1];
	_unit setskill ["courage",0.1];
	_unit setskill ["reloadSpeed",0.3];
	_unit setskill ["commanding",0.5];
	_unit setskill ["general",0.3];
	vardebug2 = 1;
		
};
if (_level == 2) then {
	
	_unit setskill ["aimingAccuracy",0.2];
	_unit setskill ["aimingShake",0.2];
	_unit setskill ["aimingSpeed",0.2];
	_unit setskill ["spotDistance",0.2];
	_unit setskill ["spotTime",0.4];
	_unit setskill ["courage",0.3];
	_unit setskill ["reloadSpeed",0.3];
	_unit setskill ["commanding",0.6];
	_unit setskill ["general",0.7];
	vardebug2 = 2;
	

};
if (_level == 3) then {
	
	_unit setskill ["aimingAccuracy",0.03];
	_unit setskill ["aimingShake",0.02];
	_unit setskill ["aimingSpeed",0.04];
	_unit setskill ["spotDistance",0.3];
	_unit setskill ["spotTime",0.5];
	_unit setskill ["courage",0.4];
	_unit setskill ["reloadSpeed",0.4];
	_unit setskill ["commanding",0.7];
	_unit setskill ["general",0.7];
	vardebug2 = 3;

};

if (_level == 4) then {
	
	_unit setskill ["aimingAccuracy",0.4];
	_unit setskill ["aimingShake",0.3];
	_unit setskill ["aimingSpeed",0.5];
	_unit setskill ["spotDistance",0.4];
	_unit setskill ["spotTime",0.5];
	_unit setskill ["courage",0.7];
	_unit setskill ["reloadSpeed",0.5];
	_unit setskill ["commanding",0.9];
	_unit setskill ["general",0.9];
	vardebug2 = 4;

};