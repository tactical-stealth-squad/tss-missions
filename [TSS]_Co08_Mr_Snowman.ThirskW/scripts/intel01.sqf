_intelObj = _this select 0;

if (isServer) then {
	//Diary Title and Description (//[ Title, Description, "" ])
	[
		_intelObj,
		"RscAttributeDiaryRecord",
		[
			"Info",
			"Tagebucheintrag vom 16. Februar 2016.<br /><br />Sie sind hinter mir her. Ich weiß es. Sie verfolgen mich.<br />Ich hätte mich niemals auf die Zusammenarbeit mit den diesen Spezialeinheiten einlassen sollen ...<br />Jetzt habe Ich mir mein eigenes Grab gegraben. Dummkopf ... <br /> <br />Sei es wie es ist. Ich stehe jetzt hier am verabredeten Treffpunkt und warte auf die Amerikaner. Sollte Ich es nicht schaffen, und die Russen mich vorher erledigen, dann möchte Ich wenigsten hier aufgeschrieben haben, was Ich weiß.<br /><br />Als das Militär die Kontrolle über die Insel übernahm, gabe es 3 Funkstationen, die Kontakt zum Festland möglich machten.<br /><marker name=""marker_03"">Mansikkaniemi</marker> stellte sich nach kurzer Zeit als unbrauchbar dar. Die Technik ist veraltet und schrottreif. <br /><marker name=""marker_04"">Radiomäki</marker>, auf der Halbinsel im Südosten befand sich zu dem Zeitpunkt ebenfalls in einem desolaten Zustand. Ich denke nicht, dass Sie es innerhalb der Kurzen Zeit brauchbar gemacht haben. Der Schneesturm wird sein übriges getan haben, um ihnen die Arbeit zu erschweren. <br /><br />Die einzige Station, die die mögliche Infrastruktur bietet, schnell einsatzbereit zu sein, ist ein <marker name=""marker_06"">kleiner Komplex</marker> ca 500 Meter nordöstlich von <marker name=""marker_05"">Sudensuoja</marker>.<br />Alles andere ist unrealistisch. In den letzten Tagen konnten Wir vermehrte Transporte auf der Route dorthin beobachten.<br />Was genau transportiert wurde wissen wir nicht, allerdings war mit Sicherheit eine mobile Radar-/Funkstation dabei. Nicht zuletzt desshalb denken wir, dass die Russen über diesen Weg ihre Kommunikationswege nach Moskau aufrecht erhalten.<br /> <br />Mitstreiter machten sich vorgestern auf den Weg, den Komplex aus zu spionieren. Sie sollten es geschafft haben, detaillierte Informationen zu sammeln.<br />Leider waren Sie bei dem Gefecht um <marker name=""marker_07"">Gibelh</marker> dabei... Ich wüsste nicht, dass es jemand von uns überlebt hätte. Die Informationen müssten bei einer der dort gefallenen Kameraden zu finden sein.<br /> <br />Ich persoenlich werde einen Teufel tun, dorthin zu gehen. Ich lege keinen großen Wert darauf, mich erschießen zu lassen.<br />Diese ueberheblichen Muskelprotze jedoch könnten die Informationen gut gebrauchen, bevor Sie sich um die Funkstation kümmern...<br /><br />-Ende des Eintrags-",
			""
		]
	] call bis_fnc_setServerVariable;

	// Intel picture
	_intelObj setvariable ["RscAttributeDiaryRecord_texture","img\Tagebucheintrag.jpg",true];
};

//Optional scripted event handlers
// Has to be local to every client! BISwiki is wrong in his example
//Add intel object scripted event that systemchats to all clients when found and by who
[
	_intelObj,
	"IntelObjectFound",
	{
		params["_object", "_foundBy" ];
		"marker_07" setMarkerAlphaLocal 1;
		hintSilent "Auftragsupdate";
		private _diary = _foundBy createDiaryRecord ["Diary", ["UPDATE: Auftrag", "Gelangen Sie nach <marker name=""marker_07"">Gibelh</marker> und suchen Sie nach möglichem Intel!"]];
	}
] call BIS_fnc_addScriptedEventHandler;

// Returnvalue
nil