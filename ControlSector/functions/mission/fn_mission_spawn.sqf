#include "..\script_component.hpp"
//doc

params ["_logic"];

[format ["Sector %1 (%2) spawning troops...", getPos _login, _logic], "Sector Spawn"] call FUNC(info);
[getPos _logic, east, 1] call BIS_fnc_spawnGroup;
