/*

	Show cop license to target player

*/

private["_target", "_message","_rank","_coplevel","_mediclevel","_adaclevel"];

_target = cursorTarget;

if( isNull _target) then {_target = player;};

if( !(_target isKindOf "Man") ) then {_target = player;};

if( !(alive _target) ) then {_target = player;};

if(playerSide == west) then
{
	_coplevel = call life_coplevel;
	
	switch ( _coplevel ) do
	{
		case 1: { _rank = "Recruit"; };
		case 2: { _rank = "Officer"; };	
		case 3: { _rank = "Detective"; };	
		case 4: { _rank = "Lieutenant"; };
		case 5: { _rank = "Captain"; };
		case 6: { _rank = "Assistant Chief"; };
		case 7: { _rank = "Chief of Department"; };
	};
	
	_message = format["<color='#FFFFFF'/><t size='2'>%1</t><br/><t size='1.5'>%2</t><br/><t size='2.5'>Polizei</t>", name player, _rank];
	
	[[player, _message],"life_fnc_copLicenseShown",_target,false] spawn life_fnc_MP;
};

if(playerSide == independent) then
{
	_mediclevel = call life_mediclevel;
	
	switch ( _mediclevel ) do
	{
		case 1: { _rank = "Praktikant"; };
		case 2: { _rank = "Sanitäter"; };	
		case 3: { _rank = "Rettungsassistent"; };	
		case 4: { _rank = "Arzt"; };
		case 5: { _rank = "Oberarzt"; };
		case 6: { _rank = "Chefarzt"; };
	};

	_message = format["<color='#FFFFFF'/><t size='2'>%1</t><br/><t size='1.5'>%2</t><br/><t size='2.5'>Sanitaeter</t>", name player, _rank];
	
	[[player, _message],"life_fnc_copLicenseShown",_target,false] spawn life_fnc_MP;
};

if(playerSide == east) then
{
	_mediclevel = call life_adaclevel;
	
	switch ( _mediclevel ) do
	{
		case 1: { _rank = "Schrauber"; };
		case 2: { _rank = "Schweißer"; };
		case 3: { _rank = "Wagenheber"; };	
		case 4: { _rank = "KfZ-Meister"; };
		case 5: { _rank = "ADAC-Leiter"; };
	};

	_message = format["<color='#FFFFFF'/><t size='2'>%1</t><br/><t size='1.5'>%2</t><br/><t size='2.5'>ADAC</t>", name player, _rank];
	
	[[player, _message],"life_fnc_copLicenseShown",_target,false] spawn life_fnc_MP;
};

if(playerSide == civilian) then
{
	_message = format["<color='#FFFFFF'/><t size='2'>%1</t>", name player];
	
	[[player, _message],"life_fnc_copLicenseShown",_target,false] spawn life_fnc_MP;
};

