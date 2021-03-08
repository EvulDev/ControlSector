#include "..\script_component.hpp"
//doc

params ["_logic"];

#ifdef DEBUG_MODE
    ["Creating sector missions...", "Mission"] call FUNC(log);
#endif
GVAR(PROFILEDONE) = false;

EGVAR(OBJ,ID) = 0;
missionNamespace setVariable [QEGVAR(mission,objectives), createHashMapFromArray []];
_logic setVariable [QEGVAR(Mission,Active), true];
_logic call EFUNC(mission,setObjective);
