#include "..\script_component.hpp"
//doc
params ["_logic"];

//[west, ["task"], ["Seek and destroy all enemy in the area.", "Attack Target", "attack"], getPos _logic, "CREATED", -1] call BIS_fnc_taskCreate;

[_logic] call EFUNC(mission,spawn);
