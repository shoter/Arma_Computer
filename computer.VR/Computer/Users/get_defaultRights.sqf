/*  Computer_USR_getGroup
	Author: Shoter

	Description:
	Get default rights

	Parameter(s):
		1: Computer (Object)

	Returns:
	Default rights
*/
private [ "_computer" ];
_computer = _this select 0;
_computer getVariable "Computer_USR_DefaultRights"