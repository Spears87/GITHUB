private["_unit","_damage","_source","_projectile"];
_unit = _this select 0;
_damage = _this select 2;
_source = _this select 3;
_projectile = _this select 4;

//Handle the tazer first (Top-Priority).
if(!isNull _source) then {
	if(_source != _unit) then {
		if(_projectile == "26_taser") then {
			_damage = 0;
			if(!life_istazed) then {
				[_unit,_source] spawn life_fnc_tazed;
				_damage = 0;
			};
		};
	};
};

//[] call life_fnc_hudUpdate;
_damage;