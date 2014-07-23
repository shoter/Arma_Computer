
_text = _this select 0;
_computer = _this select 1;	

_stringArray = toarray _text;

_separators = toarray " ";
_quotations = toarray """";

_resultArray = [];
_localArray = [];
_isQuotation = false;
{
	if(_x in _quotations) then 
	{
	_isQuotation = not _isQuotation;
	} else 
	{

		if(_isQuotation isEqualTo false) then 
		{ 
			if (_x in _separators) then {
				_resultArray set[count _resultArray, tostring _localArray];
				_localArray = [];
				} else {
				_localArray set [ count _localArray, _x];
				};
			} else {
			_localArray set [ count _localArray, _x];
			};
	};
}forEach _stringArray;

_resultArray set[count _resultArray, tostring _localArray];

_command = "";
_args = [];

if(count _resultArray > 0) then
{
_command = _resultArray select 0; 
_resultArray = [_resultArray, 0] call BIS_fnc_removeIndex;
};

if(count _resultArray > 0) then
{{
_args set [ count _args, _x];
}forEach _resultArray;};

nic = [ _computer, _command, _args ] call Computer_Terminal_Exec;
0
