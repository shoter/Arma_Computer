/*  Computer_USR_getGroup
	Author: Shoter

	Description:
	Get group of the user

	Parameter(s):
		1: Computer (Object)
		2: String - user

	Returns:
	group of the user
*/
private ["_computer", "_user", "_users" ];
_computer = _this select 0;
_user     = _this select 1;
_users    = _computer getVariable "Computer_USR_Users";

{
	_locUser = _x select 0;
	_locGroup = _x select 1;
	if(_locUser isEqualTo _user) exitWith { _locGroup };
} forEach _users;
