player createDiaryRecord ["Diary", ["Credits","
- Original (idea) by =TSS= Para-Medic<br/>
- Changed by [=TSS=] zinki<br/>
- Thanks to [FHW] Gearfield for checking the loadouts (own and enemy)<br/><br/>
"]];

player createDiaryRecord ["Diary", ["Hinweise","
- Der Medic hat die Fähigkeiten eines Doktors; Nähzeug und PAK verbrauchen sich nicht.<br/>
- Sie können Wunden im Feld flicken und dich durch Handauflegen in allen Lazaretten (o. ä.) wieder fit machen (je nach Einstellungen der serverconfig!).<br/>
- Als Spezialeinheit weiß jeder, wie man IVs legt - auch sich selbst (je nach Einstellungen der serverconfig!).<br/><br/>

- Tec﻿hnischer Teleport (ACE Interaktion) markant: Müllhaufen am Respawnpunkt.<br/>
- LAMBS und VCOM aktiv; Mission nur mit Vanilla-Assets gebaut; Notfallszeus verbaut.<br/><br/>

- Die Funkverbindung wird im Military Container per Holdaction am PC manipuliert.<br/>
- Die Radpanzer sind mit einem Eventhandler (HitPart) versehen und platzen, sofern mit der MAAW, METIS oder RPG gewisse Positionen (HitParts) getroffen werden.<br/>
Gute Chancen ist ein direkter Treffer des Turrets; ggf. sind zwei Schuss notwendig.<br/>
- Das FLIR der METIS ist bei Nacht broken - keine Texturen (danke BI); aufgrund von quasi Vollmond sollte gut auf Sicht geschossen werden können.<br/>
- Mission endet per Trigger entweder wenn alle tot sind (FAILED) oder der Hubschrauber den Exfil erreicht hat (SUCCEEDED).<br/>
Es ist nur relevant, dass der Hubschrauber überlebt und den Exfil erreicht.
"]];

player createDiaryRecord ["Diary", ["Ausrüstung", "
Alles was Sie am Mann haben.
"]];

player createDiaryRecord ["Diary", ["Führungsunterstützung", "
keine
"]];

player createDiaryRecord ["Diary", ["Einsatzunterstützung", "
keine
"]];

player createDiaryRecord ["Diary", ["Durchführung", "
Gemäß Auftrag und Führung.
"]];

player createDiaryRecord ["Diary", ["Auftrag", "
Primärziel: Erbeuten Sie den Hubschrauber und entkommen Sie über das <marker name = ""mrk_escape"">offene Meer</marker>. Das Primärziel darf nicht zerstört werden.<br/>
- Die SAM und CRAM Stellungen müssen hierzu ebenfalls zerstört werden.<br/>
- Das restliche Team kann zurück zu den Booten und mit diesen exfiltrieren oder findet ggf. eine andere Möglichkeit.<br/><br/>

Sekundärziel: Die Baupläne finden und entwenden.<br/><br/>

Optional: Manipulieren Sie die Funkverbindung, damit keine Unterstützung von den Outposts bzw. Flughafen gerufen werden kann.<br/>
Unsere IT-Spezialisten berichtet, dass nur der markierte Funkturm für die militärische Kommunikation auf der Insel genutzt wird.<br/>
Da auf der Insel regelmäßig - auch nächtliche - Kampfübungen durchgeführt werden, sollten kleinere Feuergefechte nach der Funkmanipulation nicht auffallen.
"]];

player createDiaryRecord ["Diary", ["Zivile Lage", "
Keine Zivilisten im Einsatzgebiet.
"]];

player createDiaryRecord ["Diary", ["Vorläufige Aufklärung", "
An der <marker name = ""mrk_HQ"">Airstation</marker> sind mehrere Fireteams und bis zu zwei Radpanzer stationiert.<br/>
Als AA-Sicherung für komplett Stratis sind bis zu drei SAM-Stellungen sowie bis zu zwei CRAM positioniert.<br/>
Schweres Gerät in Form von MBTs wird nicht vermutet.<br/><br/>

Am <marker name = ""mrk_target_op"">Funkturm</marker> sollte maximal Feindstärke in Fireteamstärke vorzufinden sein.<br/><br/>

Als Support für die Amerikaner stehen in den beiden Outposts (<marker name = ""mrk_sup_car_2"">LZ Connor</marker> und <marker name = ""mrk_sup_car_1"">Camp Tempest</marker>) maximal je ein Fireteam und je ein ATV mit Waffenaufbau sowie eine A10 am <marker name = ""mrk_sup_plane"">Flughafen</marker> zur Verfügung.
"]];

player createDiaryRecord ["Diary", ["Lage", "
Die Yankees haben unseren geheimen Stützpunkt auf Utes infiltriert, unseren Prototypen zerstört und die Baupläne entwendet. Nun testen sie selbst auf Stratis an der <marker name = ""mrk_HQ"">Airstation Mike-26</marker> einen Prototypen; wir hatten ein Flugzeug, sie haben einen Hubschrauber. Die oberste Führung vermutet, dass zum Teil unsere Waffensysteme und Technik mit in die Konzeption ihres Prototypen flossen. Es ist selbstverständlich, dass Mütterchen Russland mit dieser Schmach nicht Leben kann und wir den Pindosy einen Denkzettel verpassen müssen.<br/><br/>

Sie sind als Spetsnaz in der Nacht bei starken Bodennebel unerkannt in der <marker name = ""mrk_start"">Keiros Bay</marker> per Schlauchboote angelandet.<br/><br/>

Viel Erfolg.
"]];

nil