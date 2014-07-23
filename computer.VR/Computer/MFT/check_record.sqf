/* Computer_MFT_CheckRecord
	Author: Shoter

	Description:
	Checks wheter the record have proper structure

	Parameter(s):
		1: Record - [Name, Type, Data, [ "U-G-O", user, group ] , password
	Returns:
	true/false
*/
#define RETURN_FALSE false
#define RETURN_TRUE true

private ["_record"];
_record = _this select 0;

if(not (count _record isEqualTo 5)) then
{
	RETURN_FALSE;
} else
{
_name = _record select 0;
_type = _record select 1;
_data = _record select 2;
_rights = _record select 3;
_psswd = _record select 4;

switch (true) do { 
	case ( (_name isEqualTo "") ) : { RETURN_FALSE };
	case ( not (_type in Computer_MFT_Types) ) : { RETURN_FALSE };
	case ( (not (typeName _rights isEqualTo "ARRAY") ) AND (not (count _rights isEqualTo 3)) ) : { RETURN_FALSE };
	case ( not (typeName _psswd isEqualTo "STRING") ) : { RETURN_FALSE };
	default {
	RETURN_TRUE
	};

};
};