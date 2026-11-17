//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: TODO: Author Name
//////////////////////////////////////////////////////////////////

sleep 15;

// Loadingtext
if (time > 15) then
{
    [] Spawn {
        // Info text
        [str("Operation Polarnacht") ,  str("Thirsk, 01:05")] spawn BIS_fnc_infoText;
        sleep 20;
        [str("Mission by NIK"),str("Brigade 2010")] spawn BIS_fnc_infoText;
        sleep 20;
        [str("www.brigade2010.de")] spawn BIS_fnc_infoText
    }
}