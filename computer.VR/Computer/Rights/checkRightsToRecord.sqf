/*
	Computer_RIGHTS_CheckRightsRecord
	Author: Shoter

	Description:
	

	Parameter(s):
		1: Computer (Object) - Computer to initalize
		2: STRING - User - User to check his rights
		3: INTEGER - index to MFT record
		4: (optional, change return value) CHAR_STRING : Right which we want to test

	Returns:
	The biggest rights that he possess
	true/false if 4th arguement exists
*/
#define RETURN _return
private [ "_allRights", "_computer", "_groupMod", "_groupRights" , "_index",
"_mftRecord", "_return", "_right" ,"_rights" , "_rightsMod", "_user" , "_userGroup" ,"_userMod",
"_userRights"];
_computer = _this select 0;
_user = _this select 1;
_userGroup = [ _computer, _user ] call Computer_USR_getGroup;
_index = _this select 2;
_mftRecord = [_computer, _index ] call Computer_MFT_Get;

if(count _this isEqualTo 4) then {
_right = _this select 3;
};

_rights = _mftRecord select 3;
_rightsMod = _rights select 0;
_userMod = _rights select 1;
_groupMod = _rights select 2;

_rightsMod = [_rightsMod, "-"] call BIS_fnc_splitString;
_userRights = [_rightsMod select 0] call Computer_RIGHTS_SeparateRights;
_groupRights = [_rightsMod select 1]  call Computer_RIGHTS_SeparateRights;
_allRights = [_rightsMod select 2]  call Computer_RIGHTS_SeparateRights;




_return = _allRights;

if( _user isEqualTo _userMod ) then
{
	_return = _userRights;
};

if( [_computer, _userGroup, _groupMod] call Computer_RIGHTS_IsInGroup ) then
{
	_return = [ _return, _groupRights ] call Computer_RIGHTS_CombineRights;
};
player globalChat format["return - %1", _return ];

if( not isnil "_right" ) then
{
	_return = _right in _return;
};
RETURN
