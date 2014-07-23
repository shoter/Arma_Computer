/*	Computer_USR_login
	Author: Shoter

	Description:
	Login to computer

	Parameter(s):
		1: Computer (Object)
		2: String - User
		3: String - Password

	Returns:
	true on success otherwise false
*/
private ["_computer", "_user", "_password", "_users", "_return"];
_computer = _this select 0;
_user     = _this select 1;
_password = _this select 2;
_users    = _computer getVariable "Computer_USR_Users";
_return = false;
{
	_locUser = _x select 0;
	_locPswd = _x select 2;
	if( _locUser isEqualTo _user ) then 
	{
		if(_locPswd isEqualTo _password OR _locPswd isEqualTo "") exitWith 
		{ 
			_return = true;
			_computer setVariable ["Computer_USR_LoggedUser", _locUser, false];
		};
		if( true ) exitWIth { _return = false; };
	};

}forEach _users; 
_return