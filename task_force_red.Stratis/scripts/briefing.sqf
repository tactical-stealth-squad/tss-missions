player createDiaryRecord ["Diary", ["Credits", "
by [=TSS=] Sion; updated by [=TSS=] joker7, zinki and Gearfield
"]];

player createDiaryRecord ["Diary", ["Info", "
Technischer Teleport am Müllhaufen an den Zelten am Startpunkt.<br/><br/>
"]];

player createDiaryRecord ["Diary",["Auftrag","
1.) Begeben Sie sich zum Old Outpost und suchen Sie nach dem Laptop des Zellenanführers, kopieren Sie die Festplatte und laden Sie den Virus hoch!<br/>
2.) Exfiltrieren Sie per Hubschrauber von LZ Bravo!
"]];

player createDiaryRecord ["Diary",["Mission","
Sie befinden sich in Ihrem <marker name=""respawn_west"">Camp TF Red</marker> nördlich des Einsatzgebietes. Begeben Sie sich zum <marker name=""FIA_base"">Old Outpost</marker>, säubern Sie sämtliche Gebäude und suchen Sie den Laptop des Zellenanführers. Ihre Aufgabe ist es, den Laptop zu hacken. Wir brauchen alle Daten, also kopieren Sie die gesamte Festplatte! Danach werden Sie einen Virus auf das Gerät spielen, in der Hoffnung, dass der Laptop später an das Netzwerk der Teroristen angeschlossen wird und wir somit dieses ausspionieren und/ oder lahmlegen können. Danach werden Sie von EAGLE-TWO an der <marker name=""exit1"">LZ BRAVO</marker> abgeholt.
"]];

player createDiaryRecord ["Diary",["Situation","
Wir haben ein Signal aus einem alten Außenposten auf der Insel Stratis empfangen. Es handelt sich um einen Laptop, der Daten auf bekannten Websites des Terrornetzwerkes FIA hochgeladen hat. Leider handelt es sich dabei hauptsächlich um wertlose Propaganda. Bevor wir den Laptop weiter durchsuchen konnten, wurde er wieder vom Netz genommen. Der Satellit, den wir auf diese Position ausgerichtet haben, zeigt allerdings auch, dass sich feindliche Truppen an dem Old Outpost aufhalten. Sieht nach einer Waffenlieferung aus. Ihre Aufgabe ist es, diesen Handel zu stoppen und die Daten vom Laptop zu extrahieren. Es könnte sich weitaus mehr darauf befinden, als das was wir bisher gefunden haben.<br/>
Zudem glauben wir, dass die FIA versucht an ein ""Gerät"" heran zu kommen, welches sie ohne weiteres für terroristische Anschläge nutzen könnten. Sollte bei dieser Handel ein ""Gerät"" beinhalten, gilt es auch dieses zu zerstören!
<br/><br/>
Die Insel Stratis wird durch den Feind stark bewacht. Seien Sie also vorsichtig und meiden sie, wenn möglich, deren Basis im Osten der Insel!
"]];

waitUntil {sleep 2; !alive Intel_1};
player createDiaryRecord ["Diary",["UPDATE EXFIL","
Wir haben den Exfil aufgrund Ihres neuen Auftrages verlegt!<br/>
Die Besatzung von EAGLE-TWO ist jedoch aktuell auf dem Lehrgang ""Vermeidung der vorzeitigen Beendigung von Missionen"". Gemäß unserer Aufklärung befinden sich an der Position allerdings zivile Boote, die Sie nutzen können. Setzen Sie sich mit den Booten Richtung Osten auf das offene Meer ab, eines unserer U-Boote wird Sie aufnehmen.
"]];

player createDiaryRecord ["Diary",["UPDATE Auftrag","
Das ""Gerät"" muss zerstört werden, bevor es zum Einsatz kommen kann!<br/>
Ihnen bleibt nichts anderes übrig, als in die feindliche Basis einzudringen und das ""Gerät"" zu zerstören!
"]];