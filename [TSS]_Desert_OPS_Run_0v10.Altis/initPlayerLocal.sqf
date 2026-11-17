_null = [] execVM "diary.sqf";		// diary tabs

addMissionEventHandler ["teamSwitch",{
     [] execVM "diary.sqf";
}]; 

player setCustomAimCoef 0.2;
player addMPEventhandler ["MPRespawn", {player setCustomAimCoef 0.2}];

player setUnitRecoilCoefficient 0.2;
player addEventHandler ["Respawn", {player setUnitRecoilCoefficient 0.2}];