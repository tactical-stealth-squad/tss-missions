#define PREFIX TSS
#define COMPONENT MIS_OGS
#define CUSTOM_FOLDER scripts
//#define DEBUG_MODE_FULL
//#define DISABLE_COMPILE_CACHE

#include "\x\cba\addons\main\script_macros_mission.hpp"

#ifdef DEBUG_MODE_FULL
    #define DMSG(MSG) player globalChat MSG
    #define DMSG_1(MSG,ARG1) TRACE_1(MSG,ARG1); DMSG(PFORMAT_1(MSG,ARG1))
    #define DMSG_2(MSG,ARG1,ARG2) TRACE_2(MSG,ARG1,ARG2); DMSG(PFORMAT_2(MSG,ARG1,ARG2))
    #define DMSG_3(MSG,ARG1,ARG2,ARG3) TRACE_3(MSG,ARG1,ARG2,ARG3); DMSG(PFORMAT_3(MSG,ARG1,ARG2,ARG3))
    #define DMSG_4(MSG,ARG1,ARG2,ARG3,ARG4) TRACE_4(MSG,ARG1,ARG2,ARG3,ARG4); DMSG(PFORMAT_4(MSG,ARG1,ARG2,ARG3,ARG4))
#else
    #define DMSG(MSG)
    #define DMSG_1(MSG,ARG1)
    #define DMSG_2(MSG,ARG1,ARG2)
    #define DMSG_3(MSG,ARG1,ARG2,ARG3)
    #define DMSG_4(MSG,ARG1,ARG2,ARG3,ARG4)
#endif

#define FUNCS(var1,var2) TRIPLES(ADDON,fnc,DOUBLES(var1,var2))

#ifdef DISABLE_COMPILE_CACHE
    #define PREPS(path,fncName) FUNCS(path,fncName) = compile preprocessFileLineNumbers QUOTE(PATHTOF_SYS(,,path)\DOUBLES(fnc,fncName.sqf))
#else
    #define PREPS(path,fncName) FUNCS(path,fncName) = QUOTE(PATHTOF_SYS(,,path)\DOUBLES(fnc,fncName.sqf)) call SLX_XEH_COMPILE
#endif

#define AAA_TARGETS \
    radar_0, radar_1, \
    centurio_0, centurio_1, centurio_2, centurio_3, \
    aa_0, aa_1, aa_2, aa_3

#define RADIO_TARGETS tower_dummy_1, tower_dummy_2
