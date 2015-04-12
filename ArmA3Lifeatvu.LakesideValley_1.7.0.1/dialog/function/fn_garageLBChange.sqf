#include <macro.h>
/*
	File: fn_garageLBChange.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Can't be bothered to answer it.. Already deleted it by accident..
*/
disableSerialization;
private["_control","_index","_className","_dataArr","_vehicleColor","_vehicleInfo","_trunkSpace","_sellPrice","_retrievePrice","_insurancePrice"];
_control = _this select 0;
_index = _this select 1;

//Fetch some information.
_dataArr = _control lbData _index; _dataArr = call compile format["%1",_dataArr];
_className = _dataArr select 0;
_vehicleColor = [_className,_dataArr select 1] call life_fnc_vehicleColorStr;
_vehicleInfo = [_className] call life_fnc_fetchVehInfo;
_trunkSpace = [_className] call life_fnc_vehicleWeightCfg;

_retrievePrice = [_className,__GETC__(life_garage_prices)] call TON_fnc_index;
_sellPrice = [_className,__GETC__(life_garage_sell)] call TON_fnc_index;
_retrievePrice = if(_retrievePrice == -1) then {1000} else {(__GETC__(life_garage_prices) select _retrievePrice) select 1;};
_sellPrice = if(_sellPrice == -1) then {1000} else {(__GETC__(life_garage_sell) select _sellPrice) select 1;};

if (_vehicle in ["C_Heli_Light_01_civil_F","B_Heli_Light_01_F","O_Heli_Light_02_unarmed_F","ivory_b206_rescue","I_Heli_Transport_02_F","I_Heli_light_03_unarmed_F","B_Heli_Transport_01_F","B_Heli_Transport_03_unarmed_F","O_Heli_Transport_04_F","O_Heli_Transport_04_covered_F","IVORY_BELL512_RESCUE","O_Heli_Transport_04_medevac_F","ivory_b206_police","IVORY_BELL512_POLICE","IVORY_T6A_1"] && (playerside in [independent,west,east])) then {
	_retrievePrice = 15000;
};

_insurancePrice = _retrievePrice * 2.5;

(getControl(2800,2803)) ctrlSetStructuredText parseText format[
	(localize "STR_Shop_Veh_UI_RetrievalP")+ " <t color='#8cff9b'>$%1</t><br/>
	" +(localize "STR_Shop_Veh_UI_SellP")+ " <t color='#8cff9b'>$%2</t><br/>
	" +(localize "STR_Shop_Veh_UI_InsuranceP")+ " <t color='#8cff9b'>%9€</t><br/>
	" +(localize "STR_Shop_Veh_UI_Color")+ " %8<br/>
	" +(localize "STR_Shop_Veh_UI_MaxSpeed")+ " %3 km/h<br/>
	" +(localize "STR_Shop_Veh_UI_HPower")+ " %4<br/>
	" +(localize "STR_Shop_Veh_UI_PSeats")+ " %5<br/>
	" +(localize "STR_Shop_Veh_UI_Trunk")+ " %6<br/>
	" +(localize "STR_Shop_Veh_UI_Fuel")+ " %7
	",
[_retrievePrice] call life_fnc_numberText,
[_sellPrice] call life_fnc_numberText,
_vehicleInfo select 8,
_vehicleInfo select 11,
_vehicleInfo select 10,
if(_trunkSpace == -1) then {"None"} else {_trunkSpace},
_vehicleInfo select 12,
_vehicleColor,
[_insurancePrice] call life_fnc_numberText
];

ctrlShow [2803,true];
ctrlShow [2830,true];