#include "..\script_component.hpp"
//doc

params ["_logic"];

private _missionSector = synchronizedObjects _logic;

private _objectives =  missionNamespace getVariable [QEGVAR(mission,objectives), []];
EGVAR(OBJ,ID) = EGVAR(OBJ,ID) + 1;
private _objectId = EGVAR(OBJ,ID);
private _objectPos = getPos _logic;
private _objectType = call FUNC(getMissionType);

private _objectiveData = [_objectId, [["logic",  _logic], ["position", _objectPos], ["mission", _objectType]]];
_objectives set _objectiveData;
missionNamespace setVariable [QEGVAR(mission,objectives), _objectives];

_logic setVariable [QEGVAR(mission,objective), true];

#ifdef DEBUG_MODE
    [format["Mission objective %1 %2", _objectId, _objectPos], "Mission"] call FUNC(log);
    private _debugMarker = createMarker [format["DEBUG_Marker_%1", _objectId], getPos _logic];
    _debugMarker setMarkerShape "ICON";
    _debugMarker setMarkerType "Contact_pencilCircle1";
    _debugMarker setMarkerText format["[DEBUG] #%1 (%2)", _objectId, _objectType];
#endif

{
    private _nextMissionSector = _x;
    if !(_nextMissionSector getVariable [QEGVAR(Mission,Objective), false]) then {
        [_nextMissionSector] call EFUNC(mission,setObjective);
    };
    if ((count _missionSector == 1) && (_nextMissionSector getVariable [QEGVAR(Mission,Objective), false]) ) then {
        #ifdef DEBUG_MODE
            ["Profile done", "Mission"] call FUNC(log);
            GVAR(PROFILEDONE) = true;
        #endif
    };
} forEach _missionSector;

