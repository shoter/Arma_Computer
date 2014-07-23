#define defineError(Error) Error = #Error

Computer_Success = -100;
defineError(Computer_Error);
defineError(Computer_Error_LoginFailed);
defineError(Computer_Error_NoRights);
defineError(Computer_Error_FileExists);
defineError(Computer_Error_WrongPath);
defineError(Computer_Error_MftRecordNotCreated);
defineError(Computer_Error_WrongFileName);
defineError(Computer_Error_WrongFileType);
defineError(Computer_Error_WrongRights);
defineError(Computer_Error_WrongPasswordType);