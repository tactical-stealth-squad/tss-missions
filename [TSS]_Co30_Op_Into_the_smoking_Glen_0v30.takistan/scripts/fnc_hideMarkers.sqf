
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
  "z1", "z2", "z3", 
  "s43", "s44", "s45", "s46", "s47", "s48", "s49", "s50", "s51", "s52" 
];

/* Markerliste, Markernamen müssen im Format marker_x sein */

{
  if (!(player in _playerList)) then {
    _x setMarkerAlphaLocal 0;
  } else {
    _x setMarkerAlphaLocal 1;
  }
} forEach [
  "CP_001", "CP_28", "CP_31", "CP_52",
  "_HA_01", "_HA_02", "_HA_03", "_CAS_HA_005",
  "HA_28", "HA_56", "HA_55", "CAS_HA_005",
  "_TC_24", "_TC_58", "_TC_59", "_TC_60", "_TC_61", "_TC_241", "_TC_591", "_TC_592",
  "TC_24", "TC_59",
  "_HP_01", "_HP_02", "_HP_03", "_HP_04", "_HP_05", "_HP_06", "_HP_07", "_HP_08", "_HP_09", "_HP_10", "_HP_11", "_HP_12", "_HP_13",
  "HP_01", "HP_02", "HP_03", "HP_04", "HP_05", "HP_06", "HP_07", "HP_08", "HP_09", "HP_10", "HP_11", "HP_12", "HP_13",
  "CTR_RANGER_ONE", "_CTR"
];