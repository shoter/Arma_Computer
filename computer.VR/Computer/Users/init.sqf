Computer_USR_DefaultUsers = [ ["root", "root", "root", false], ["user", "users", "user", true], ["guest", "guests", "", false] ];
Computer_USR_DefaultGroups = [ ["root", "users", false], ["users", "guests", true], ["guests", "", true] ];


Computer_USR_Init = compile preprocessFile "Computer\Users\init_Users.sqf";
Computer_USR_getGroup = compile preprocessFile "Computer\Users\get_group.sqf";
Computer_USR_getGroupVisibility = compile preprocessFile "Computer\Users\get_group_visibility.sqf";
Computer_USR_login = compile preprocessFile "Computer\Users\login.sqf";
Computer_USR_getDefaultRights = compile preprocessFile "Computer\Users\get_defaultRights.sqf";
Computer_USR_LoggedUser = compile preprocessFile "Computer\Users\getLoggedUser.sqf";