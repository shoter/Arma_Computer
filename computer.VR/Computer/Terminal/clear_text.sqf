/*
	Author: Shoter

	Description:
	Clears terminal text

	Parameter(s):
		1: COMPUTER - computer reference

	Returns:
	nil
*/
private ["_computer"];

_computer = _this select 0;

_computer setVariable ["Computer_Terminal_Text", [], true];