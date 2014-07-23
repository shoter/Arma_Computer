Computer_USR_DefaultRight = "rwx-rwn-rnn";

Computer_RIGHTS_Init = compile preprocessFile "Computer\Rights\init_rights.sqf";
Computer_RIGHTS_CheckRightsRecord = compile preprocessFile "Computer\Rights\checkRightsToRecord.sqf";
Computer_RIGHTS_SeparateRights = compile preprocessFile "Computer\Rights\separate_rights.sqf";
Computer_RIGHTS_CombineRights = compile preprocessFile "Computer\Rights\CombineRights.sqf";
Computer_RIGHTS_IsInGroup = compile preprocessFile "Computer\Rights\isInGroup.sqf";