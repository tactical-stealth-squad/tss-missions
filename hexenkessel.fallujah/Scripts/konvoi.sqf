"mrk_conv_end" setMarkerAlpha 1;
"mrk_conv" setMarkerAlpha 1;
{_x hideObjectGlobal false;} foreach [conv_1, conv_2, conv_3];

[
	//Displays 3 subtitles, with 15 seconds in between them
	[name helper, "Wir haben euch einen notdürftigen Konvoi zusammengestellt.", 0],
	[name helper, "Dieser wird auch in die Nähe des Regierungsviertels bringen und dort anschließend auf euch warten!", 15],
	[name helper, "Sobald Ihr im Regierungsviertel fertig seid, bringt euch der Konvoi raus!", 30]
] remoteExec [
	"BIS_fnc_EXP_camp_playSubtitles",
call CBA_fnc_players
];