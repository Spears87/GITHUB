#include <macro.h>
/*
	File: fn_wantedMenu.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Opens the Wanted menu and connects to the APD.
*/
private["_display","_list","_name","_crimes","_bounty","_units"];
disableSerialization;

createDialog "life_wanted_menu";

_display = findDisplay 2400;
_list = _display displayCtrl 2401;
_players = _display displayCtrl 2406;
lbClear _list;
_units = [];

lbClear _players;

{
    _side = switch(side _x) do {case west: {"Cop"}; case civilian : {"Civ"}; case independent : {"Sani"}; default {"Unknown"};};
    _players lbAdd format["%1 - %2", name _x,_side];
    _players lbSetdata [(lbSize _players)-1,str(_x)];
} foreach playableUnits;

_list2 = getControl(2400,2407);
lbClear _list2; //Purge the list

_crimes = 
[
	["Fahren ohne PKW-Schein","3","1"],
	["Fahren ohne LKW-Schein","5","2"],
	["Fahren ohne Boot-Schein","5","3"],
	["Trolling im Straßenverkehr","10","4"],
	["Behindern des Verkehrs (Land)","3","5"],
	["Falschparken","6","6"],
	["Behindern eines Fahrzeugspawns","5","7"],
	["Fahren ohne Beleuchtung (Nachts)","2","8"],
	["Rücksichtsloses Fahren","0","9"],
	["Lärmbelästigung","3","10"],
	["Wenden auf Öffentlichen Straßen","2","11"],
	["Permanentes Rückwärtsfahren","3","12"],
	["Fahren in eine Einbahnstraße","3","13"],
	["Fahren unter Alkoholeinfluss 0.1-0.2","0","14"],
	["Ampelsignal ignorieren","3","15"],
	["Fliegen ohne Flugschein","10","16"],
	["Landen in einem HQ","10","17"],
	["Fliegen über einer Stadt / Hovern","10","18"],
	["Fallschirmspringen über einer Stadt","5","19"],
	["5 - 15 Km/h Geschwindigkeitsüberschreitung","2","20"],
	["15 - 25 Km/h Geschwindigkeitsüberschreitung","3","21"],
	["25+ Km/h Geschwindigkeitsüberschreitung","5","22"],
	["50+ Km/h Geschwindigkeitsüberschreitung","10","23"],
	["Führen eines Karts außerhalb der Rennstrecke","0","24"],
	["Führen eines Karts in der Nacht","0","25"],
	["Führen eines Rennwagens außerhalb der Rennstrecke","0","26"],
	["Drogenbesitz LKW / Helikopter","0","27"],
	["Drogenbesitz PKWs + Quadbikes","0","28"],
	["Drogenbesitz Boot/ Wasserfahrzeugen","0","29"],
	["Drogenbesitz im Rucksack","0","30"],
	["Drogenhandel Verkauf","15","31"],
	["Drogenhandel Ankauf","15","32"],
	["Anbau von Drogen","30","33"],
	["Versuchter Diebstahl","0","34"],
	["Diebstahl","0","35"],
	["Versuchter Diebstahl eines KfZ","0","36"],
	["Diebstahl eines KfZ","15","37"],
	["Hehlerei","10","38"],
	["Raub","15","39"],
	["Schwerer Raub","25","40"],
	["Bestechung","30","41"],
	["Räuberische Erpressung","25","42"],
	["Bankraub","40","43"],
	["Erpressung","0","44"],
	["Menschenhandel","75","45"],
	["Tankstellenraub","10","46"],
	["Führen einer Waffe ohne Lizenz","0","47"],
	["Mit gezogener Waffe in der Stadt","0","48"],
	["Besitz einer illegalen Waffe","15","49"],
	["Schusswaffengebrauch innerorts","15","50"],
	["Waffenhandel (Verkauf)","30","51"],
	["Waffenhandel (Kaufen)","15","52"],
	["Versuchte Körperverletzung","5","53"],
	["Körperverletzung","10","54"],
	["Gefährliche Körperverletzung","25","55"],
	["Freiheitsberaubung","15","56"],
	["Belästigung","5","57"],
	["Geiselnahme","40","58"],
	["Psychologische Verletzung","15","59"],
	["Beleidigung","5","60"],
	["Drohung","15","61"],
	["Versuchter Mord","30","62"],
	["Mord","40","63"],
	["Prostitution","20","64"],
	["Annahme von Prostitution","12","65"],
	["Entziehung pol. Massnahmen","0","66"],
	["Widerstand gegen Vollstreckungsbeamte","0","67"],
	["Behinderung von Beamten bei Ausführung d. Arbeit","0","68"],
	["Belästigung/Beleidigung eines Beamten","0","69"],
	["Betreten von Sperrzonen","15","70"],
	["Durchbrechen von Absperrungen","10","71"],
	["Vermummungsverbot","0","72"],
	["Unangemeldete Demonstration","0","73"],
	["Amtsanmassung","15","74"],
	["Gefängnisausbruch (Flüchtiger)","35","75"],
	["Gefängnisausbruch (Beihilfe)","20","76"],
	["Allg. Beihilfe bei Straftaten","20","77"]
];	

{
	_list2 lbAdd format["%1 - %2 Min (%3)",(_x select 0),(_x select 1),(_x select 2)];
	_list2 lbSetData [(lbSize _list2)-1,(_x select 2)];
} foreach _crimes;

ctrlSetText[2404,"Verbinde mit LPD..."];

/*if(__GETC__(life_coplevel) < 3 && __GETC__(life_adminlevel) == 0) then
{
	ctrlShow[2405,false];
	ctrlShow[9800,false];
};*/

[[player],"life_fnc_wantedFetch",false,false] spawn life_fnc_MP;