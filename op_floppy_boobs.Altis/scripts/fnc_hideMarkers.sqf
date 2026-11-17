
/* Für alle unsichtbar */
/*{
  _x setMarkerAlphaLocal 0;
} forEach [
  "marker_pat_nord",
  "marker_attack",
  "marker_pat_sued",
  "marker_blue_detect",
  "marker_wave_B"
];
*/
/* Nur für Spieler in der Liste sichtbar */
/* Erstelle Spielerliste */
private _playerList = [];
{
  if (!isNil _x) then {
    _playerList pushBack (call compile _x);
  };
}forEach [
  /* Variablennamen der Einheiten */
  "z1", "z2", "s51", "s52", "s53", "s54", "s55", "s56", "s57", "s58"
];

/* Markerliste, Markernamen müssen im Format marker_x sein */
if (!(player in _playerList)) then {
  {
    _x setMarkerAlphaLocal 0;
  } forEach [
    /* Markernamen hier */
    "_MedEvac_TC_001", "_MedEvac_TC_002", "MEDEVAC_TC_001", 
	"_ACP_01", "_ACP_02",
	"CP_01", "CP_001", "CP_02", "CP_002", "CP_03", "CP_04", "CP_05", "ACP_01", "ACP_02", 
	"_HA_01", "_HA_02", "_HA_03", "_HA_04", "_HA_05", "_HA_06", "_HA_07", "_HA_08", "_CAS_HA_01",
	"HA_01", "HA_02", "HA_03", "HA_04", "HA_05", "HA_06", "HA_07", "HA_08", "CAS_HA_01",
	"_TC_01", "_TC_02", "_TC_03", "_TC_032", "_TC_033", "_TC_040", "_TC_042", "_TC_05", "_TC_052", "_TC_06",
	"TC_01", "TC_012", "TC_02", "TC_022", "TC_03", "TC_04", "TC_05",
	"HP_01", "HP_02", "HP_03", "HP_04", "HP_05", "HP_06", "HP_07", "HP_08", "HP_09", "HP_10", "HP_11", "HP_12",
	"_HP_01", "_HP_02", "_HP_03", "_HP_04", "_HP_05", "_HP_06", "_HP_07", "_HP_08", "_HP_09", "_HP_10", "_HP_11", "_HP_12",
	"_W1", "_W2", "_W3", "_W4", "_W5", "_W6", "_W7", "_W8", "_W9", "_W10", "_W11", "_W12",
	"AMSL_01", "AMSL_02", "AMSL_03", "AMSL_04", "AMSL_05", "AMSL_06", "CCZONE_AMSL", "CCZONE_AMSL_2",
	"_CCZONE", "CCZONE"
  ];
};
