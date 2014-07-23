/*
	Author: Shoter

	Description:
	Initialize whole computer software ;)

	Parameter(s):
		1: Computer (Object) - Computer to initalize

	Returns:
	nil
*/
waitUntil { ; sleep 1; not isNil "Computer_InitCompleted"  };
private ["_computer"];
_computer = _this select 0;

_computer addAction ["Run computer", { nic = [_this select 0] spawn Computer_Terminal_Init;}];

nic = [_computer] call Computer_MFT_Init;
nic = [_computer] call Computer_USR_Init;
nic = [_computer] call Computer_RIGHTS_Init;
