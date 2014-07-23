//player globalChat format ["wynik = %1", call compile preprocessFile "test.sqf" ];

_mft = computer getVariable "Computer_MFT";



[computer, "root", "root"] call Computer_USR_login;

//[computer, "home", "F", []] call Computer_MFT_Create;
//_debug = [computer, "abc", "C", [], "\shoter\"] call Computer_MFT_Create;
//[computer, ["folder"] ] call Computer_MFT_ChangeWorkingFolder;

//_debug = [computer, "user", 1, "r"] call Computer_RIGHTS_CheckRightsRecord;
//_debug = [ "\" ] call Computer_MFT_PathToArray;
//player globalChat format ["%1", _debug];

//[computer, "write.sqf", "F", "Siala baba mak"] call Computer_MFT_Create;


player globalChat format ["deb - %1", computer getVariable "Computer_WorkingFolder"];
player globalChat format ["%1", [computer] call Computer_MFT_WorkingFolderLine];
{
	player globalChat format ["|%1|", _x];
	sleep 1;
} forEach _mft;