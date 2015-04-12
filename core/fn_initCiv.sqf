/*
	File: fn_initCiv.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Initializes the civilian.
*/

// TFR Variables API
tf_no_auto_long_range_radio = true; 

private["_spawnPos"];
// civ_spawn_1 = nearestObjects[getMarkerPos  "civ_spawn_1", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
// civ_spawn_2 = nearestObjects[getMarkerPos  "civ_spawn_2", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
// civ_spawn_3 = nearestObjects[getMarkerPos  "civ_spawn_3", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
// civ_spawn_4 = nearestObjects[getMarkerPos  "civ_spawn_4", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
// waitUntil {!(isNull (findDisplay 46))};

/* Richter
if ((getPlayerUID player) in [
	"76561198021266003",	//Alexander Holt
	"76561198060115068",	//John Smith
	"76561198013153296"		//Rick Wolf
]) then {
	life_paycheck = life_paycheck + 3000;
};

//Staatsanwälte
if ((getPlayerUID player) in [
	"76561198125777619"		//Damian Richter
]) then {
	life_paycheck = life_paycheck + 2000;
};*/

if(life_is_arrested) then
{
	[false,false,life_arrestMinutes,life_arrestReason] call fnc_jailsetup;
}
	else
{
	[] call life_fnc_spawnMenu;
	[] execVM "core\welcomeciv.sqf";
	waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
	waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
};
player addRating 9999999;

[] call life_fnc_zoneCreator;