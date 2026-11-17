["task1", east, ["Die Amerikaner haben unsere <marker name=""task_1"">Ölraffinerie</marker> eingenommen und dort einen Stützpunkt errichtet! Säubern Sie das Gebiet und zerstören Sie den Funkturm!","Funkturm und Raffinerie",""], getMarkerPos "task_1", "Created", 5, false, true, "attack"] call BIS_fnc_setTask;

["task0", east, ["Wenn alle Stricke reißen, entkommen Sie sofort Richtung <marker name=""task_0"">Shapur</marker>!","Notfallplan", ""], getMarkerPos "task_0", "Created", 0, false, true, "run"] call BIS_fnc_setTask;

["taskop1", east, ["Mackiri soll im Besitz der Verträge sein! Entweder hat er Sie bei sich oder in seiner Villa! Finden Sie diese!", "Optional: Verträge", ""], objNull, "Created", 1, false, true, "search"] call BIS_fnc_setTask;

["task4", east, ["Entkommen Sie nach erfolgreicher Arbeit Richtung <marker name=""task_0"">Shapur<marker>!", "Richtung Shapur", ""], getMarkerPos "task_0", "Created", 2, false, true, "move"] call BIS_fnc_setTask;

["task3", east, ["Heute morgen kam der Munitionsnachschub der Amerikaner an. Dieser wird von der C130 in einen LKW verladen und per Konvoi in die US Base gebracht! Der Konvoi fährt gegen ca. halb 10 vom <marker name=""airfield"">Flughafen</marker> los!", "Munitionslastwagen", ""], getMarkerPos "airfield", "Created", 3, false, true, "destroy"] call BIS_fnc_setTask;

["task2", east, ["Die Colonels der US Army (Col. Davis) und Takistanischen Armee (Col. Mackiri) treffen sich jeden Tag für ihre zwielichtigen Geschäfte in der <marker name=""task_2"">Villa</marker> bis ca. 10 Uhr. Danach fliegt Col. Davis in die <marker name=""usa"">US Base</marker>! Eliminieren Sie Beide!", "Die Colonels", ""], getMarkerPos "task_2", "Created", 4, false, true, "kill"] call BIS_fnc_setTask;

nil