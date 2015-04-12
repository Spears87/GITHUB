/*
	File: fn_virt_menu.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Initialize the virtual shop menu.
*/
private["_shop"];
_shop = _this select 3;
if(isNil {_shop}) exitWith {};
life_shop_type = _shop;
life_shop_npc = _this select 0;
if(_shop == "cop" && playerSide != west) exitWith {hint localize "STR_NOTF_NotACop"};
if(_shop == "market" && playerSide != civilian) exitWith {hint localize "STR_NOTF_NotAZiv"};
if(_shop == "rebel" && !license_civ_rebel) exitWith {hint localize "STR_NOTF_NotARebel"};
if(_shop == "ems" && playerSide != independent) exitWith {hint localize "STR_NOTF_NotAMedic"};
if(_shop == "adac" && playerSide != east) exitWith {hint localize "STR_NOTF_NotAADAC"};
createDialog "shops_menu";

[] call life_fnc_virt_update;