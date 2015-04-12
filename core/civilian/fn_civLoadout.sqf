/*
	File: fn_civLoadout.sqf
	Author: Bryan "Tonic" Boardwine
	Edited: Itsyuka
	
	Description:
	Loads the civs out with the default gear.
*/
private["_handle","_clothings"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

_clothings = ["A3L_Poop2day","A3L_A3LogoPants","pervt_uni","BluePlaid_uni","OrangePlaid_uni","PinkPlaid_uni","RedPlaid_uni","YellowPlaid_uni","checkered_uni","GbGyBr_uni","GnBlBr_uni","GyBlBr_uni","GnGyBr_uni","kingfish_uni","mothertrucker_uni","OrBlBr_uni","OrGnGy_uni","OrGyBr_uni","PkGnGy_uni","PkGyBr_uni","RdBlBr_uni","RdGnGy_uni","RdGyBr_uni","sohoku_uni","WhBlBr_uni","WhGyBr_uni","PkGyBr_uni","YlBlBr_uni","YlGnGy_unI","YlGyBr_uni","racer_uni","YlBlBr_uni","arma3","arma3black","ATI","tacobell","dutch","hanacd","nvidia","SFG","walkingdead","BreakingBad","pervt_uni","HI1","U_C_Journalist","PH","RastaCiv","skullshirt_uni","TMBass_uni","vacationshirt_uni"];
player addUniform (_clothings select (floor(random (count _clothings))));


/* ITEMS */
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";

[] call life_fnc_saveGear;