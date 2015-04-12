/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"EMS Clothing Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		
			["EMTRM_uni",nil,1000],
			["A3L_EMT1",nil,1000],
			["A3L_EMT2",nil,1000],
			["fire_uni2",nil,1000],
			["fire_uni1",nil,1000],
			["emsoff_uni",nil,1000],
			["emt_Uni1",nil, 1000],
			["emt_Uni3",nil, 1000],
			["U_O_Wetsuit",nil,1000]
		
		];
	};
	
	//Hats
	case 1:
	{
		[
			["firehat",nil,20],
			["A3L_medic_helmet",nil,20],
			["H_MilCap_blue",nil,20],
			["H_CrewHelmetHeli_B",nil,20],
			["H_Cap_blu",nil,20],
			["H_Cap_red",nil,20]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Aviator",nil,100],
			["G_Lady_Mirror",nil,150],
			["G_Lady_Dark",nil,150],
			["G_Lady_Blue",nil,150],
			["G_Lowprofile",nil,30],
			["G_Bandanna_aviator",nil,20],
			["G_Diving",nil,500]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_BandollierB_blk",nil,1000],
			["V_Rangemaster_belt",nil,250],
			["V_RebreatherB",nil,5000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_FieldPack_ocamo",nil,300],
			["B_Carryall_oucamo",nil,300],
			["B_TacticalPack_blk",nil,300]
		];
	};
};
