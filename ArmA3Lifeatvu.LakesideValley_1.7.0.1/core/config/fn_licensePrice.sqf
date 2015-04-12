/*
	File: fn_licensePrice.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the license price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{
	case "driver": {10000}; //Drivers License cost
	case "boat": {15000}; //Boating license cost
	case "pilot": {150000}; //Pilot/air license cost
	case "gun": {50000}; //Firearm/gun license cost
	case "dive": {4000}; //Diving license cost
	case "oil": {25000}; //Oil processing license cost
	case "cair": {15000}; //Cop Pilot License cost
	case "swat": {35000}; //Swat License cost
	case "cg": {8000}; //Coast guard license cost
	case "heroin": {80000}; //Heroin processing license cost
	case "marijuana": {145000}; //Marijuana processing license cost
	case "medmarijuana": {1500}; //Medical Marijuana processing license cost
	case "gang": {10000}; //Gang license cost
	case "rebel": {1750000}; //Rebel license cost
	case "truck": {50000}; //Truck license cost
	case "diamond": {52500};
	case "salt": {30000};
	case "cocaine": {125000};
	case "sand": {37000};
	case "iron": {22000};
	case "copper": {20000};
	case "cement": {27000};
	case "mair": {15000};
	case "home": {75000};
};