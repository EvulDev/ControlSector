#include "..\script_component.hpp"
//doc
params ["_logic"];

private _mission = _logic getVariable [QEGVAR(Mission,Type), "attack"];
_mission;