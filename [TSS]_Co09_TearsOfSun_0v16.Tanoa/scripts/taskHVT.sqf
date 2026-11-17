private _unit = _this select 0;
"marker_20" setMarkerAlphaLocal 1;
_unit createDiarySubject ["Briefing Dr. Kendricks", "Briefing Dr. Kendricks"];

_unit createDiaryRecord ["Briefing Dr. Kendricks", ["Technische Hinweise","
|| !Diese Information ist nur Ihnen bekannt und sichbar! ||<br/><br/>

Warten Sie bis alle fünf Flüchtlinge in den Jeep eingestiegen sind. Steigen Sie erst danach als Fahrer ein!<br/>
Parken Sie direkt vor der Werkstatt am besten in östlicher Fahrrichtung. Steigen Sie aus und entfernen Sie sich ein paar Meter vom Fahrzeug.
"]];

_unit createDiaryRecord ["Briefing Dr. Kendricks", ["Hinweise - Storytelling","
|| !Diese Information ist nur Ihnen bekannt und sichbar! ||<br/><br/>

Entscheiden Sie selbst, ob Sie wissen, wie man mit einer Waffe umgeht (bspw. ehemaliger Großwildjäger in Afrika).
"]];

_unit createDiaryRecord ["Briefing Dr. Kendricks", ["Auftrag","
|| !Diese Information ist nur Ihnen bekannt und sichbar! ||<br/><br/>

Bringen Sie die fünf Flüchtlinge und den Jeep zum <marker name = ""marker_20"">Übergabepunkt</marker>.<br/>
Kehren Sie danach zurück zum <marker name = ""marker_12"">Camp</marker> und warten Sie auf das Exfil-Team.
"]];

_unit createDiaryRecord ["Briefing Dr. Kendricks", ["Lage","
|| !Diese Information ist nur Ihnen bekannt und sichbar! ||<br/><br/>

Sie führen seit mehrern Jahren als Ableger von Ärzte ohne Grenzen ein Flüchtlingslager. Sie konnten bisher vielen Flüchtlingen helfen und zuletzt sind noch fünf im Camp zur ärztlichen Behandlung. Diese konnte weitestgehend abgeschlossen werden.<br/><br/>

Aufgrund der kürzlichen Aufstände ist es Ihnen nicht mehr möglich das Camp zu führen. Zum eigenen Schutz werden Sie von einer Spezialeinheit der Amerikaner exfiltriert.<br/><br/>

Damit die restlichen Flüchtlinge nicht das gleiche Schicksal wie viele andere Bewohner der Insel ereilt, konnten Sie lokale Hilfe organisieren. Diese wird die Flüchtlinge zu einem Geheimversteck mit begrenzter Kapazität bringen.<br/>
Die verbleibenden Flüchtlinge wissen schon Bescheid und werden in den nächsten fünf Minuten in Ihren Jeep steigen. Am Übergabepunkt wird - sobald Sie ausgestiegen sind - Ihr Jeep samt Flüchtlingen übernommen.
"]];

nil