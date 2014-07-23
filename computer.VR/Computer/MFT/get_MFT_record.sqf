/*  Computer_MFT_Get
	Author: Shoter

	Description:
	Get the MFT record

	Parameter(s):
		1: OBJECT - Computer 
		2: INTEGER - MFT index
	Returns:
	MFT_RECORD, -1 on error
*/
#define RETURN_RECORD(record) record
#define RETURN_ERROR -1
private ["_computer", "_index" ];
_computer = _this select 0;
_index    = _this select 1;

_mft      = _computer getVariable "Computer_MFT";
if( _index < count _mft ) then
{
RETURN_RECORD(_mft select _index)
} else
{
RETURN_ERROR
};