/*
	Author: Shoter

	Description:
	Insert new line of text to console terminal

	Parameter(s):
		1: COMPUTER - computer reference
		2: STRING - text to insert

	Returns:
	nil
*/
disableSerialization;
private ["_text", "_computer",  "_terminalText" ];

_computer = _this select 0;
_text = _this select 1;


if ( not (_text isEqualTo "") ) then
{
	_terminalText = _computer getVariable ["Computer_Terminal_Text", []];
	_terminalText = [_text] + _terminalText;
	
	if(count _terminalText > 40) then
	{
		_terminalText = [_terminalText, 40] call BIS_fnc_removeIndex;
	};
	
	_computer setVariable ["Computer_Terminal_Text", _terminalText, true];
};
0
