//Anfang des "setzScript.sqf"

Params ["_target", "_caller", "_id", "_parmArray"];

//If !(typeOf _caller isEqualTo "B_engineer_F") exitWith {hint "Du bist nicht berechtigt!"};

switch (_parmArray) do {
	/// Kleiner Bunker
	case 1: {[_caller, [1, 0, 0, 0]] call plank_deploy_fnc_init; [_target, _id] remoteExecCall ["removeAction", (allPlayers - (entities "HeadlessClient_F"))]};
  
	/// Sandsackwall Lang
	case 2: {[_caller, [0, 1, 0, 0]] call plank_deploy_fnc_init; [_target, _id] remoteExecCall ["removeAction", (allPlayers - (entities "HeadlessClient_F"))]};
  
	/// Beton Barriere
	case 3: {[_caller, [0, 0, 1, 0]] call plank_deploy_fnc_init; [_target, _id] remoteExecCall ["removeAction", (allPlayers - (entities "HeadlessClient_F"))]};
  
	/// Stacheldraht
	case 4: {[_caller, [0, 0, 0, 1]] call plank_deploy_fnc_init; [_target, _id] remoteExecCall ["removeAction", (allPlayers - (entities "HeadlessClient_F"))]};
};

//Ende des "setzScript.sqf"

/////////////////////////////////////////////
/*
1. In Datei "arma3_fortification.sqf" im Ordner "Plank" eingeben welche Objekte aus den Kisten o.ä. entnommen werden können soll.
	Anzahl dort eingetragener Objekte entspricht Anzahl "Kommastellen" in eckiger Klammer (case 1: {[_caller, [1, 0, 0, 0, ...]] call ...).
	Größe der eingetragenen Nummern = Anzahl möglicher entnehmbarer Objekte (z.b. case 1: {[_caller, [1, 0, 0, 0, ...]] call ... = Objekt 1 kann 1x aus Kiste 1 entnommen werden).
2. Anzahl Objekte = Anzahl Case.
3. Allen Objekten einen VarNamen geben, an denen der Addaction kleben soll.
4. In Init.sqf einfügen: 
		VarName addaction ["Erstes Objekt zum setzen", "scripts\setzScript.sqf", Nummer, 1.5, true, true, "", "typeOf _caller isEqualTo ""ClassName des Engeeniers"" ", 5]; B_engineer_F
		
VarName = Objektname, von dem etwas entnoimmen werden können soll.
Erstes Obj. zum setzen = Name des Objektes, welches entnommen werden können soll, z.B. Bunker.
Scripts\setzScript.sqf = Scriptname im Script ordner (fn_plankSetzen.sqf)
Nummer = CaseNr.
ClassName des Engineers = ClassName der UnitKlasse, welche die Fähigkeit bekommen, soll, etwas zu entnehmen.