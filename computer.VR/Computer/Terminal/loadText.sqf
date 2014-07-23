/*
	Author: Shoter

	Description:
	Loads all text from terminal on terminal screen.

	Parameter(s):
		1: COMPUTER - computer reference

	Returns:
	nil
*/
disableSerialization;
private ["_computer", "_controlText"];

_computer = _this select 0;
_terminalText = _computer getVariable ["Computer_Terminal_Text", []];
player globalChat format ["txt = %1" , _terminalText ];
if(( count _terminalText) isEqualTo 0) then
{
_controlText = "";
} else {
	_controlText = _terminalText select 0;
	if(1 < count _terminalText) then
	{	
		for [{_i=1}, {_i< count _terminalText}, {_i=_i+1}] do
			{
				_controlText = _controlText + "\n" + (_terminalText select _i);
			};
	};
};
player globalChat format ["Con = %1" , _controlText ];
ctrlSetText [ COMPUTER_TERMINAL_OUTPUT, _controlText ];

0
