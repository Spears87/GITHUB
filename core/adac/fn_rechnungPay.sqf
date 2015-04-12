/*
	File: fn_ticketPay.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Pays the ticket.
*/
if(isnil {life_ticket_val} OR isNil {life_ticket_cop}) exitWith {};
if(ja_dzep < life_ticket_val) exitWith
{
	if(ja_pare < life_ticket_val) exitWith 
	{
		hint "Du hast nicht genug Geld auf deinem Konto, um die Rechnung zu bezahlen.";
		[[1,format["%1 hat nicht genug Geld.",profileName]],"life_fnc_broadcast",life_ticket_cop,false] spawn life_fnc_MP;
		closeDialog 0;
	};
	hint format["Du hast $%1 bezahlt",[life_ticket_val] call life_fnc_numberText];
	ja_pare = ja_pare - life_ticket_val;
	life_ticket_paid = true;
	[[1,format[localize "STR_Cop_Ticket_PaidNOTF_3",profileName]],"life_fnc_broadcast",life_ticket_cop,false] spawn life_fnc_MP;
	[[life_ticket_val,player,life_ticket_cop],"life_fnc_rechnungPaid",life_ticket_cop,false] spawn life_fnc_MP;
	closeDialog 0;
};

ja_dzep = ja_dzep - life_ticket_val;
life_ticket_paid = true;

closeDialog 0;
[[1,format[localize "STR_Cop_Ticket_PaidNOTF_3",profileName]],"life_fnc_broadcast",life_ticket_cop,false] spawn life_fnc_MP;
[[life_ticket_val,player,life_ticket_cop],"life_fnc_rechnungPaid",life_ticket_cop,false] spawn life_fnc_MP;