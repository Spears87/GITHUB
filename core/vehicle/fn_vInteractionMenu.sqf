/*
	File: fn_vInteractionMenu.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Replaces the mass addactions for various vehicle actions
*/
#define Btn1 37450
#define Btn2 37451
#define Btn3 37452
#define Btn4 37453
#define Btn5 37454
#define Btn6 37455
#define Title 37401
private["_display","_curTarget","_Btn1","_Btn2","_Btn3","_Btn4","_Btn5","_Btn6"];
if(!dialog) then {
	createDialog "vInteraction_Menu";
};
disableSerialization;
_curTarget = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _curTarget) exitWith {closeDialog 0;}; //Bad target
_isVehicle = if((_curTarget isKindOf "landVehicle") OR (_curTarget isKindOf "Ship") OR (_curTarget isKindOf "Air") OR (_curTarget isKindOf "Motorcycle") OR (_curTarget isKindOf "A3L_Tahoe_Base")) then {true} else {false};
if(!_isVehicle) exitWith {closeDialog 0;};
_display = findDisplay 37400;
_Btn1 = _display displayCtrl Btn1;
_Btn2 = _display displayCtrl Btn2;
_Btn3 = _display displayCtrl Btn3;
_Btn4 = _display displayCtrl Btn4;
_Btn5 = _display displayCtrl Btn5;
_Btn6 = _display displayCtrl Btn6;
life_vInact_curTarget = _curTarget;

//Set Repair Action
_Btn1 ctrlSetText localize "STR_vInAct_Repair";
_Btn1 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_repairTruck;";

if("ToolKit" in (items player) && (damage _curTarget < 1)) then {_Btn1 ctrlEnable true;} else {_Btn1 ctrlEnable false;};

// Civs

if(playerSide == civilian) then {
	_Btn2 ctrlSetText localize "STR_vInAct_Registration";
	_Btn2 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_searchVehAction;";
	
	_Btn3 ctrlSetText localize "STR_vInAct_SearchVehicle";
	_Btn3 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_vehInvSearch;";
	
	_Btn4 ctrlSetText localize "STR_vInAct_PullOut";
	_Btn4 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_pulloutAction; closeDialog 0;";
	if(count crew _curTarget == 0) then {_Btn4 ctrlEnable false;};
	
	if({side _x == east} count playableUnits > 0) then
	{
		if(!life_adac_request) then
		{
			_Btn5 ctrlSetText "ADAC Rufen";
			_Btn5 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_requestADAC; closeDialog 0;";
			//_Btn5 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_requestADAC;"; orginal
		} else {
			_Btn2 ctrlSetText "ADAC Widerrufen";
			//_Btn5 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_requestNotADAC;"; // von deleteADAC in requestNotADAC geändert
			//_Btn5 buttonSetAction "[[cursorTarget],""life_fnc_deleteADAC"",civilian,FALSE] spawn life_fnc_MP; closeDialog 0;";
			_Btn2 buttonSetAction "[[cursorTarget],""life_fnc_deleteADAC"",civilian,FALSE] spawn life_fnc_MP; closeDialog 0;";
			
		};/*
		_Btn5 ctrlSetText "ADAC Rufen";
		_Btn5 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_requestADAC; closeDialog 0;";
		
		_Btn2 ctrlSetText "ADAC Widerrufen";
		_Btn2 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_requestNotADAC; closeDialog 0;";*/
	};
		
		
	
	/*neu test
	if(!life_adac_request) then
	{
		_Btn3 ctrlSetText "ADAC Rufen";
		_Btn3 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_requestADAC; closeDialog 0;";
	} else {
		_Btn3 ctrlSetText "ADAC Widerrufen";
		_Btn3 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_deleteADAC; closeDialog 0;";
	};*/
};

// Cops

if(playerSide == west) then {
	_Btn2 ctrlSetText localize "STR_vInAct_Registration";
	_Btn2 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_searchVehAction;";
	
	_Btn3 ctrlSetText localize "STR_vInAct_SearchVehicle";
	_Btn3 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_vehInvSearch;";
	
	_Btn4 ctrlSetText localize "STR_vInAct_PullOut";
	_Btn4 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_pulloutAction; closeDialog 0;";
	if(count crew _curTarget == 0) then {_Btn4 ctrlEnable false;};
	
	if({side _x == east} count playableUnits > 0) then
	{
		if(!life_adac_request) then
		{
			_Btn5 ctrlSetText "ADAC Rufen";
			_Btn5 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_requestADAC;";
		} else {
			_Btn5 ctrlSetText "ADAC Widerrufen";
			_Btn5 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_deleteADAC;";
		};
		
	} else {
		_Btn5 ctrlSetText localize "STR_vInAct_Impound";
		_Btn5 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_impoundAction;";
	};
	
	if(_curTarget isKindOf "Ship") then {
		_Btn6 ctrlSetText localize "STR_vInAct_PushBoat";
		_Btn6 buttonSetAction "[] spawn life_fnc_pushObject; closeDialog 0;";
		if(_curTarget isKindOf "Ship" && {local _curTarget} && {count crew _curTarget == 0}) then { _Btn6 ctrlEnable true;} else {_Btn6 ctrlEnable false};
	} else {
		if(typeOf (_curTarget) in ["C_Kart_01_Blu_F","C_Kart_01_Red_F","C_Kart_01_Fuel_F","C_Kart_01_Vrana_F","B_Heli_Transport_03_F","B_Heli_Transport_03_unarmed_F","O_Heli_Transport_04_F","O_Heli_Transport_04_ammo_F","O_Heli_Transport_04_bench_F","O_Heli_Transport_04_box_F","O_Heli_Transport_04_covered_F","O_Heli_Transport_04_fuel_F","O_Heli_Transport_04_medevac_F","O_Heli_Transport_04_repair_F"]) then {
			_Btn6 ctrlSetText localize "STR_vInAct_GetInKart";
			_Btn6 buttonSetAction "player moveInDriver life_vInact_curTarget; closeDialog 0;";
			if(count crew _curTarget == 0 && {canMove _curTarget} && {locked _curTarget == 0}) then {_Btn6 ctrlEnable true;} else {_Btn6 ctrlEnable false};
		} else {
			_Btn6 ctrlSetText localize "STR_vInAct_Unflip";
			_Btn6 buttonSetAction "life_vInact_curTarget setPos [(getPos life_vInact_curTarget select 0)+0.025, (getPos life_vInact_curTarget select 1), (getPos life_vInact_curTarget select 2)+0.5]; closeDialog 0;";
		};
	};
	
} else {
	
	if(_curTarget isKindOf "Ship") then {
		_Btn2 ctrlSetText localize "STR_vInAct_PushBoat";
		_Btn2 buttonSetAction "[] spawn life_fnc_pushObject; closeDialog 0;";
		if(_curTarget isKindOf "Ship" && {local _curTarget} && {count crew _curTarget == 0}) then { _Btn2 ctrlEnable true;} else {_Btn2 ctrlEnable false};
	} else {
		if(typeOf (_curTarget) in ["C_Kart_01_Blu_F","C_Kart_01_Red_F","C_Kart_01_Fuel_F","C_Kart_01_Vrana_F"]) then {
			_Btn2 ctrlSetText localize "STR_vInAct_GetInKart";
			_Btn2 buttonSetAction "player moveInDriver life_vInact_curTarget; closeDialog 0;";
			if(count crew _curTarget == 0 && {canMove _curTarget} && {locked _curTarget == 0}) then {_Btn2 ctrlEnable true;} else {_Btn2 ctrlEnable false};
		} else {
			_Btn2 ctrlSetText localize "STR_vInAct_Unflip";
			_Btn2 buttonSetAction "life_vInact_curTarget setPos [(getPos life_vInact_curTarget select 0)+0.025, (getPos life_vInact_curTarget select 1), (getPos life_vInact_curTarget select 2)+0.5]; closeDialog 0;";
		};
	};
	
	if(!life_adac_request) then
	{
		_Btn3 ctrlSetText "ADAC Rufen";
		_Btn3 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_requestADAC; closeDialog 0;";
	} else {
		_Btn3 ctrlSetText "ADAC Widerrufen";
		_Btn3 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_deleteADAC; closeDialog 0;";
	};
	
	_Btn4 ctrlSetText localize "STR_vInAct_PullOut";
	_Btn4 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_pulloutAction;";
	if(count crew _curTarget == 0) then {_Btn4 ctrlEnable false;};
	
	_Btn5 ctrlShow false;
	_Btn6 ctrlShow false;	
};





if(playerSide == east) then {
	_Btn2 ctrlSetText localize "STR_vInAct_Impound";
	_Btn2 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_impoundAction; closeDialog 0;";	
	if(_curTarget isKindOf "Ship") then {
		_Btn6 ctrlSetText localize "STR_vInAct_PushBoat";
		_Btn6 buttonSetAction "[] spawn life_fnc_pushObject; closeDialog 0;";
		if(_curTarget isKindOf "Ship" && {local _curTarget} && {count crew _curTarget == 0}) then { _Btn6 ctrlEnable true;} else {_Btn6 ctrlEnable false};
	} else {
		if(typeOf (_curTarget) in ["C_Kart_01_Blu_F","C_Kart_01_Red_F","C_Kart_01_Fuel_F","C_Kart_01_Vrana_F"]) then {
			_Btn6 ctrlSetText localize "STR_vInAct_GetInKart";
			_Btn6 buttonSetAction "player moveInDriver life_vInact_curTarget; closeDialog 0;";
			if(count crew _curTarget == 0 && {canMove _curTarget} && {locked _curTarget == 0}) then {_Btn6 ctrlEnable true;} else {_Btn6 ctrlEnable false};
		} else {
			_Btn6 ctrlSetText localize "STR_vInAct_Unflip";
			_Btn6 buttonSetAction "life_vInact_curTarget setPos [getPos life_vInact_curTarget select 0, getPos life_vInact_curTarget select 1, (getPos life_vInact_curTarget select 2)+0.5]; closeDialog 0;";
			if(count crew _curTarget == 0 && {canMove _curTarget}) then { _Btn6 ctrlEnable false;} else {_Btn6 ctrlEnable true;};
		};
	};
};