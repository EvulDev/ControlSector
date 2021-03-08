#include "..\script_component.hpp"
/*
 * Author: CPL.Brostrom.A
 * Print objective data
 *
 * Arguments:
 * 0: Indentifier <STRING>
 *
 * Example:
 * call FUNC(getObjectiveData)
 *
 */

params [["_indentifier", "", ["", 0]]];

private _data = missionNamespace getVariable [QEGVAR(mission,objectives), []];

_data;