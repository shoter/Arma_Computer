/* Computer_MFT_CheckRecord
	Author: Shoter

	Description:
	Checks wheter the record have proper structure

	Parameter(s):
		1: Record - [Name, Type, Data, [ "U-G-O", user, group ] , password
	Returns:
	true/false
*/
#define RETURN_ERROR(error) error
#define RETURN_SUCCESS Computer_Success

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
		case ( (_name isEqualTo "") ) : { RETURN_ERROR(Computer_Error_WrongFileName) };
		case ( not (_type in Computer_MFT_Types) ) : { RETURN_ERROR(Computer_Error_WrongFileType) };
		case ( (not (typeName _rights isEqualTo "ARRAY") ) AND (not (count _rights isEqualTo 3)) ) : { RETURN_ERROR(Computer_Error_WrongRights) };
		case ( not (typeName _psswd isEqualTo "STRING") ) : { RETURN_ERROR(Computer_Error_WrongPasswordType) };
		default {
		RETURN_SUCCESS
		};
	};
};