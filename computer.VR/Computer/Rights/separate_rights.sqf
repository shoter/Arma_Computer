/*
	Computer_RIGHTS_SeparateRights
	Author: Shoter

	Description:
	

	Parameter(s):
		1: STRING - Rights in rwx format, example "rnn"

	Returns:
	Array with single chars example ["r","n","n"]
*/
private ["_return", "_rights" , "_temp" ];

_rights = _this select 0;
_rights = toArray _rights;
_return = [];
{
	_return set [ count _return, toString [_x] ];
} forEach _rights;

_return