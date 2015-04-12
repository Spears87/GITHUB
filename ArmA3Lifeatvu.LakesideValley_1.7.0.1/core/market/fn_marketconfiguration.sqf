/*

	Main configuration for non-persistent market system
	Will need triggers to hook into vanilla pricing methods

*/

////////////MAIN CONFIG

life_market_resources = [

	//Schema: SHORTNAME, Default, Min, Max, changes in action, [Sales multiplied by 1, Purchase multiplied by -1]
	//["gold", 1500, 450, 2300, 8, 5],
	
	["diamondc", 3260, 3160, 3260, 4, 2,
		[
			["iron_r",1],
			["copper_r",1],
			["cement",1],
			["glass",1],
			["wheat",1],
			["sunflower",1],
			["corn",1],
			["bean",1],
			["cotton",1],
			["oilp",1],
			["pumpkin",1],
			["salt_r",1]
		] 
	],
	
	["oilp", 4041, 3841, 3641, 6, 3,
		[
			["diamondc",1],
			["iron_r",1],
			["copper_r",1],
			["cement",1],
			["glass",1],
			["wheat",1],
			["sunflower",1],
			["corn",1],
			["bean",1],
			["cotton",1],
			["pumpkin",1],
			["salt_r",1]
		]
	],
	
	["salt_r", 1194, 1094, 994, 4, 2,
		[
			["diamondc",1],
			["iron_r",1],
			["copper_r",1],
			["cement",1],
			["glass",1],
			["wheat",1],
			["sunflower",1],
			["corn",1],
			["oilp",1],
			["bean",1],
			["cotton",1],
			["pumpkin",1]
		]
	],
	
	["cement", 3117, 2917, 2717, 6, 3,
		[ 
			["diamondc",1],
			["iron_r",1],
			["copper_r",1],
			["glass",1],
			["wheat",1],
			["sunflower",1],
			["corn",1],
			["bean",1],
			["cotton",1],
			["oilp",1],
			["pumpkin",1],
			["salt_r",1]
		] 
	],
	
	["glass", 1437, 1337, 1237, 4, 2,
		[ 
			["diamondc",1],
			["iron_r",1],
			["copper_r",1],
			["cement",1],
			["wheat",1],
			["sunflower",1],
			["corn",1],
			["bean",1],
			["cotton",1],
			["oilp",1],
			["pumpkin",1],
			["salt_r",1]
		] 
	],
	
	["iron_r", 2513, 2313, 2113, 4, 2,
		[ 
			["diamondc",1],
			["copper_r",1],
			["cement",1],
			["glass",1],
			["wheat",1],
			["sunflower",1],
			["corn",1],
			["bean",1],
			["cotton",1],
			["oilp",1],
			["pumpkin",1],
			["salt_r",1]
		] 
	],
	
	["copper_r", 1882, 1782, 1682, 4, 2,
		[ 
			["diamondc",1],
			["iron_r",1],
			["cement",1],
			["glass",1],
			["wheat",1],
			["sunflower",1],
			["corn",1],
			["bean",1],
			["cotton",1],
			["oilp",1],
			["pumpkin",1],
			["salt_r",1]
		] 
	],
	
	["sunflower", 299, 274, 249, 2, 1,
		[
			["diamondc",1],
			["iron_r",1],
			["copper_r",1],
			["cement",1],
			["glass",1],
			["wheat",1],
			["corn",1],
			["bean",1],
			["cotton",1],
			["oilp",1],
			["pumpkin",1],
			["salt_r",1]
		]
	],
	
	["corn", 970, 920, 870, 2, 1,
		[
			["diamondc",1],
			["iron_r",1],
			["copper_r",1],
			["cement",1],
			["glass",1],
			["wheat",1],
			["sunflower",1],
			["bean",1],
			["cotton",1],
			["oilp",1],
			["pumpkin",1],
			["salt_r",1]
		]
	],
	
	["pumpkin", 797, 747, 647, 2, 1,
		[
			["diamondc",1],
			["iron_r",1],
			["copper_r",1],
			["cement",1],
			["glass",1],
			["wheat",1],
			["sunflower",1],
			["corn",1],
			["bean",1],
			["cotton",1],
			["olive",1],
			["oilp",1],
			["salt_r",1]
		]
	],
	
	["wheat", 285, 260, 245, 2, 1,
		[
			["diamondc",1],
			["iron_r",1],
			["copper_r",1],
			["cement",1],
			["glass",1],
			["sunflower",1],
			["corn",1],
			["bean",1],
			["cotton",1],
			["oilp",1],
			["pumpkin",1],
			["salt_r",1]
		]
	],
	
	["cotton", 285, 260, 245, 2, 1,
		[
			["diamondc",1],
			["iron_r",1],
			["copper_r",1],
			["cement",1],
			["glass",1],
			["wheat",1],
			["sunflower",1],
			["corn",1],
			["bean",1],
			["oilp",1],
			["pumpkin",1],
			["salt_r",1]
		]
	],

/////////////////////////

	["turtle", 9575, 9375, 9175, 8, 4,
		[
			["marijuana",1],
			["cocainep",1],
			["heroinp",1]
		]
	],

	["cocainep", 6763, 6563, 6363, 8, 4,
		[
			["marijuana",1],
			["turtle",1],
			["heroinp",1]
		]
	],
	
	["marijuana", 4163, 4063, 3963, 6, 3,
		[
			["turtle",1],
			["cocainep",1],
			["heroinp",1]
		] 
	],
	
	["heroinp", 4726, 4526, 4326, 8, 4, 
		[
			["marijuana",1],
			["turtle",1],
			["cocainep",1]
		]
	]
];
publicVariable "life_market_resources";

////////////GENERATED CONFIG
//life_market_changes = []; //[SHORTNAME,SELL,BUY]
life_market_shortnames = []; //shortnames if in market
//life_market_clampprices = []; //[SHORTNAME,MIN,MAX]

{
	life_market_shortnames set [count life_market_shortnames, _x select 0];
	//life_market_clampprices set [count life_market_clampprices, [_x select 0, _x select 2, _x select 3] ];
	//life_market_changes set [count life_market_changes, [_x select 0, _x select 4, _x select 5] ];
}
foreach life_market_resources;

publicVariable "life_market_shortnames";
//publicVariable "life_market_clampprices";

//SYNC PRICES WITH SERVER IF EMPTY
if(isNil("life_market_prices")) then
{
	life_market_prices = []; //[SHORTNAME,CURRENTPRICE,DIRECTIONGLOBAL,DIRECTIONLOCAL]
	{
	
		life_market_prices set [count life_market_prices, [_x select 0, _x select 1, 0, 0] ];
	}
	foreach life_market_resources;
	
	publicVariable "life_market_prices";
	
	systemChat "Market Prices Generated!";
};