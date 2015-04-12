/*
	File: fn_healHospital.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Doesn't matter, will be revised later.
*/
if(playersNumber independent > 0) exitWith { hint "Es sind Medic´s im Diest. Suchen Sie diese auf!"};
if(ja_dzep < 1000) exitWith {hint format[localize "STR_NOTF_HS_NoCash",1000];};
titleText[localize "STR_NOTF_HS_Healing","PLAIN"];
sleep 8;
if(player distance (_this select 0) > 5) exitWith {titleText[localize "STR_NOTF_HS_ToFar","PLAIN"]};
titleText[localize "STR_NOTF_HS_Healed","PLAIN"];
player setdamage 0;
ja_dzep = ja_dzep - 1000;