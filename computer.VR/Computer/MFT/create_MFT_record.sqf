/*
	Computer_MFT_CreateRecord
	Author: Shoter

	Description:
	create new record in MFT table

	Parameter(s):
		1: Computer (Object)
		2: record [Type, Data, [ "U-G-O", user, group ] , password ( propably "" :) ) 
	Returns:
	Index of newly created record ,  if failure happened it's returning -1
*/
#define RETURN_ERROR _result
#define RETURN_INDEX(index) index

private [ "_computer", "_mft", "_spare", "_record" ];

_record = _this select 1;
_result =([_record] call Computer_MFT_CheckRecord);
if( _result isEqualTo Computer_Success  ) then 
{
	_computer = _this select 0;
	_spare = _computer getVariable "Computer_spareMFT";
	_mft = _computer getVariable "Computer_MFT";
	_newIndex = count _mft;
	if (count _spare > 0 ) then {
		_newIndex = _spare select 0;
		_spare = [_spare, 40] call BIS_fnc_removeIndex;
		_computer setVariable ["Computer_spareMFT", _spare, false];
	};
	
	_mft set [_newIndex, _record];
	_computer setVariable ["Computer_MFT", _mft];
	RETURN_INDEX(_newIndex)
} else
{
	RETURN_ERROR
};