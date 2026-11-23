#include "script_components.hpp"

/* preprocess functions */
PREP(addHelmetAction);
PREP(playPrayerSpeaker);
PREP(addBriefing);

/* add helmet interaction to targets */
[t1] call FUNC(addHelmetAction);
[t2] call FUNC(addHelmetAction);
[] call FUNC(addBriefing); 

/* add prayers */
{
    [_x, 4, 41] call FUNC(playPrayerSpeaker);
} forEach [
    speaker_01, speaker_02, speaker_03, speaker_04, speaker_05
];