#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
life_query_time = time;
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_spikestrip = ObjNull;
life_respawn_timer = 600; //Scaled in minutes
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;
life_action_gathering = false;
Life_request_timer = false;
life_god = false; //Add this
life_frozen = false; //And this
life_markers = false; //Finally this
life_adacMarker = [];
life_adac_request = false;
life_married = "";


//Persistent Saving
__CONST__(life_save_civ,TRUE); //Save weapons for civs?
__CONST__(life_save_yinv,TRUE); //Save Y-Inventory for players?

//Revive constant variables.
__CONST__(life_revive_cops,FALSE); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,3500); //Fee for players to pay when revived.

//House Limit
__CONST__(life_houseLimit,5); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).

//Gang related stuff?
__CONST__(life_gangPrice,75000); //Price for creating a gang (They're all persistent so keep it high to avoid 345345345 gangs).
__CONST__(life_gangUpgradeBase,10000); //MASDASDASD
__CONST__(life_gangUpgradeMultipler,2.5); //BLAH

__CONST__(life_enableFatigue,true); //Enable / Disable the ARMA 3 Fatigue System

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];
/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 24; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 24; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** Life Variables *******
*****************************
*/
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_use_atm = true;
life_is_arrested = false;
life_delivery_in_progress = false;
life_action_in_use = false;
life_thirst = 100;
life_hunger = 100;
life_intox = 0.00;
__CONST__(life_paycheck_period,5); //Five minutes
ja_dzep = 0;
__CONST__(life_impound_car,2000);
__CONST__(life_impound_boat,1000);
__CONST__(life_impound_air,3000);
life_istazed = false;
life_my_gang = ObjNull;
life_smartphoneTarget = ObjNull;

life_vehicles = [];
bank_robber = [];
switch (playerSide) do
{
	case west: 
	{
		ja_pare = 22000; //Starting Bank Money
		life_paycheck = 1500; //Paycheck Amount
	};
	case civilian: 
	{
		ja_pare = 15000; //Starting Bank Money
		life_paycheck = 1500; //Paycheck Amount
	};
	
	case independent: {
		ja_pare = 15000;
		life_paycheck = 4500;
	};

	case east:
	{
		ja_pare = 15000; //Starting Bank Money
		life_paycheck = 1500; //Paycheck Amount
	};
};

/*
	Master Array of items?
*/
life_vShop_rentalOnly = ["B_MRAP_01_hmg_F","B_G_Offroad_01_armed_F"];
__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly); //These vehicles can never be bought and only 'rented'. Used as a balancer & money sink. If you want your server to be chaotic then fine.. Remove it..

life_inv_items = 
[
	"life_inv_oilu",
	"life_inv_oilp",
	"life_inv_heroinu",
	"life_inv_heroinp",
	"life_inv_marijuana",
	"life_inv_apple",
	"life_inv_rabbit",
	"life_inv_salema",
	"life_inv_ornate",
	"life_inv_mackerel",
	"life_inv_tuna",
	"life_inv_mullet",
	"life_inv_catshark",
	"life_inv_turtle",
	"life_inv_fishingpoles",
	"life_inv_water",
	"life_inv_donuts",
	"life_inv_turtlesoup",
	"life_inv_coffee",
	"life_inv_fuelF",
	"life_inv_fuelE",
	"life_inv_pickaxe",
	"life_inv_copperore",
	"life_inv_ironore",
	"life_inv_ironr",
	"life_inv_copperr",
	"life_inv_sand",
	"life_inv_salt",
	"life_inv_saltr",
	"life_inv_glass",
	"life_inv_tbacon",
	"life_inv_lockpick",
	"life_inv_redgull",
	"life_inv_peach",
	"life_inv_diamond",
	"life_inv_coke",
	"life_inv_cokep",
	"life_inv_diamondr",
	"life_inv_spikeStrip",
	"life_inv_rock",
	"life_inv_cement",
	"life_inv_goldbar",
	"life_inv_blastingcharge",
	"life_inv_boltcutter",
	"life_inv_defusekit",
	"life_inv_storagesmall",
	"life_inv_storagebig",
	"life_inv_wheat",
	"life_inv_sunflower",
	"life_inv_corn",
	"life_inv_bean",
	"life_inv_cotton",
	"life_inv_olive",
	"life_inv_opium",
	"life_inv_cannabis",
	"life_inv_pumpkin",
	"life_inv_wheatseeds",
	"life_inv_sunflowerseeds",
	"life_inv_cornseeds",
	"life_inv_beanseeds",
	"life_inv_cottonseeds",
	"life_inv_oliveseeds",
	"life_inv_opiumseeds",
	"life_inv_cokeseeds",
	"life_inv_cannabisseeds",
	"life_inv_pumpkinseeds",
	"life_inv_rawgoatmeat",
	"life_inv_rawchicken",
	"life_inv_rawsheepmeat",
	"life_inv_rawrabbit",
	//Additions
	"life_inv_zoobeer", // Duff Beer
	"life_inv_RoadCone",
	"life_inv_RoadConeStrip",
	"life_inv_RoadConeB",
	"life_inv_RoadConeStripB",
	"life_inv_RoadBlockWood",
	"life_inv_RoadBlockConc",
	"life_inv_RoadBlockRebel",
	"life_inv_BarGate",
	"life_inv_ziptie",
	"life_inv_cigarette",
	"life_inv_raxsrum",
	"life_inv_weddingring"
];

//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
	["license_cop_air","cop"],
	["license_cop_swat","cop"],
	["license_cop_cg","cop"],
	["license_civ_driver","civ"],
	["license_civ_air","civ"],
	["license_civ_heroin","civ"],
	["license_civ_marijuana","civ"],
	["license_civ_gang","civ"],
	["license_civ_boat","civ"],
	["license_civ_oil","civ"],
	["license_civ_dive","civ"],
	["license_civ_truck","civ"],
	["license_civ_gun","civ"],
	["license_civ_rebel","civ"],
	["license_civ_coke","civ"],
	["license_civ_diamond","civ"],
	["license_civ_copper","civ"],
	["license_civ_iron","civ"],
	["license_civ_sand","civ"],
	["license_civ_salt","civ"],
	["license_civ_cement","civ"],
	["license_med_air","med"],
	["license_civ_home","civ"]
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];
//[shortVar,reward]
life_illegal_items = [["heroinu",1200],["heroinp",2500],["cocaine",1500],["cocainep",3500],["cannabis",2500],["opium",2500],["marijuana",2000],["turtle",3000],["blastingcharge",10000],["boltcutter",500]];


/*
	Sell / buy arrays
*/
sell_array = 
[
	["apple",50],
	["heroinu",1000],
	["heroinp",1584],
	["salema",45],
	["ornate",40],
	["mackerel",175],
	["tuna",700],
	["mullet",250],
	["catshark",300],
	["rabbit",65],
	["oilp",1787],
	["turtle",3000],
	["water",5],
	["coffee",5],
	["turtlesoup",1000],
	["donuts",60],
	["marijuana",4400],
	["tbacon",25],
	["lockpick",250],
	["pickaxe",750],
	["redgull",200],
	["peach",55],
	["cocaine",1000],
	["cocainep",1000],
	["diamond",750],
	["diamondc",2100],
	["iron_r",1655],
	["copper_r",800],
	["salt_r",1650],
	["glass",1133],
	["fuelF",500],
		
	["wheat",326],
	["sunflower",305],
	["corn",735],
	["bean",336],
	["cotton",306],
	["olive",491],
	["opium",1000],
	["cannabis",1000],
	["pumpkin",970],
	
	["wheat seed",10],
	["sunflower seed",10],
	["corn seed",10],
	["bean seed",10],
	["cotton seed",10],
	["olive seed",10],
	["opium seed",150],
	["coke seed",150],
	["cannabis seed",150],
	["pumpkin seed",50],

	["raw goat meat",500],
	["raw chicken",700],
	["raw sheep meat",500],
	["raw rabbit",700],
	
	["spikeStrip",1200],
	["cement",1655],
	["goldbar",95000], 
	//Deo Additions
	["zoobeer",25], 
	["BarGate",500],
	["RoadBlockConc",1000],
	["RoadBlockWood",750],
	["RoadCone",50],
	["RoadConeStrip",250],
	["RoadConeB",100],
	["RoadConeStripB",500],
	["cigarette",5],
	["Rax's Rum",25],
	["weddingring",1000]
];
__CONST__(sell_array,sell_array);

buy_array =
[
	["apple",65],
	["rabbit",75],
	["salema",55],
	["ornate",50],
	["mackerel",200],
	["tuna",900],
	["mullet",300],
	["catshark",350],
	["water",10],
	["turtle",4000],
	["turtlesoup",2500],
	["donuts",120],
	["coffee",10],
	["tbacon",75],
	["lockpick",500],
	["pickaxe",1200],
	["redgull",1500],
	["fuelF",850],

	["wheat seed",25],
	["sunflower seed",25],
	["corn seed",25],
	["bean seed",25],
	["cotton seed",25],
	["olive seed",25],
	["opium seed",400],
	["cannabis seed",400],
	["pumpkin seed",150],
	["coke seed",350],
	
	["raw goat meat",600],
	["raw chicken",800],
	["raw sheep meat",600],
	["raw rabbit",800],
	
	["peach",68],
	["spikeStrip",2500],
	["blastingcharge",35000],
	["boltcutter",7500],
	["defusekit",2500],
	["storagesmall",75000],
	["storagebig",150000],

	// Deo's Adds
	["zoobeer",25],
	["BarGate",500],
	["RoadBlockConc",1000],
	["RoadBlockWood",750],
	["RoadCone",50],
	["RoadConeStrip",250],
	["RoadConeB",100],
	["RoadConeStripB",500],
	["cigarette",25],
	["Rax's Rum",50],
	["weddingring",25000]
];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
	["arifle_sdar_F",0],
	["hgun_P07_snds_F",0],
	["hgun_P07_F",0],
	["ItemGPS",0],
	["ToolKit",0],
	["FirstAidKit",0],
	["Medikit",0],
	["NVGoggles",0],
	["16Rnd_9x21_Mag",0],
	["20Rnd_556x45_UW_mag",0],
	["ItemMap",0],
	["ItemCompass",0],
	["Chemlight_blue",0],
	["Chemlight_yellow",0],
	["Chemlight_green",0],
	["Chemlight_red",0],
	["hgun_Rook40_F",0],
	["arifle_Katiba_F",0],
	["30Rnd_556x45_Stanag",0],
	["20Rnd_762x51_Mag",0],
	["30Rnd_65x39_caseless_green",0],
	["DemoCharge_Remote_Mag",0],
	["SLAMDirectionalMine_Wire_Mag",0],
	["optic_ACO_grn",0],
	["acc_flashlight",0],
	["srifle_EBR_F",0],
	["arifle_TRG21_F",0],
	["optic_MRCO",0],
	["optic_Aco",0],
	["arifle_MX_F",0],
	["arifle_MXC_F",0],
	["arifle_MXM_F",0],
	["MineDetector",0],
	["optic_Holosight",0],
	["acc_pointer_IR",0],
	["arifle_TRG20_F",0],
	["SMG_01_F",0],
	["arifle_Mk20C_F",0],
	["30Rnd_45ACP_Mag_SMG_01",0],
	["30Rnd_9x21_Mag",0]
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[
	["I_Heli_Transport_02_F",5000],
	["C_Rubberboat",1500],["C_Boat_Civil_01_F",8750],["B_Boat_Transport_01_F",375],["C_Boat_Civil_01_police_F",1000],["B_SDV_01_F",5000],
	["A3L_Karts",1250],["C_Kart_01_Blu_F",1250],["C_Kart_01_Fuel_F",1250],["C_Kart_01_Red_F",1250],["C_Kart_01_Vrana_F",1250],
	["A3L_AmberLamps",1250],["A3L_Laddertruck",2000],
	["A3L_Cooper_concept_blue",4000],["A3L_Cooper_concept_black",4000],["A3L_Cooper_concept_red",4000],["A3L_Cooper_concept_white",4000],
	["A3L_AMC",6800],["A3L_AMXRed",6800],["A3L_AMXWhite",6800],["A3L_AMXBlue",6800],["A3L_AMXGL",6800],
	["A3L_VolvoS60RBlack",6800],["A3L_VolvoS60Rred",6800],
	["S_Skyline_Red",7200],["S_Skyline_Blue",7200],["S_Skyline_Black",7200],["S_Skyline_Yellow",7200],["S_Skyline_Purple",7200],["S_Skyline_White",7200],
	["A3L_Camaro",12500],
	["A3L_Taurus",1750],["A3L_TaurusBlack",1750],["A3L_TaurusBlue",1750],["A3L_TaurusRed",1750],["A3L_TaurusWhite",1750],
	["A3L_GrandCaravan",3500],["A3L_GrandCaravanBlk",3500],["A3L_GrandCaravanBlue",3500],["A3L_GrandCaravanGreen",3500],["A3L_GrandCaravanRed",3500],["A3L_GrandCaravanPurple",3500],
	["A3L_Challenger",4750],["A3L_ChallengerGreen",4750],["A3L_ChallengerRed",4750],["A3L_ChallengerWhite",4750],["A3L_ChallengerBlack",4750],["A3L_ChallengerBlue",4750],
	["Jonzie_Viper",22500],
	["A3L_Escort",125],["A3L_EscortTaxi",125],["A3L_EscortBlack",125],["A3L_EscortBlue",125],["A3L_EscortWhite",125],["A3L_EscortPink",125],
	["A3L_PuntoRed",600],["A3L_PuntoBlack",600],["A3L_PuntoWhite",600],["A3L_PuntoGrey",600],
	["A3L_RegalBlack",650],["A3L_RegalBlue",650],["A3L_RegalOrange",650],["A3L_RegalRed",650],["A3L_RegalWhite",650],
	["A3L_JeepWhiteBlack",650],["A3L_JeepGreenBlack",650],["A3L_JeepRedTan",650],["A3L_JeepRedBlack",650],["A3L_JeepGrayBlack",650],
	["A3L_VolksWagenGolfGTired",900],["A3L_VolksWagenGolfGTiblack",900],["A3L_VolksWagenGolfGTiblue",900],["A3L_VolksWagenGolfGTiwhite",900],
	["A3L_F350Black",3500],["A3L_F350Blue",3500],["A3L_F350Red",3500],["A3L_F350White",3500],
	["A3L_Dumptruck",10000],["C_Van_01_box_F",4500],["C_Van_01_transport_F",2000],
	["A3L_GrandCaravanUC",1250],["A3L_GrandCaravanUCBlack",1250],
	["A3L_TaurusFPBLBPD",1250],["A3L_TaurusFPBLBCSO",1250],["A3L_TaurusUCBlack",1250],
	["A3L_TaurusUCGrey",2500],["A3L_TaurusUCWhite",2500],["A3L_TaurusUCBlue",2500],["A3L_TaurusUCRed",2500],
	["A3L_CVPIFPBLBPD",2250],["A3L_CVPIFPBLBCSO",2250],["A3L_CVPIFPBLBFG",2250],
	["A3L_jailBus",2500],
	["A3L_Suburban",2750],["A3L_SuburbanCSO",2750],["A3L_SuburbanFG",2750],
	["cl3_e63_amg_white",8000],["cl3_e63_amg_purple",8000],["cl3_e63_amg_navy_blue",8000],["cl3_e63_amg_lime",8000],["cl3_e63_amg_light_yellow",8000],
	["cl3_e63_amg_light_blue",8000],["cl3_e63_amg_grey",8000],["cl3_e63_amg_gold",8000],["cl3_e63_amg_burgundy",8000],["cl3_e63_amg_black",8000],["cl3_e63_amg_camo",8000],
	["cl3_e60_m5_white",7500],["cl3_e60_m5_purple",7500],["cl3_e60_m5_navy_blue",7500],["cl3_e60_m5_lime",7500],["cl3_e60_m5_light_yellow",7500],
	["cl3_e60_m5_light_blue",7500],["cl3_e60_m5_grey",7500],["cl3_e60_m5_gold",7500],["cl3_e60_m5_burgundy",7500],["cl3_e60_m5_black",7500],["cl3_e60_m5_camo",7500],
	["cl3_z4_2008_white",8000],["cl3_z4_2008_purple",8000],["cl3_z4_2008_navy_blue",8000],["cl3_z4_2008_lime",8000],["cl3_z4_2008_light_yellow",8000],
	["cl3_z4_2008_light_blue",8000],["cl3_z4_2008_grey",8000],["cl3_z4_2008_burgundy",8000],["cl3_z4_2008_black",8000],["cl3_z4_2008_camo",8000],
	["S_PorscheRS_Black",18000],["S_PorscheRS_Yellow",18000],["S_PorscheRS_White",18000],
	["cl3_carrera_gt_white",30000],["cl3_carrera_gt_purple",30000],["cl3_carrera_gt_navy_blue",30000],["cl3_carrera_gt_lime",30000],["cl3_carrera_gt_light_yellow",30000],
	["cl3_carrera_gt_light_blue",30000],["cl3_carrera_gt_grey",30000],["cl3_carrera_gt_gold",30000],["cl3_carrera_gt_burgundy",30000],["cl3_carrera_gt_black",30000],["cl3_carrera_gt_camo",30000],
	["cl3_insignia_white",5000],["cl3_insignia_purple",5000],["cl3_insignia_navy_blue",5000],["cl3_insignia_lime",5000],["cl3_insignia_light_yellow",5000],
	["cl3_insignia_light_blue",5000],["cl3_insignia_grey",5000],["cl3_insignia_gold",5000],["cl3_insignia_burgundy",5000],["cl3_insignia_black",5000],["cl3_insignia_camo",5000],
	["cl3_golf_mk2_white",1250],["cl3_golf_mk2_purple",1250],["cl3_golf_mk2_navy_blue",1250],["cl3_golf_mk2_lime",1250],["cl3_golf_mk2_light_yellow",1250],
	["cl3_golf_mk2_light_blue",1250],["cl3_golf_mk2_grey",1250],["cl3_golf_mk2_gold",1250],["cl3_golf_mk2_burgundy",1250],["cl3_golf_mk2_black",1250],["cl3_golf_mk2_camo",1250],
	["cl3_polo_gti_white",1750],["cl3_polo_gti_purple",1750],["cl3_polo_gti_navy_blue",1750],["cl3_polo_gti_lime",1750],["cl3_polo_gti_light_yellow",1750],
	["cl3_polo_gti_light_blue",1750],["cl3_polo_gti_grey",1750],["cl3_polo_gti_gold",1750],["cl3_polo_gti_burgundy",1750],["cl3_polo_gti_black",1750],["cl3_polo_gti_camo",1750],
	["cl3_reventon_white",34000],["cl3_reventon_purple",34000],["cl3_reventon_navy_blue",34000],["cl3_reventon_lime",34000],["cl3_reventon_light_yellow",34000],
	["cl3_reventon_light_blue",34000],["cl3_reventon_grey",34000],["cl3_reventon_gold",34000],["cl3_reventon_burgundy",34000],["cl3_reventon_black",34000],
	["cl3_reventon_2tone2",34000],["cl3_reventon_2tone3",34000],["cl3_reventon_2tone4",34000],["cl3_reventon_2tone5",34000],["cl3_reventon_flame1",34000],["cl3_reventon_camo",34000],
	["cl3_murcielago_white",30000],["cl3_murcielago_purple",30000],["cl3_murcielago_navy_blue",30000],["cl3_murcielago_lime",30000],["cl3_murcielago_light_yellow",30000],
	["cl3_murcielago_light_blue",30000],["cl3_murcielago_grey",30000],["cl3_murcielago_gold",30000],["cl3_murcielago_burgundy",30000],["cl3_murcielago_black",30000],
	["cl3_murcielago_2tone2",30000],["cl3_murcielago_2tone3",30000],["cl3_murcielago_2tone4",30000],["cl3_murcielago_2tone5",30000],["cl3_murcielago_flame1",30000],["cl3_murcielago_camo",30000],
	["cl3_lamborghini_gt1_white",40000],["cl3_lamborghini_gt1_purple",40000],["cl3_lamborghini_gt1_navy_blue",40000],["cl3_lamborghini_gt1_lime",40000],["cl3_lamborghini_gt1_light_yellow",40000],
	["cl3_lamborghini_gt1_light_blue",40000],["cl3_lamborghini_gt1_grey",40000],["cl3_lamborghini_gt1_gold",40000],["cl3_lamborghini_gt1_burgundy",40000],["cl3_lamborghini_gt1_black",40000],
	["cl3_dbs_volante_white",10000],["cl3_dbs_volante_purple",10000],["cl3_dbs_volante_navy_blue",10000],["cl3_dbs_volante_lime",10000],["cl3_dbs_volante_light_yellow",10000],
	["cl3_dbs_volante_light_blue",10000],["cl3_dbs_volante_grey",10000],["cl3_dbs_volante_gold",10000],["cl3_dbs_volante_burgundy",10000],["cl3_dbs_volante_black",10000],
	["cl3_dbs_volante_flame1",10000],["cl3_dbs_volante_camo",10000],
	["S_Vantage_Red",9000],["S_Vantage_Blue",9000],["S_Vantage_Black",9000],["S_Vantage_Yellow",9000],["S_Vantage_LightBlue",9000],["S_Vantage_Purple",9000],["S_Vantage_White",9000],
	["IVORY_R8",24000],
	["cl3_r8_spyder_white",26000],["cl3_r8_spyder_purple",26000],["cl3_r8_spyder_navy_blue",26000],["cl3_r8_spyder_lime",26000],["cl3_r8_spyder_light_yellow",26000],
	["cl3_r8_spyder_light_blue",26000],["cl3_r8_spyder_grey",26000],["cl3_r8_spyder_gold",26000],["cl3_r8_spyder_burgundy",26000],["cl3_r8_spyder_black",26000],
	["cl3_r8_spyder_2tone2",26000],["cl3_r8_spyder_2tone3",26000],["cl3_r8_spyder_2tone4",26000],["cl3_r8_spyder_2tone5",26000],["cl3_r8_spyder_flame1",26000],["cl3_r8_spyder_camo",26000],
	["cl3_458_white",26000],["cl3_458_purple",26000],["cl3_458_navy_blue",26000],["cl3_458_lime",26000],["cl3_458_light_yellow",26000],
	["cl3_458_light_blue",26000],["cl3_458_grey",26000],["cl3_458_gold",26000],["cl3_458_burgundy",26000],["cl3_458_black",26000],
	["cl3_458_2tone2",26000],["cl3_458_2tone3",26000],["cl3_458_2tone4",26000],["cl3_458_2tone5",26000],["cl3_458_flame1",26000],["cl3_458_camo",26000],
	["Jonzie_Mini_Cooper_R_spec",15000],["Jonzie_Mini_Cooper",100],
	["cl3_arielatom_race_white",55000],["cl3_arielatom_race_purple",55000],["cl3_arielatom_race_navy_blue",55000],["cl3_arielatom_race_lime",55000],["cl3_arielatom_race_light_yellow",55000],
	["cl3_arielatom_race_light_blue",55000],["cl3_arielatom_race_grey",55000],["cl3_arielatom_race_gold",55000],["cl3_arielatom_race_burgundy",55000],["cl3_arielatom_race_black",55000],["cl3_arielatom_race_camo",55000],
	["cl3_veyron_blk_wht",50000],["cl3_veyron_lblue_dblue",50000],["cl3_veyron_lblue_lblue",50000],["cl3_veyron_brn_blk",50000],
	["A3L_CVPILBFD",500],
	["Jonzie_Ambulance",1250],
	["cl3_dodge_charger_emt",5000],
	["O_Heli_Transport_04_medevac_F",7500],
	["A3L_RX7_Blue",6400],["A3L_RX7_Red",6400],["A3L_RX7_White",6400],["A3L_RX7_Black",6400],
	["S_McLarenP1_Black",40000],["S_McLarenP1_Blue",40000],["S_McLarenP1_Orange",40000],["S_McLarenP1_White",40000],["S_McLarenP1_Yellow",40000],["S_McLarenP1_Silver",40000],
	["A3L_CVWhite",1500],["A3L_CVBlack",1500],["A3L_CVGrey",1500],["A3L_CVRed",1500],["A3L_CVPink",1500],["A3L_CVBlue",1500],
	["cl3_dodge_charger_f_white",5500],["cl3_dodge_charger_f_purple",5500],["cl3_dodge_charger_f_blue",5500],["cl3_dodge_charger_f_lime",5500],["cl3_dodge_charger_f_yellow",5500],
	["cl3_dodge_charger_f_grey",5500],["cl3_dodge_charger_f_black",5500],["cl3_dodge_charger_f_darkgreen",5500],["cl3_dodge_charger_f_darkred",5500],["cl3_dodge_charger_f_orange",5500],["cl3_dodge_charger_f_camo",5500],["cl3_dodge_charger_f_camourban",5500],
	["cl3_s1203_blue",250],["cl3_lada_red",275],["cl3_lada_white",275],["cl3_volha_black",300],["cl3_volha_grey",300],
	["cl3_suv_black",3000],["cl3_suv_taxi",3750],
	["cl3_civic_vti_white",2500],["cl3_civic_vti_purple",2500],["cl3_civic_vti_navy_blue",2500],["cl3_civic_vti_lime",2500],["cl3_civic_vti_light_yellow",2500],
	["cl3_civic_vti_light_blue",2500],["cl3_civic_vti_grey",2500],["cl3_civic_vti_gold",2500],["cl3_civic_vti_burgundy",2500],["cl3_civic_vti_black",2500],["cl3_civic_vti_camo",2500],
	["cl3_range_rover_white",1000],["cl3_range_rover_purple",1000],["cl3_range_rover_navy_blue",1000],["cl3_range_rover_lime",1000],["cl3_range_rover_light_yellow",1000],
	["cl3_range_rover_light_blue",1000],["cl3_range_rover_grey",1000],["cl3_range_rover_gold",1000],["cl3_range_rover_burgundy",1000],["cl3_range_rover_black",1000],["cl3_range_rover_camo",1000],
	["A3L_Bus",3500],["A3L_SchoolBus",4250],["A3L_Towtruck",2500],
	["GNT_C185F",50000],["GNT_C185",50000],
	["IVORY_CRJ200_1",160000],
	["IVORY_YAK42D_1",200000],
	["DAR_ImpalaPolice",375],
	["DAR_TaurusPolice",1250],
	["DAR_CVPIPolice",2250],
	["DAR_TahoePolice",2750],
	["A3L_EvoXFPBLBPD",3500],
	["cl3_dodge_charger_k9",3000],
	["DAR_CVPIAuxiliary",2250],
	["A3L_EvoXFPBLBSO",3500],
	["cl3_dodge_charger_patrol",3000],
	["A3L_CVPIUC",2500],["A3L_CVPIUCWhite",2500],["A3L_CVPIUCBlack",2500],["A3L_CVPIGrey",2500],["A3L_CVPIUCRed",2500],["A3L_CVPIUCPink",2500],["A3L_CVPIUCBlue",2500],
	["A3L_ChargerUC",3000],["A3L_ChargerUCWhite",3000],["A3L_ChargerLB",3000],
	["DAR_TahoePoliceDet",2750],
	["A3L_CVPIFPBLBHP",2250],["A3L_CVPIFPBLBSM",2250],["A3L_CVPIFPBLBSP2",2250],
	["IVORY_REV",5000],
	["I_Heli_light_03_unarmed_F",5000],
	["B_Heli_Transport_01_F",10000],
	["B_Heli_Transport_03_unarmed_F",15000],
	["O_Heli_Transport_04_F",15000],
	["O_Heli_Transport_04_covered_F",15000],
	["IVORY_T6A_1",15000],
	["A3L_Ship",35000],["A3L_Jetski",7500],["A3L_Jetski_yellow",7500],
	["A3L_delorean",5000],
	
	["IVORY_PRIUS",5000],["C_Heli_Light_01_civil_F",150000],["B_Heli_Light_01_F",100000],["O_Heli_Light_02_unarmed_F",175000],["ivory_b206_rescue",100000],["ivory_b206",100000],
	["ivory_b206_news",100000],["ivory_b206_police",100000],["IVORY_BELL512_POLICE",185000],["IVORY_BELL512",185000],["IVORY_BELL512_RESCUE",185000]
];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
	["I_Heli_Transport_02_F",50000],
	["C_Rubberboat",15000],["C_Boat_Civil_01_F",87500],["B_Boat_Transport_01_F",3750],["C_Boat_Civil_01_police_F",10000],["B_SDV_01_F",50000],
	["A3L_Karts",12500],["C_Kart_01_Blu_F",12500],["C_Kart_01_Fuel_F",12500],["C_Kart_01_Red_F",12500],["C_Kart_01_Vrana_F",12500],
	["A3L_AmberLamps",12500],["A3L_Laddertruck",20000],
	["A3L_Cooper_concept_blue",40000],["A3L_Cooper_concept_black",40000],["A3L_Cooper_concept_red",40000],["A3L_Cooper_concept_white",40000],
	["A3L_AMC",68000],["A3L_AMXRed",68000],["A3L_AMXWhite",68000],["A3L_AMXBlue",68000],["A3L_AMXGL",68000],
	["A3L_VolvoS60RBlack",68000],["A3L_VolvoS60Rred",68000],
	["S_Skyline_Red",72000],["S_Skyline_Blue",72000],["S_Skyline_Black",72000],["S_Skyline_Yellow",72000],["S_Skyline_Purple",72000],["S_Skyline_White",72000],
	["A3L_Camaro",12500],
	["A3L_Taurus",17500],["A3L_TaurusBlack",17500],["A3L_TaurusBlue",17500],["A3L_TaurusRed",17500],["A3L_TaurusWhite",17500],
	["A3L_GrandCaravan",35000],["A3L_GrandCaravanBlk",35000],["A3L_GrandCaravanBlue",35000],["A3L_GrandCaravanGreen",35000],["A3L_GrandCaravanRed",35000],["A3L_GrandCaravanPurple",35000],
	["A3L_Challenger",47500],["A3L_ChallengerGreen",47500],["A3L_ChallengerRed",47500],["A3L_ChallengerWhite",47500],["A3L_ChallengerBlack",47500],["A3L_ChallengerBlue",47500],
	["Jonzie_Viper",225000],
	["A3L_Escort",1250],["A3L_EscortTaxi",1250],["A3L_EscortBlack",1250],["A3L_EscortBlue",1250],["A3L_EscortWhite",1250],["A3L_EscortPink",1250],
	["A3L_PuntoRed",6000],["A3L_PuntoBlack",6000],["A3L_PuntoWhite",6000],["A3L_PuntoGrey",6000],
	["A3L_RegalBlack",6500],["A3L_RegalBlue",6500],["A3L_RegalOrange",6500],["A3L_RegalRed",6500],["A3L_RegalWhite",6500],
	["A3L_JeepWhiteBlack",6500],["A3L_JeepGreenBlack",6500],["A3L_JeepRedTan",6500],["A3L_JeepRedBlack",6500],["A3L_JeepGrayBlack",6500],
	["A3L_VolksWagenGolfGTired",9000],["A3L_VolksWagenGolfGTiblack",9000],["A3L_VolksWagenGolfGTiblue",9000],["A3L_VolksWagenGolfGTiwhite",9000],
	["A3L_F350Black",35000],["A3L_F350Blue",35000],["A3L_F350Red",35000],["A3L_F350White",35000],
	["A3L_Dumptruck",100000],["C_Van_01_box_F",45000],["C_Van_01_transport_F",20000],
	["A3L_GrandCaravanUC",12500],["A3L_GrandCaravanUCBlack",12500],
	["A3L_TaurusFPBLBPD",12500],["A3L_TaurusFPBLBCSO",12500],["A3L_TaurusUCBlack",12500],
	["A3L_TaurusUCGrey",20500],["A3L_TaurusUCWhite",25000],["A3L_TaurusUCBlue",25000],["A3L_TaurusUCRed",25000],
	["A3L_CVPIFPBLBPD",22500],["A3L_CVPIFPBLBCSO",22500],["A3L_CVPIFPBLBFG",22500],
	["A3L_jailBus",25000],
	["A3L_Suburban",27500],["A3L_SuburbanCSO",27500],["A3L_SuburbanFG",27500],
	["cl3_e63_amg_white",80000],["cl3_e63_amg_purple",80000],["cl3_e63_amg_navy_blue",80000],["cl3_e63_amg_lime",80000],["cl3_e63_amg_light_yellow",80000],
	["cl3_e63_amg_light_blue",80000],["cl3_e63_amg_grey",80000],["cl3_e63_amg_gold",80000],["cl3_e63_amg_burgundy",80000],["cl3_e63_amg_black",80000],["cl3_e63_amg_camo",80000],
	["cl3_e60_m5_white",75000],["cl3_e60_m5_purple",75000],["cl3_e60_m5_navy_blue",75000],["cl3_e60_m5_lime",75000],["cl3_e60_m5_light_yellow",75000],
	["cl3_e60_m5_light_blue",75000],["cl3_e60_m5_grey",75000],["cl3_e60_m5_gold",75000],["cl3_e60_m5_burgundy",75000],["cl3_e60_m5_black",75000],["cl3_e60_m5_camo",75000],
	["cl3_z4_2008_white",80000],["cl3_z4_2008_purple",80000],["cl3_z4_2008_navy_blue",80000],["cl3_z4_2008_lime",80000],["cl3_z4_2008_light_yellow",80000],
	["cl3_z4_2008_light_blue",80000],["cl3_z4_2008_grey",80000],["cl3_z4_2008_burgundy",80000],["cl3_z4_2008_black",80000],["cl3_z4_2008_camo",80000],
	["S_PorscheRS_Black",180000],["S_PorscheRS_Yellow",180000],["S_PorscheRS_White",180000],
	["cl3_carrera_gt_white",300000],["cl3_carrera_gt_purple",300000],["cl3_carrera_gt_navy_blue",300000],["cl3_carrera_gt_lime",300000],["cl3_carrera_gt_light_yellow",300000],
	["cl3_carrera_gt_light_blue",300000],["cl3_carrera_gt_grey",300000],["cl3_carrera_gt_gold",300000],["cl3_carrera_gt_burgundy",300000],["cl3_carrera_gt_black",300000],["cl3_carrera_gt_camo",300000],
	["cl3_insignia_white",50000],["cl3_insignia_purple",50000],["cl3_insignia_navy_blue",50000],["cl3_insignia_lime",50000],["cl3_insignia_light_yellow",50000],
	["cl3_insignia_light_blue",50000],["cl3_insignia_grey",50000],["cl3_insignia_gold",50000],["cl3_insignia_burgundy",50000],["cl3_insignia_black",50000],["cl3_insignia_camo",50000],
	["cl3_golf_mk2_white",12500],["cl3_golf_mk2_purple",12500],["cl3_golf_mk2_navy_blue",12500],["cl3_golf_mk2_lime",12500],["cl3_golf_mk2_light_yellow",12500],
	["cl3_golf_mk2_light_blue",12500],["cl3_golf_mk2_grey",12500],["cl3_golf_mk2_gold",12500],["cl3_golf_mk2_burgundy",12500],["cl3_golf_mk2_black",12500],["cl3_golf_mk2_camo",12500],
	["cl3_polo_gti_white",17500],["cl3_polo_gti_purple",17500],["cl3_polo_gti_navy_blue",17500],["cl3_polo_gti_lime",17500],["cl3_polo_gti_light_yellow",17500],
	["cl3_polo_gti_light_blue",17500],["cl3_polo_gti_grey",17500],["cl3_polo_gti_gold",17500],["cl3_polo_gti_burgundy",17500],["cl3_polo_gti_black",17500],["cl3_polo_gti_camo",17500],
	["cl3_reventon_white",340000],["cl3_reventon_purple",340000],["cl3_reventon_navy_blue",340000],["cl3_reventon_lime",340000],["cl3_reventon_light_yellow",340000],
	["cl3_reventon_light_blue",340000],["cl3_reventon_grey",340000],["cl3_reventon_gold",340000],["cl3_reventon_burgundy",340000],["cl3_reventon_black",340000],
	["cl3_reventon_2tone2",340000],["cl3_reventon_2tone3",340000],["cl3_reventon_2tone4",340000],["cl3_reventon_2tone5",340000],["cl3_reventon_flame1",340000],["cl3_reventon_camo",340000],
	["cl3_murcielago_white",300000],["cl3_murcielago_purple",300000],["cl3_murcielago_navy_blue",300000],["cl3_murcielago_lime",300000],["cl3_murcielago_light_yellow",300000],
	["cl3_murcielago_light_blue",300000],["cl3_murcielago_grey",300000],["cl3_murcielago_gold",300000],["cl3_murcielago_burgundy",300000],["cl3_murcielago_black",300000],
	["cl3_murcielago_2tone2",300000],["cl3_murcielago_2tone3",300000],["cl3_murcielago_2tone4",300000],["cl3_murcielago_2tone5",300000],["cl3_murcielago_flame1",300000],["cl3_murcielago_camo",300000],
	["cl3_lamborghini_gt1_white",400000],["cl3_lamborghini_gt1_purple",400000],["cl3_lamborghini_gt1_navy_blue",400000],["cl3_lamborghini_gt1_lime",400000],["cl3_lamborghini_gt1_light_yellow",400000],
	["cl3_lamborghini_gt1_light_blue",400000],["cl3_lamborghini_gt1_grey",400000],["cl3_lamborghini_gt1_gold",400000],["cl3_lamborghini_gt1_burgundy",400000],["cl3_lamborghini_gt1_black",400000],
	["cl3_dbs_volante_white",100000],["cl3_dbs_volante_purple",100000],["cl3_dbs_volante_navy_blue",100000],["cl3_dbs_volante_lime",100000],["cl3_dbs_volante_light_yellow",100000],
	["cl3_dbs_volante_light_blue",100000],["cl3_dbs_volante_grey",100000],["cl3_dbs_volante_gold",100000],["cl3_dbs_volante_burgundy",100000],["cl3_dbs_volante_black",100000],
	["cl3_dbs_volante_flame1",100000],["cl3_dbs_volante_camo",100000],
	["S_Vantage_Red",90000],["S_Vantage_Blue",90000],["S_Vantage_Black",90000],["S_Vantage_Yellow",90000],["S_Vantage_LightBlue",90000],["S_Vantage_Purple",90000],["S_Vantage_White",90000],
	["IVORY_R8",240000],
	["cl3_r8_spyder_white",260000],["cl3_r8_spyder_purple",260000],["cl3_r8_spyder_navy_blue",260000],["cl3_r8_spyder_lime",260000],["cl3_r8_spyder_light_yellow",260000],
	["cl3_r8_spyder_light_blue",260000],["cl3_r8_spyder_grey",260000],["cl3_r8_spyder_gold",260000],["cl3_r8_spyder_burgundy",260000],["cl3_r8_spyder_black",260000],
	["cl3_r8_spyder_2tone2",260000],["cl3_r8_spyder_2tone3",260000],["cl3_r8_spyder_2tone4",260000],["cl3_r8_spyder_2tone5",260000],["cl3_r8_spyder_flame1",260000],["cl3_r8_spyder_camo",260000],
	["cl3_458_white",260000],["cl3_458_purple",260000],["cl3_458_navy_blue",260000],["cl3_458_lime",260000],["cl3_458_light_yellow",260000],
	["cl3_458_light_blue",260000],["cl3_458_grey",260000],["cl3_458_gold",260000],["cl3_458_burgundy",260000],["cl3_458_black",260000],
	["cl3_458_2tone2",260000],["cl3_458_2tone3",260000],["cl3_458_2tone4",260000],["cl3_458_2tone5",260000],["cl3_458_flame1",260000],["cl3_458_camo",260000],
	["Jonzie_Mini_Cooper_R_spec",150000],["Jonzie_Mini_Cooper",1000],
	["cl3_arielatom_race_white",550000],["cl3_arielatom_race_purple",550000],["cl3_arielatom_race_navy_blue",550000],["cl3_arielatom_race_lime",550000],["cl3_arielatom_race_light_yellow",550000],
	["cl3_arielatom_race_light_blue",550000],["cl3_arielatom_race_grey",550000],["cl3_arielatom_race_gold",550000],["cl3_arielatom_race_burgundy",550000],["cl3_arielatom_race_black",550000],["cl3_arielatom_race_camo",550000],
	["cl3_veyron_blk_wht",500000],["cl3_veyron_lblue_dblue",500000],["cl3_veyron_lblue_lblue",500000],["cl3_veyron_brn_blk",500000],
	["A3L_CVPILBFD",5000],
	["Jonzie_Ambulance",12500],
	["cl3_dodge_charger_emt",50000],
	["O_Heli_Transport_04_medevac_F",75000],
	["A3L_RX7_Blue",64000],["A3L_RX7_Red",64000],["A3L_RX7_White",64000],["A3L_RX7_Black",64000],
	["S_McLarenP1_Black",400000],["S_McLarenP1_Blue",400000],["S_McLarenP1_Orange",400000],["S_McLarenP1_White",400000],["S_McLarenP1_Yellow",400000],["S_McLarenP1_Silver",400000],
	["A3L_CVWhite",15000],["A3L_CVBlack",15000],["A3L_CVGrey",15000],["A3L_CVRed",15000],["A3L_CVPink",15000],["A3L_CVBlue",15000],
	["cl3_dodge_charger_f_white",55000],["cl3_dodge_charger_f_purple",55000],["cl3_dodge_charger_f_blue",55000],["cl3_dodge_charger_f_lime",55000],["cl3_dodge_charger_f_yellow",55000],
	["cl3_dodge_charger_f_grey",55000],["cl3_dodge_charger_f_black",55000],["cl3_dodge_charger_f_darkgreen",55000],["cl3_dodge_charger_f_darkred",55000],["cl3_dodge_charger_f_orange",55000],["cl3_dodge_charger_f_camo",55000],["cl3_dodge_charger_f_camourban",55000],
	["cl3_s1203_blue",2500],["cl3_lada_red",2750],["cl3_lada_white",2750],["cl3_volha_black",3000],["cl3_volha_grey",3000],
	["cl3_suv_black",30000],["cl3_suv_taxi",37500],
	["cl3_civic_vti_white",25000],["cl3_civic_vti_purple",25000],["cl3_civic_vti_navy_blue",25000],["cl3_civic_vti_lime",25000],["cl3_civic_vti_light_yellow",25000],
	["cl3_civic_vti_light_blue",25000],["cl3_civic_vti_grey",25000],["cl3_civic_vti_gold",25000],["cl3_civic_vti_burgundy",25000],["cl3_civic_vti_black",25000],["cl3_civic_vti_camo",25000],
	["cl3_range_rover_white",10000],["cl3_range_rover_purple",10000],["cl3_range_rover_navy_blue",10000],["cl3_range_rover_lime",10000],["cl3_range_rover_light_yellow",10000],
	["cl3_range_rover_light_blue",10000],["cl3_range_rover_grey",10000],["cl3_range_rover_gold",10000],["cl3_range_rover_burgundy",10000],["cl3_range_rover_black",10000],["cl3_range_rover_camo",10000],
	["A3L_Bus",35000],["A3L_SchoolBus",42500],["A3L_Towtruck",25000],
	["GNT_C185F",500000],["GNT_C185",500000],
	["IVORY_CRJ200_1",1600000],
	["IVORY_YAK42D_1",2000000],
	["DAR_ImpalaPolice",3750],
	["DAR_TaurusPolice",12500],
	["DAR_CVPIPolice",22500],
	["DAR_TahoePolice",27500],
	["A3L_EvoXFPBLBPD",35000],
	["cl3_dodge_charger_k9",30000],
	["DAR_CVPIAuxiliary",22500],
	["A3L_EvoXFPBLBSO",35000],
	["cl3_dodge_charger_patrol",30000],
	["A3L_CVPIUC",25000],["A3L_CVPIUCWhite",25000],["A3L_CVPIUCBlack",25000],["A3L_CVPIGrey",25000],["A3L_CVPIUCRed",25000],["A3L_CVPIUCPink",25000],["A3L_CVPIUCBlue",25000],
	["A3L_ChargerUC",30000],["A3L_ChargerUCWhite",30000],["A3L_ChargerLB",30000],
	["DAR_TahoePoliceDet",27500],
	["A3L_CVPIFPBLBHP",22500],["A3L_CVPIFPBLBSM",22500],["A3L_CVPIFPBLBSP2",22500],
	["IVORY_REV",50000],
	["I_Heli_light_03_unarmed_F",50000],
	["B_Heli_Transport_01_F",100000],
	["B_Heli_Transport_03_unarmed_F",150000],
	["O_Heli_Transport_04_F",150000],
	["O_Heli_Transport_04_covered_F",150000],
	["IVORY_T6A_1",150000],
	["A3L_Ship",350000],["A3L_Jetski",75000],["A3L_Jetski_yellow",75000],
	["A3L_delorean",5000],
	
	["IVORY_PRIUS",5000],["C_Heli_Light_01_civil_F",150000],["B_Heli_Light_01_F",100000],["O_Heli_Light_02_unarmed_F",175000],["ivory_b206_rescue",100000],["ivory_b206",100000],
	["ivory_b206_news",100000],["ivory_b206_police",100000],["IVORY_BELL512_POLICE",185000],["IVORY_BELL512",185000],["IVORY_BELL512_RESCUE",185000],["dar_tahoeems",10000]
];
__CONST__(life_garage_sell,life_garage_sell);