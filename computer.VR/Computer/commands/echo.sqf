/*
	Author: Shoter

	Description:
	Displays something on terminal

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
	if( (toLower (_args select 0)) isEqualTo "-help" ) then {
		nic = [_computer, "echoes everything that comes in arguments"] call Computer_Terminal_InsertText;
	} else 
	{
	_output = "";
		{
		if(_output isEqualTo "") then
			{
				_output = _x;	
			} else {
				_output = _output + " " + _x;
			};
		} forEach _args;
		nic = [_computer, _output] call Computer_Terminal_InsertText; 
	};
} else
{
nic = [_computer, ""] call Computer_Terminal_InsertText;
};
0


