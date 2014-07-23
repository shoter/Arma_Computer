/*
Wise to use with #include
	Author: Shoter

	Description:
	Initialize all computers commands

	Parameter(s):
	nil
	
	Returns:
	nil
*/
Computer_Commands = [];

Computer_Commands set [ count Computer_Commands, ["cls", compile preprocessFile "Computer\Commands\cls.sqf"] ];

Computer_Commands set [ count Computer_Commands, ["echo", compile preprocessFile "Computer\Commands\echo.sqf"] ];

