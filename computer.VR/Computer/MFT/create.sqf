/*  Computer_MFT_Create
	Author: Shoter

	Description:
	Create file. It will be created in current working directory unless you specify direct path

	Parameter(s):
		1: OBJECT - Computer 
		2: STRING - name
		3: STRING - File Type
		4: ANY    - Data
		5: STRING - direct path (Optional)
	Returns:
	Computer_Error_* or Computer_Success
*/
#define RETURN_RESULT(result) result
private [ "_result", "_computer", "_mft", "_name", "_fileType", "_data", "_rights",
"_usr", "_group", "_psswd", "_newRecord", "_index", "_result", "_workingMFT",
"_data", "_loggedUser"];
_result = Computer_Error;
_computer = _this select 0;

_loggedUser = [_computer] call Computer_USR_LoggedUser;

if( count _this isEqualTo 4) then {
	_workingFolder = [_computer] call Computer_MFT_WorkingFolder;
	_workingIndex = _workingFolder select 1;
	
	if( [_computer, _loggedUser, _workingIndex, "w"] call Computer_RIGHTS_CheckRightsRecord) then
	{
		_mft = _computer getVariable [ "Computer_MFT", objNull ];
		_name = _this select 1;
		_fileType = _this select 2;
		_data = _this select 3;
		_rights = [_computer] call Computer_USR_getDefaultRights;
		_usr = [_computer] call Computer_USR_LoggedUser;
		_group = [_computer, _usr] call Computer_USR_getGroup;
		_psswd = "";
		
		_newRecord = [ _name, _fileType, _data, [ _rights, _usr, _group ], _psswd ]; 
		_index = [_computer, _newRecord] call Computer_MFT_CreateRecord;
		if(_index isEqualTo -1 ) then
		{
			_result = false;
		} else {
			
			
			_workingMFT = _mft select _workingIndex;
			_data = _workingMFT select 2;
			_data set [ count _data, _index ];
			_result = true;
		};
	};
};
if( count _this isEqualTo 5 ) then {
	
	_oldWorkingFolders = _computer getVariable "Computer_WorkingFolder";
	_directPath = _this select 4;
	_pathChangeResult = ([ _computer, [_directPath] call Computer_MFT_PathToArray ] call Computer_MFT_ChangeWorkingFolder);
	if( _pathChangeResult isEqualTo Computer_Success ) then
	{
		_workingFolder = [_computer] call Computer_MFT_WorkingFolder;
		_workingIndex = _workingFolder select 1;
		if( [_computer, _loggedUser, _workingIndex, "w"] call Computer_RIGHTS_CheckRightsRecord) then
		{
			_mft = _computer getVariable [ "Computer_MFT", objNull ];
			_name = _this select 1;
			_fileType = _this select 2;
			_data = _this select 3;
			_rights = [_computer] call Computer_USR_getDefaultRights;
			_usr = [_computer] call Computer_USR_LoggedUser;
			_group = [_computer, _usr] call Computer_USR_getGroup;
			_psswd = "";
			
			_newRecord = [ _name, _fileType, _data, [ _rights, _usr, _group ], _psswd ]; 
			_index = [_computer, _newRecord] call Computer_MFT_CreateRecord;
			if(_index < 0 ) then
			{
				_result = _index;
			} else {
				_workingMFT = _mft select _workingIndex;
				_data = _workingMFT select 2;
				_data set [ count _data, _index ];
				_result = Computer_Success;
			};
		};
	} else
	{
		_result = _pathChangeResult;
	};
	_computer setVariable [ "Computer_WorkingFolder" , _oldWorkingFolders , false ];
};

RETURN_RESULT(_result)