/*
	File: welcome.sqf
	Author: ZedBuster
        Link: opendayz.net/threads/dayz-welcome-message-credits-style.13071/
	Description:
	Creates an intro on the bottom-right hand corner of the screen.
*/


_imag  = "<img image='textures\a3l.jpg' size='10' align='center'/>"; _text = format["<br/><t color='#C5B6B5' size='1.8' align='center'>Wilkommen %1 auf Lakeside Valley!</t><br/><br/>",ProfileName];
hint parseText (_imag + _text);

_onScreenTime = 3;

//if(life_firstSpawn) then {

//playsound "medicalintro";
//}; 
sleep 2; //Wait in seconds before the credits start after player is in-game

_role1 = "Willkommen auf den Reallife Life Server:";
_role1names = ["A3L"];
_role2 = "Server Admins!";
_role2names = ["Jack Daniels","Amandeo","DiNozzo","Niggl","Oesi94"];
_role3 = "Webseite:";
_role3names = ["http://arma-3-life.de"];
_role4 = "Teamspeak:";
_role4names = ["62.104.20.111:10149"];
_role5 = "Besonderen dank";
_role5names = ["an Tonic","und alle die an der Mod gearbeitet haben"];
 
{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.60' color='#f2cb0b' align='right'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.70' color='#FFFFFF' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.5);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [

//The list below should have exactly the same amount of roles as the list above

[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role5, _role5names]
];
