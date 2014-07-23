/*
	Author: Shoter

	Description:
	Initalize computer Master File Table and working folders

	Parameter(s):
		1: Computer (Object) - Computer to initalize

	Returns:
	nil
*/

/*MFT Record Structure
Name - STRING
FileType - STRING, C - Catalog, F - File, L - Link
Data - any type, data
Rights - will be detailed beneath
password - password to file
*/

/*Rights 
Right - STRING , like in LINUX with one exception, empty fields are filled with n , example rwx-nnn-rnx
USER - STRING , user to which rights are being applied
GROUP - STRING , group to which right are being applied
*/

private ["_computer", "_mft", "_working_folders", "_spareMFT", "_defaultRights"];
_computer = _this select 0;
_mft = [ ["", "C", [] , ["rwx-rwn-rnn", "root", "users"], "" ] ];
_working_folders = [ ["",0] ];
_spareMFT = [];
_defaultRights = ["rwx-rwx-nnn"];

_computer setVariable [ "Computer_MFT", _mft , false ];
_computer setVariable [ "Computer_WorkingFolder", _working_folders, true ];
_computer setVariable [ "Computer_spareMFT", _spareMFT, true ];
_computer setVariable [ "Computer_DefaultRights", _defaultRights, true ];