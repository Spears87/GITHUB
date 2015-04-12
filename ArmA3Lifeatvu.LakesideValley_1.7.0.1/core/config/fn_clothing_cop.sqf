#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Lakeside Police Department Shop"];

_ret = [];
switch (_filter) do
{
	case 0:
	{
		_ret pushBack ["fto_uni","Gefängniswärter",150];
	
		_ret pushBack ["A3L_Police_Uniform","LSPD",500];
		//_ret pushBack ["police_uni3","Recruit",500];
		_ret pushBack ["cadet_uni","Recruit",500];
		
		//_ret pushBack ["sheriff_uni1","Rec.Sheriff Uniform",500];
		_ret pushBack ["A3L_Sheriff_Uniform","Sheriff",500];
		
		_ret pushBack ["doj_uni","State Police",750];
		//_ret pushBack ["police_uni1","ST Uniform",750];
		
		_ret pushBack ["FBI_uni","FBI",1000];
		_ret pushBack ["swat_uni1","SWAT",150];
		
		_ret pushBack ["U_B_HeliPilotCoveralls","Pilot",150];
		_ret pushBack ["A3L_Prisoner_Outfit","Gefängnisuniform",150];
	};
	
	case 1:
	{
		_ret pushBack ["A3L_sargehat",nil,50];
		_ret pushBack ["A3L_policehelmet",nil,50];
		_ret pushBack ["H_HelmetB_black","SWAT Helmet",50];
		_ret pushBack ["H_PilotHelmetFighter_B","Pilot Helm",150];
	};
	
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Aviator",nil,75],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55],
			["G_Balaclava_blk",nil,55],
			["G_Balaclava_combat",nil,55],
			["G_Balaclava_lowprofile",nil,55],
			["A3L_Balaclava",nil,60]
			
		];
	};
	
	case 3:
	{
		_ret pushBack ["A3L_policevest2","DOJ",150];
		_ret pushBack ["A3L_policevest1","FBI",150];
		
		_ret pushBack ["A3L_sheriffvest2","LSPD",300];
		_ret pushBack ["A3L_sheriffvest1","Sheriff",300];
		
		_ret pushBack ["A3L_deptjvest1","State Police",500];
		_ret pushBack ["A3L_rangervest1","Chief",500];
		
		//_ret pushBack ["A3L_fbivest1","FBI Vest",1000];
		_ret pushBack ["SWATvest1","SWAT",1000];
		
		_ret pushBack ["V_Press_F","Presseweste nur zur Aushändigung",1000];
	};
	
	case 4:
	{
		_ret =
		[
			["B_Kitbag_cbr",nil,800],
			["B_FieldPack_cbr",nil,500],
			["B_AssaultPack_cbr",nil,700],
			["B_Bergen_sgg",nil,2500],
			["B_Carryall_cbr",nil,3500]
		];
	};
};

_ret;
