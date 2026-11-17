["CBA_loadingScreenDone",
    {
        titleCut ["", "BLACK FADED", 999]; 
        [
            [
                ["South Takistan","<t align = 'center' shadow = '1' size = '1.0'>%1</t><br/>"], 
                ["20180528 1602","<t align = 'center' shadow = '1' size = '0.7'>%1</t><br/>"]
            ] 
        ] spawn BIS_fnc_typeText; 

        [{titleCut ["", "BLACK IN", 5];}, [], 8] call CBA_fnc_waitAndExecute;
    }
] call CBA_fnc_addEventHandler;