/*
	Author: Shoter

	Description:
	Opens terminal window

	Parameter(s):
		1: COMPUTER - computer on which command will be executed
		2: ARRAY - args

	Returns:
	nil
*/
private [ "_computer", "_command", "_args" ];

_computer = _this select 0;
_args = _this select 1; //propably null

if( count _args > 0) then 
{
_arg = _args select 0;
	if( (toLower _arg) isEqualTo "-help" ) then {
		nic = [_computer, "cls command is used to clean the terminal screen"] call Computer_Terminal_InsertText;
	};
} else
{
nic = [_computer] call Computer_Terminal_ClearText;
};
0


