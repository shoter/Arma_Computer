/*
	Computer_MFT_ChangeWorkingFolder
	Author: Shoter

	Description:
	Changes current working folder
	
	Parameter(s):
		1: Computer (Object)
		2: array of strings that indicates folder changes
	Returns:
	nil
*/
private [ "_computer", "_changes", "_break", "_data", "_dataMFT", "_dataName", "_dataType", "_mftRecord", "_searchName", "_workingFolders" ];
_computer = _this select 0;
_changes = _this select 1;
_break = false;
_workingFolders = _computer getVariable "Computer_WorkingFolder";
{
	_break = true;
	_searchName = _x;
	if( _x == "" ) then {
	_workingFolders = [ ["", 0] ];
	_computer setVariable ["Computer_WorkingFolder", _workingFolders, false];
	_break = false;
	};
	if( _x isEqualTo "..") then {
		_workingFolders = [_workingFolders, (count _workingFolders) - 1 ] call BIS_fnc_removeIndex;
		if(count _workingFolders isEqualTo 0) then
		{
			_workingFolders = [ ["", 0] ];
		};
		_computer setVariable ["Computer_WorkingFolder", _workingFolders, false];
		_break = false;
	};
	if(_break) then
	{
		_mftRecord = [_computer, [_computer] call Computer_MFT_WorkingFolder select 1] call Computer_MFT_Get;
		_data = _mftRecord select 2;
		{
			_dataMFT = [_computer, _x] call Computer_MFT_Get;
			_dataName = _dataMFT select 0;
			if(_dataName isEqualTo _searchName AND ([_computer, _dataMFT] call Computer_MFT_GetFileType) isEqualTo "C" ) then
			{
				_workingFolders set [count _workingFolders, [_dataName, _x] ];
				_break = false;
			};
		} forEach _data;
	};
	if(_break) exitWith { true }
} forEach _changes;