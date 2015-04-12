if ((player distance bank) < 10) then {
	private ["_copamount"];
	if ((side player) == west) exitwith {bank animate ["vault_door", 0]; bank animate ["vault_turn", 0]; ["Tresor geschlossen.",30,"red"] call A3L_Fnc_Msg; };
	_copamount = 0; 
	{if (side _x == west) then {_copamount = _copamount + 1};} foreach playableUnits;
	if (_copamount < 5) exitwith {["Es müssen mindestens 5 Cops im Dienst sein!",30,"red"] call A3L_Fnc_Msg;};

	if (bank getVariable "robbed") exitwith {["Die Bank wurde erst ausgeraubt.",30,"red"] call A3L_Fnc_Msg;};
	if (!([false,"blastingcharge",1] call life_fnc_handleInv)) exitWith {["Du hast keine Sprengladung.",30,"red"] call A3L_Fnc_Msg;};

	[] call fnc_placec4;
};

if ((player distance prisondoor) < 10) then {
	private ["_copamount"];
	if ((side player) == west) exitwith {prisondoor animate ['maindoor1', 0]; prisondoor animate ['maindoor2', 0]; ["Gefängnistor geschlossen.",30,"red"] call A3L_Fnc_Msg; };
	_copamount = 0; 
	{if (side _x == west) then {_copamount = _copamount + 1};} foreach playableUnits;
	if (_copamount < 5) exitwith {["Es müssen mindestens 5 Cops im Dienst sein!",30,"red"] call A3L_Fnc_Msg;};

	if (prisondoor getVariable "robbed") exitwith {["Zwischen Ausbrüchen müssen mindestens 30 Minuten liegen.",30,"red"] call A3L_Fnc_Msg;};
	if (!([false,"blastingcharge",1] call life_fnc_handleInv)) exitWith {["Du hast keine Sprengladung.",30,"red"] call A3L_Fnc_Msg;};

	[] call fnc_placec4;
};