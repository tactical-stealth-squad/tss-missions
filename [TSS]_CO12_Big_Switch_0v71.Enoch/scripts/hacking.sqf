Params ["_target", "_text"];

[
/* 0 object */                          _target,
/* 1 action title */                    _text,
/* 2 idle icon */                       "\a3\ui_f\data\IGUI\Cfg\HoldActions\holdAction_unbind_ca.paa",
/* 3 progress icon */                   "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
/* 4 condition to show */               "_this distance _target < 3",
/* 5 condition for action */            "_caller distance _target < 3",
/* 6 code executed on start */          {
                                                titletext ["Abdeckung abnehmen ...", "PLAIN"];
                                                sleep 2;
                                                titletext ["...Elektronik freilegen.", "PLAIN"];
                                                sleep 2;
                                                titletext ["Störsender einbauen ...", "PLAIN"]
                                        },
/* 7 code executed per tick */          {
                                            if (_this select 4 == 6) then {
                                                hintSilent "25%!";
                                            };
                                            if (_this select 4 == 12) then {
                                                hintSilent "50%!";
                                            };
                                            if (_this select 4 == 18) then {
                                                hintSilent "75%!";
                                            };
                                        },
/* 8 code executed on completion */     {
                                            [_this select 0, _this select 2] remoteExecCall ["bis_fnc_holdActionRemove", -2];
                                            hint "";
                                            sleep 1;
                                            _randomShuffle = [[1, 2, 3]] call CBA_fnc_shuffle;
                                            _random = selectrandom _randomShuffle;
                                            switch (_random) do {
                                                case 1: {
                                                    titletext ["... falsch eingebaut", "PLAIN"];
                                                    hacked=true;
                                                    PublicVariable "hacked";
                                                };
                                                case 2: {
                                                    titletext ["... falsch eingebaut", "PLAIN"];
                                                    hacked=true;
                                                    PublicVariable "hacked";
                                                 //[20, [speaker_1, speaker_2]] remoteExec ["Alarm_fnc_sound", 2]
                                                };
                                                case 3: {
                                                    titletext ["... erfolgreich eingebaut!", "PLAIN"];
                                                    {group _x deleteGroupWhenEmpty true} foreach [reinf_mech_1, reinf_mech_2, reinf_inf_2];
                                                    {deleteVehicleCrew _x} foreach [reinf_mech_1, reinf_mech_2];
                                                    deleteVehicle [reinf_mech_1, reinf_mech_2];
                                                    deleteVehicle (units reinf_inf_2);
                                                }
                                            }
                                        },
/* 9 code executed on interruption */   {
                                            hintSilent "!!!";
                                        },
/* 10 arguments */                      [],
/* 11 action duration */                45,
/* 12 priority */                       1,
/* 13 remove on completion */           true,
/* 14 show unconscious */               false
] call BIS_fnc_holdActionAdd;