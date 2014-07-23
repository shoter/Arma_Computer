/* Computer_MFT_WorkingFolderLine
	Author: Shoter

	Description:
	Create current workfolder line
	
	Parameter(s):
		1: OBJECT - Computer 
		
	Returns:
	Workfolder line
*/
#define RETURN(sth) sth
private [ "_computer", "_line", "_folders" ];
_computer = _this select 0;
_line = "";
_folders = _computer getVariable "Computer_WorkingFolder";

{
_line = _line + (_x select 0) + "\";
} forEach _folders;
RETURN(_line)