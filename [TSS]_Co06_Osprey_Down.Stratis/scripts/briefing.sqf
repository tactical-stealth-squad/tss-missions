_subject = player createDiarySubject ["made", "Credits"];
_log_briefing = player createDiaryRecord ["made", ["Missionsbauer", "
-------------------------------------------------------------------------------------<br/>

-------------------------------------------------------------------------------------<br/>
by =TSS= Para"]];


//////////////////////////////////////////////////Notizen//////////////////////////////////////////////////////
_diary3 = player createDiaryRecord ["Diary", ["Info", "
Technischer Teleport am Müllhaufen neben der Ruine.<br/><br/>
"]];

 _diary2=player createDiaryRecord ["Diary", ["Mission", "
 - Osprey-Wrack sichern.<br/>
 - Piloten finden und retten.<br/>
 - Zum Exfil gelangen und ausfliegen!
 "]];

_diary1=player createDiaryRecord ["Diary", ["Situation", "
Eine Osprey ist über Stratis abgeschossen worden. Wir haben das GPS-Signal des Datenschreibers aufgefangen und konnten die Position der Ospry bestimmen. Die zwei Piloten werden vermisst. Wir haben kurz ein Notsignal empfangen, können aber keinen Kontakt herstellen! Wir gehen davon aus, dass die Piloten noch leben!<br/>
Verstärkte Feindaktivitäten im Gebiet ausgemacht.<br/><br/>

Sie werden bei Nacht eingefolgen und per Fallschirm abgesetzt. Höhe 4000m.<br/><br/>

Viel Erfolg Hunter, Overlord Ende!
"]];

waitUntil {sleep 1; task1};
_diary4 = player createDiaryRecord ["Diary", ["Data-Message 1", "Hunter hier Overlord: Laut eines Informanten wurden die Piloten gefangen genommen und zu einem kleinen Vorposten gebracht! Ziel auf Karte markiert! Kl?rt das ab! Overlord Ende..."]];

waitUntil {sleep 1; task2};
_diary5 = player createDiaryRecord ["Diary", ["Data-Message 2", "Hunter hier Overlord: Wir haben einen Funkspruch vom Gefangenenlager Camp-Maxwell abgefangen. Einer der Piloten wurde wegen Spionage hingerichtet. Der andere wird gerade verh?rt! Holen sie ihn da raus! Achtung das Lager ist stark bewacht! Ziel auf Karte markiert! Overlord Ende..."]];

/////////////////////////////////////////////////Missionsziele/////////////////////////////////////////////////