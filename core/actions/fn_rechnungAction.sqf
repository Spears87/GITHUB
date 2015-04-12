/*
	File: fn_ticketAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Starts the ticketing process.
*/
private["_unit"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
disableSerialization;
if(!(createDialog "life_rechnung_give")) exitWith {hint "Couldn't open the ticketing interface"};
if(isNull _unit OR !isPlayer _unit) exitwith {};
ctrlSetText[8751,format["Rechnung an %1",_unit getVariable["realname",name _unit]]];
life_ticket_unit = _unit;