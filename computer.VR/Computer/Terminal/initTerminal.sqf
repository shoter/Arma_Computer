/*
	Author: Shoter

	Description:
	Opens terminal window

	Parameter(s):
		1: COMPUTER - computer on which terminal window will be opened

	Returns:
	nil
*/
disableSerialization;
private ["_success", "_button", "_editText", "_computer"];
_computer = _this select 0;
_success = createdialog "Terminal_Dialog";

_computer setVariable ["Computer_Terminal_Text", [""], true];
sleep 1;
_display = uiNamespace getVariable "Computer_Terminal_Dialog";

_button   = (_display displayCtrl 800);
_editText = (_display displayCtrl 700);

nic = [_computer] call Computer_Terminal_LoadText;

//_button ctrlSetEventHandler ["ButtonClick", format ["player globalchat ""HUJ! :DXDXDXDXDX"""]];

_editText ctrlSetEventHandler[ "KeyDown", format ["nic = [_this] spawn Computer_Terminal_InputKeyDown"]];
player setVariable ["Computer_UsingComputer", _computer, true];
0

