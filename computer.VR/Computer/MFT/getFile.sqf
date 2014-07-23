/*
	Computer_MFT_GetFile
	Author: Shoter

	Description:
	create new record in MFT table

	Parameter(s):
		1: Computer (Object)
		2: String - fileName
		3: STRING - path (OPTIONAL, otherwise working folder)
	Returns:
	MFT record otherwise some kind of error
*/
private [ "_computer", "_fileName",  "_path", "_result" ];
#define RETURN _result
_computer = _this select 0;
_fileName = _this select 1;
_path = _this select 2;
_result = Computer_Error;

if( count _this isEqualTo 2 ) then
{
	_workingFolder = [_computer] call Computer_MFT_WorkingFolder;
	_workingIndex = _workingFolder select 1;
	_workingFolderRecord = [ _computer, _index ] call Computer_MFT_Get;
	_workingFolderData = _workingFolderRecord select 2;
	{
		_record = [ _computer, _x ] call Computer_MFT_Get;
		_recordName = _record select 0;
		if(  
		
	}forEach _workingFolderData;
	
};

RETURN