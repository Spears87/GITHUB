/*
	File: fn_removeItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Removes the selected item & amount to remove from the players
	virtual inventory.
*/
private["_data","_value","_obj","_pos","_ind"];
disableSerialization;
_data = lbData[2005,(lbCurSel 2005)];
_value = ctrlText 2010;
if(_data == "") exitWith {hint "Du hast nichts ausgewaehlt.";};
if(!([_value] call TON_fnc_isnumber)) exitWith {hint "You didn't enter an actual number format."};
if(parseNumber(_value) <= 0) exitWith {hint "You need to enter an actual amount you want to remove."};
_ind = [_data,life_illegal_items] call TON_fnc_index;
if(_ind != -1 && ([west,getPos player,100] call life_fnc_nearUnits)) exitWith {titleText["Dieser Gegenstand ist illegal und kann nicht fallen gelassen werden, wenn Cops in der Naehe sind.","PLAIN"]};
if(player != vehicle player) exitWith {titleText["Du kannst nichts wegwerfen, wenn du in einem Fahrzeug sitzt.","PLAIN"]};
if(!([false,_data,(parseNumber _value)] call life_fnc_handleInv)) exitWith {hint "Kann es sein, dass du nicht soviel dabei hast?"};
_type = [_data,0] call life_fnc_varHandle;
_type = [_type] call life_fnc_varToStr;
hint format["Du hast %1 mal %2 aus deinem Inventar entfernt.",(parseNumber _value), _type];
	
[] call life_fnc_p_updateMenu;