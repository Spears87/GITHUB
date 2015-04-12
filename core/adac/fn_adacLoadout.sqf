/*
	File: fn_adacloadGear.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Loads the adac out with the default gear.
*/
private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

player forceAddUniform "A3L_Worker_Outfit";
player addBackpack "tf_mr3000";

player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";

player addItem "tf_fadak";
player assignItem "tf_fadak";

[] call life_fnc_saveGear;