/*
	Author: Shoter

	Description:
	Opens terminal window

	Parameter(s):
		1: COMPUTER - computer on which command will be executed
		2: STRING - command to executed
		3: ARRAY - args

	Returns:
	nil
*/
private [ "_computer", "_command", "_args" ];

_computer = _this select 0;
_command = _this select 1;
_args = _this select 2;

{
	if((_x select 0) isEqualTo (tolower _command)) then
	{
		 nic = [_computer, _args] call (_x select 1);
		 if(true) exitWith { true }
	} ; 
}forEach Computer_Commands;
0