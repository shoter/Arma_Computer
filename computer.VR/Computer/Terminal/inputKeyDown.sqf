disableSerialization;
private ["_key", "_display", "_text", "_textOutput"];

_key = ((_this select 0) select 1);
_computer = player getVariable "Computer_UsingComputer";

_display = uiNamespace getVariable "Computer_Terminal_Dialog";
_textOutput = (_display displayCtrl 1801);

if ( _key isEqualTo 0x1C ) then //enter
{
	_text = ctrlText 700;
	ctrlSetText [ 700, "" ];
	
	nic = [_text, _computer] call Computer_Terminal_Preprocess;
	nic = [_computer] call Computer_Terminal_LoadText;
};
