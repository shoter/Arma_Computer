/*  Computer_USR_getGroup
	Author: Shoter

	Description:
	Get visibility of the group

	Parameter(s):
		1: Computer (Object)
		2: String - group

	Returns:
	group of the user
*/
#define RETURN_ERROR objNull 
private ["_computer", "_group", "_groups" ];
_computer = _this select 0;
_group     = _this select 1;
_groups    = _computer getVariable "Computer_USR_Groups";
player globalChat format ["%1     %2", _group, _groups];
{
	_locGroup = _x select 0;
	_locVis = _x select 2;
	if(_locGroup isEqualTo _group) exitWith { _locVis };
} forEach _groups; 