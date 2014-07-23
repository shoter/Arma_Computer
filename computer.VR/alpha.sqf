animals = "true" configClasses (configFile >> "CfgVehicles");

{
player globalChat format ["name - %1",  _x call BIS_fnc_getCfgData];
_grp = createGroup west;
_animal = _grp createUnit [format ["%1", _x], [ 3 + (getPos player select 0), getPos player select 1, 2] , [], 5, "FORM"];
//sleep 3;
//deleteVehicle _animal;
} forEach animals;
