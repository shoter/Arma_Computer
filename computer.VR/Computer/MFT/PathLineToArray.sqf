/*  Computer_MFT_PathToArray
	Author: Shoter

	Description:
	
	
	Parameter(s):
		1: STRING - path
		
	Returns:
	Array
*/
#define RETURN _return
private [ "_path", "_return", "_separator", "_pathArray" ];
_path = _this select 0;
_separator = toarray "\";
_pathArray = toArray _path;
_return = [];
if( (_pathArray select 0) in _separator ) then {
_return set [ count _return, "" ]; };
_return = _return + ([_path, "\"] call BIS_fnc_splitString);
RETURN