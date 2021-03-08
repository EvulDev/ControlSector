#include "..\script_component.hpp"
//doc
params [
    "_logic",
    ["_missionType", "attack", [""]]
];

private _mission = _logic setVariable [QEGVAR(Mission,Type), _missionType];
_mission;