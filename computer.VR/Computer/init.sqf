#include "defines.sqf";

//get Functions

Computer_Init = compile preprocessFile "Computer\init_computer.sqf";

Computer_Terminal_Init = compile preprocessFile "Computer\Terminal\initTerminal.sqf";
Computer_Terminal_Preprocess = compile preprocessFile "Computer\Terminal\preprocessInput.sqf";
Computer_Terminal_InputKeyDown = compile preprocessFile "Computer\Terminal\inputKeyDown.sqf";
Computer_Terminal_InsertText = compile preprocessFile "Computer\Terminal\insert_text.sqf";
Computer_Terminal_ClearText = compile preprocessFile "Computer\Terminal\clear_text.sqf";
Computer_Terminal_LoadText = compile preprocessFile "Computer\Terminal\loadText.sqf";
Computer_Terminal_Exec = compile preprocessFile "Computer\Terminal\exec.sqf";


//initialization


#include "init_commands.sqf";
#include "MFT\init.sqf";
#include "Users\init.sqf";
#include "Rights\init.sqf";
#include "Errors\init.sqf";

Computer_InitCompleted = true;
