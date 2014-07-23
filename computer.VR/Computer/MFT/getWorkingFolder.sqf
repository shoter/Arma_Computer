/* Computer_MFT_WorkingFolder
	Author: Shoter

	Description:
	Returns current working folder
	
	Parameter(s):
		1: OBJECT - Computer 
	Returns:
	Working folder
*/
private [ "_computer", "_folders" ];
_computer = _this select 0;
_folders = _computer getVariable "Computer_WorkingFolder";
_folders select ( (count _folders) - 1)