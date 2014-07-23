/*
	Computer_RIGHTS_IsInGroup
	Author: Shoter

	Description:
	

	Parameter(s):
		1: Computer (Object) - Computer
		2: STRING - Group - Group to check if is in group
		3: STRING - Group - other group

	Returns:
	true/false
*/
#define RETURN _result
private [ "_computer", "_group", "_checkGroup", "_result" ];
_computer = _this select 0;
_group = _this select 1;
_checkGroup = _this select 2;
_result = false;

if (_group isEqualTo _checkGroup) then
{
	_result = true;
	RETURN
} else {
_groups = _computer getVariable "Computer_USR_Groups";
{
	_groupName = _x select 0;
	if(_group isEqualTo _groupName) then
	{
		_group = _x;
		_parentOf = _group select 1;
		
		{
			if (_parentOf isEqualTo (_x select 0) ) then
			{
				_ret = [_computer, _parentOf, _checkGroup ] call Computer_RIGHTS_IsInGroup;
				if(_ret isEqualTo true) then
				{
				_result = true;
				};
			};
			if(_result isEqualTo true) exitWith { true }
		
		} forEach _groups;
		
		if(true) exitWith { _result; }
	};
	if(_result isEqualTo true) exitWith { true }
} forEach _groups;
};
RETURN