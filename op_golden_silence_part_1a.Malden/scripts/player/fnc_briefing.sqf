private _mode = "mode" call BIS_fnc_getParamValue;

player createDiaryRecord ["Diary", ["Details",
    "Die Station wird elektrisch durch eine Stromleitung versorgt und hat zwei Norfallgeneratoren.
    Außerdem verläuft mit der Stromleitung auch die Telefonleitung. Eine Störung der Telefonleitung
    würde die Alarmierung der Unterstützungskräfte beim Flughafen um einige Minuten verzögern. Sie
    haben die Möglichkeit die Leitung entweder zu manipulieren (ACE Interaction) oder zu sprengen.
    Nach einem Ausfall des Stromes benötigen die Generatoren etwa zwei bis drei Minuten um zu starten.
    Die Generatoren können ebenfalls manipuliert (ACE Interaction) oder gesprengt werden.
    Gehen Sie bei einer Sprengung davon aus, dass Feindkräfte diese mit sehr hoher Wahrscheinlichkeit 
    mitbekommen und einen Alarm auslösen werden. Gehen Sie außerdem davon aus, dass der Alarm ausgelößt
    wird, wenn die Station für längere Zeit nicht mit Strom versorgt wird.</br>
    Die entlang des Zaunes partollierenden Wachen überprüfen regelmäßig die Integrität des Zaunes.
    Wir gehen davon aus, dass ein beschädigter Zaun oder Mauer die Patrollie dazu veranlassen wird,
    einen Alarm auszulösen.</br>
    Die Server befinden sich in der Funkzentrale. Am Laptop im Serverraum finden Sie möglicherweise
    Hinweise, welche Festplatten relevante Informationen enthalten, bevor Sie anfangen alle Festplatten
    aus den Servern auszubauen.
"]];

if (_mode == 2 || _mode == 1) then {
    player createDiaryRecord ["Diary", ["Auträge","
        Ziel: Zerstören Sie die Funkmasten in der Funkstation<br/>
        Optional: Entnehmen Sie dem Server Festplatten<br/>
        Ende: Lösen Sie sich vom Feind und weichen Sie in die Felsen im Süden aus.  
    "]];
};
if (_mode == 3 || _mode == 1) then {
    player createDiaryRecord ["Diary", ["Auträge","
        Ziel: Zerstören Sie die Flugabwehrstellung<br/>
        Ende: Lösen Sie sich vom Feind und weichen Sie in die Felsen im Süden aus.  
    "]];
};

player createDiaryRecord ["Diary", ["Feindlage Flughafen", "
    Auf dem Gelände des Flughafens befinden sich mehrere Kompanien an infanteristischen und
    motorisierten Feindkräften, diverse Helicopter und Flugzeuge inklusive Personal. Es ist nicht klar
    welche Kräfte zur Unterstützung der Funkstation bereit gestellt werden, doch rechnen Sie mit
    Vielem. Alle Truppen vom Flughafen sind mit Nachtsichtgeräten ausgestattet.
"]];

player createDiaryRecord ["Diary", ["Feindlage Luftabwehrstellung", "
    Die Luftabwehrstellung ist in zwei geteilt. Die beiden Stellungen liegen etwa 300m auseinander.
    Beide Stellungen verfügen über zwei Nahbereichsverteidigungssysteme. In der nördlicheren Stellung
    befinden sich zwei mobile Radars. Außerdem befinden sich zwei ZU-23, beide am nord-östlichen Rand
    der Stellung im Lager. Diese stellen wohl die größte Bedrohung für Sie dar. Hinzu kommen drei
    Sandsackbunker mit Infanteristen, einer im Süden, einer im Norden, einer im Osten. Ein weiterer
    Sandsackbunker mit einem HMG ist nach Westen ausgerichtet. Hinzu kommt einer Patrolie im Lager.
    Ein Scharfschütze ist auf dem Felsen am Südende des Lagers postiert. Im südlichere Lager stehen 
    neben den beiden Nahbereichsverteidigungssystemen noch zwei UAZ mit AA-Bewaffnung. Das Lager hat
    einen H-Barrier Turm im Süden und zwei Sandsackbunker im Norden am Eingang des Lagers. Desweiteren
    befindet sich im südlichen Lager ein Miltärcontainer weitere Combatanten nächtigen. Auf dem Dach
    des Containers stehen zwei Schützen mit NVGs. Alle anderen zur Zeit wachenden Kräfte in beiden
    Stellungen verfügen über keine NVGs.
"]];

player createDiaryRecord ["Diary", ["Feindlage Funkstation", "
    Auf dem Gelände der Station befinden sich etwa 20-30 Feindkräfte. Die Funkstation wird entlang
    des Zaunes durch drei Partollien gesichert. Die Wachposten am Nord- und Westeingang sind
    ebenfalls jeweils durch zwei Soldaten gesichert. Nörlich des Compound befinden sich die
    Wachbaracken, wo etwa die Hälfte der Wachkräfte nächtigt. Der Nordeingang des Zentralcompounds
    ist durch ein statiches MG gesichert. Der Westeingang wird durch ein zweier Team gesichert.
    Am Südende des Compounds steht ein besetzter Wachturm, der das Minenfeld überwacht. Innerhalb des
    Compound befinden sich ein hoher Wachturm mit einem MG und einem Scharfschützen. Desweiteren 
    patrouliert innehalb des Compounds zwei Soldaten. In der Funkzentral ist immer mindestens ein 
    Soldat mit den Personal. Alle Soldaten tragen Vesten und Waffen aus russischer Produktion. Bis auf
    die beiden Wachposten auf dem hohen Turm im Compound besitzt keiner der Soldaten ein Nachtsichtgerät.
"]];

player createDiaryRecord ["Diary", ["Feindlage Allgemein", "
    Die Insel ist komplett in der Hand von Feindkräften. Der Großteißteil der Feindkräfte sind am 
    Flughafen stationiert. In Ihrer AO befinden sich zwei weitere größere Stellungen - Ihr 
    Auftragsziel die Funkstation und eine Luftabwehrstellung. Entlang der Straßen in ihrer AO 
    patrolieren regelmäßig motorisierte Einheiten mit MG auflafetiert. Des weiteren sind in Ihrer AO
    mehrere feste Betonbunker welche sporadisch durch Truppen besetzt sind. Bis dato konnte unser
    Aufklärungsdienst keine mechanisierten oder gepanzerten Kräfte auf der Insel aufklären.
"]];

player createDiaryRecord ["Diary", ["Eigene Lage", "
    Sie landen mit Kräften an der Westküste der Insel an. Ein Sniperteam befindet
    sich bereits im Feld. Mit den Booten haben Sie einige Kisten mit Munition, Sprengstoff und
    Utilities zum Aufrüsten mitgebracht. Ihnen steht eine UCAV-Sentinel ohne Bewaffnung zur
    Verfügung. Ein weiteres Einsatzteam (KI) hat den Auftrag parallel zu Ihnen die Luftabwehrstellung
    zu neutralisieren. 
"]];

player createDiaryRecord ["Diary", ["Situation", "
    Es ist Zeit für eine Großoffensive. Malden ist eine vorgelagerte Insel welche als Aufklärungs-
    und Luftabwehrstützpunkt dient. Ziel der Gesamtoperation ist es die Insel zu nehmen und eine
    eigene Basis zu etablieren bevor der Feind weiß, wie ihm geschieht und vom Festland
    Unterstützungskräfte schicken kann, bzw. eine Gegenoffensive starten kann. Ihre Operation
    dient dazu die Kommunikation zum Festland zu unterbrechen und die Liftabwehrstellungen zu
    neutralisieren. Auch wenn die diplomatische Situation angespannt ist, gehen wir davon aus,
    dass der Feind zu diesem Zeitpunkt nicht mit einer Konfrontation rechnet und deswegen nur in
    der Nähe von militärischen Installationen mit Feindtruppen zu rechnen ist. Im Folgenden erhalten
    Sie ein detailiertes Briefing.
"]];
