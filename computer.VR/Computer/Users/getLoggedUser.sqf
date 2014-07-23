/*  Computer_USR_LoggedUser
	Author: Shoter

	Description:
	Get currently logged user

	Parameter(s):
		1: Computer (Object)

	Returns:
	logged user
*/
private [ "_computer" ];
_computer = _this select 0;
_computer getVariable "Computer_USR_LoggedUser";