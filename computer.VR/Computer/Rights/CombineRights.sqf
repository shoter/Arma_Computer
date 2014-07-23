/*
	Computer_RIGHTS_CombineRights
	Author: Shoter

	Description:
	Combine the rights and give highest possible right.

	Parameter(s):
		1: Array : Array of rights
		2-99999 : same as 1

	Returns:
	The biggest right possible
*/
private [ "_return", "_rights" ];
_return = [ "n", "n", "n" ];
_rights = _this select 0;
{
	if( (_x select 0) isEqualTo "r") then { _return set [0,"r"] };
	if( (_x select 1) isEqualTo "w") then { _return set [1,"w"] };
	if( (_x select 2) isEqualTo "x") then { _return set [2,"x"] };

} forEach _this;
_return