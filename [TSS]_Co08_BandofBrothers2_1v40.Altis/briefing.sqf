_subject = player createDiarySubject ["made", "Credits"];
_log_briefing = player createDiaryRecord ["made", ["Missionsbauer", "
-------------------------------------------------------------------------------------<br/>

-------------------------------------------------------------------------------------<br/>
by =TSS= Para"]];

_diary3 = player createDiaryRecord ["Diary", ["Info", "
Eine Sprenung sämtlicher LKWs zwischen den Produktionsgebäuden sollten diese zerstören!<br/>
Technischer Teleport an Respawn - Markant: Müllhaufen am Tisch<br/><br/>
Greyhawk-Drone in Standby im Süden!
"]];

_diary2=player createDiaryRecord ["Diary", ["Mission", "
Sichern sie die Absturzstelle, damit die Leichen später sicher geborgen werden können. Wir wissen ihre Munition ist knapp, wir konnten jedoch einen feindlichen Munitionstransport ausmachen. Beschaffen sie sich dort Munition (Sprengladungen) und rücken dann auf die Fabrik vor. Zerstören sie die Produktionshallen. Eine Sprenung der Ammo- und Fuel-LKWs vor den Produktionsgebäude sollten diese zerstören. Die HMS Saratoga startet eine Greyhawk-Drone (2xGBU) zur Unterstützung. Weiteres folgt!<br/><br/>
Viel Erfolg!
"]];

_diary1=player createDiaryRecord ["Diary", ["Situation", "
Der Ghosthawk zum EXFIL wurde abgeschossen. Niemand hat den Absturz überlebt. Wir können die Leichen jetzt noch nicht bergen. Das erledigen wir später. Unsere Aufklärung wurde gut durch den Feind getäuscht. Die aktuellen Satellitenbilder zeigen gepanzerte Fahrzeuge und Luftabwehr. Die vermutete Produktionsstätte war wohl auch nur ein weiteres Chemiewaffenlager. Die eigentliche Fabrik befindet sich NNW ihrer jetztigen Position. Diese Fabrik muss zerstört werden. Der Luftraum ist zu unsicher für einen Bombenangriff! Sie erledigen das. In der Fabrik ist ein Waffenlager zu erkennen, dort sollten Sie genügend Sprengstoff finden. Wir arbeiten an EXFIL.
"]];

waitUntil {sleep 1; exfilHint};
_diary4 = player createDiaryRecord ["Diary", ["Data-Message 1", "
Hunter hier Overlord: Wir haben ein Safehouse für sie ausgemacht. Position auf Karte markiert. Ziehen sie, nach der Sprengung, dort unter und erwarten weitere Befehle. Feindliche Fahrzeuge können genutzt werden um schnell zu entkommen! Wir arbeiten an EXFIL. Overlord out!
"]];