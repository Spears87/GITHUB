#include <macro.h>
/*
	File: fn_unimpound.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Yeah... Gets the vehicle from the garage.
*/
private["_vehicle","_vid","_pid","_unit","_price","_isInsured"];
disableSerialization;

//next line added for insureance
_isInsured = [_this,0,false,[false]] call BIS_fnc_param;


if(lbCurSel 2802 == -1) exitWith {hint localize "STR_Global_NoSelection"};
_vehicle = lbData[2802,(lbCurSel 2802)];
_vehicle = (call compile format["%1",_vehicle]) select 0;
_vid = lbValue[2802,(lbCurSel 2802)];
_pid = getPlayerUID player;
_unit = player;

if(isNil "_vehicle") exitWith {hint localize "STR_Garage_Selection_Error"};

_price = [_vehicle,__GETC__(life_garage_prices)] call TON_fnc_index;
if(_price == -1) then {_price = 1000;} else {_price = (__GETC__(life_garage_prices) select _price) select 1;};

if (_vehicle in ["C_Heli_Light_01_civil_F","B_Heli_Light_01_F","O_Heli_Light_02_unarmed_F","ivory_b206_rescue","I_Heli_Transport_02_F","I_Heli_light_03_unarmed_F","B_Heli_Transport_01_F","B_Heli_Transport_03_unarmed_F","O_Heli_Transport_04_F","O_Heli_Transport_04_covered_F","IVORY_BELL512_RESCUE","O_Heli_Transport_04_medevac_F","ivory_b206_police","IVORY_BELL512_POLICE","IVORY_T6A_1"] && (playerside in [independent,west,east])) then {
	_price = 15000;
};

//next line added for insureance
_basePrice = _price;

//next lines added for insureance
if (_isInsured) then {
    _price = _basePrice * 2.5;
} else {
    _price = _basePrice;
};

if(ja_pare < _price) exitWith {hint format[(localize "STR_Garage_CashError"),[_price] call life_fnc_numberText];};

if(typeName life_garage_sp == "ARRAY") then {
	[[_vid,_pid,life_garage_sp select 0,_unit,_price,_isInsured,life_garage_sp select 1],"TON_fnc_spawnVehicle",false,false] spawn life_fnc_MP;
} else {
	if(life_garage_sp in ["medic_spawn_1","medic_spawn_2","medic_spawn_3"]) then {
		[[_vid,_pid,life_garage_sp,_unit,_price,_isInsured],"TON_fnc_spawnVehicle",false,false] spawn life_fnc_MP;
	} else {
		[[_vid,_pid,(getMarkerPos life_garage_sp),_unit,_price,_isInsured,markerDir life_garage_sp],"TON_fnc_spawnVehicle",false,false] spawn life_fnc_MP;
	};
};

hint localize "STR_Garage_SpawningVeh";

ja_pare = ja_pare - _price;