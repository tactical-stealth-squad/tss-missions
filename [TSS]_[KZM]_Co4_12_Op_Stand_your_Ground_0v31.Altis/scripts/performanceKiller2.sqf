/* 	Trigger: NICHT auf Wiederholbar setzen!
		Activation: PerfKiller = True;
					[] spawn compile preprocessFileLineNumbers "scripts\performanceKiller.sqf";
		Cooldown: auf 0 lasen!
	
	Modul: Auf Repeat setzen!
	Condition: PerfKiller
	
	1. Zeile = Wiederholungen
	2. Sleep = Cooldown 

*/
for"_i" from 0 to 10 do
{
	if (PerfKiller2) then {PerfKiller2 = false};
	sleep 180;
	PerfKiller2 = true;
	sleep 60
};