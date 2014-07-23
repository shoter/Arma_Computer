/*
	Author: Shoter

	Description:
	Initialize computer users

	Parameter(s):
		1: Computer (Object) - Computer to initalize

	Returns:
	nil
*/
private ["_computer"];
_computer = _this select 0;

_computer setVariable ["Computer_USR_Users", Computer_USR_DefaultUsers, false];
_computer setVariable ["Computer_USR_Groups", Computer_USR_DefaultGroups, false ];
_computer setVariable ["Computer_USR_LoggedUser", "guest", false];
