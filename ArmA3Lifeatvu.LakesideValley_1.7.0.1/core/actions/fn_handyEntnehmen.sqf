private["_handys"];
_handys = ["tf_anprc148jem_13","tf_anprc155","tf_fadak","tf_mr3000"];

if(_handys in assignedItems cursorTarget) then {
	cursorTarget removeweapon _handys;
	//player addItemToBackpack "ItemRadio";
} else { 
	hint "Die Person hatte kein Funkgerät dabei!";
};