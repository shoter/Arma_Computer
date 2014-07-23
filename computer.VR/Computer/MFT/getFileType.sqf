/*	Computer_MFT_GetFileType
	Author: Shoter

	Description:
	get's file TYPE

	Parameter(s):
		1: Computer 
		2: INTEGER - index in MFT OR Whole record
	Returns:
	File type
*/
private [ "_computer", "_index", "_record", "_return" ];
#define RETURN _return
_return = "";
_computer = _this select 0;
_index    = _this select 1;
if( typename _index isEqualTo "SCALAR") then
{
_record = [_computer, _index] call Computer_MFT_Get;
_return = _record select 1;
} else
{
_return = _index select 1;
};
RETURN