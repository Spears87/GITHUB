waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["oesiistschuld1","*******************"];
player createDiarySubject ["werbung1","Homepage"];
player createDiarySubject ["werbung2","Teamspeak"];
player createDiarySubject ["spacer3","==================="];
player createDiarySubject ["rules","Grundgesetz"];
player createDiarySubject ["stvo","StVO u. LuftVO"];
player createDiarySubject ["spacer2","==================="];
player createDiarySubject ["copr","Polizeiregeln"];
player createDiarySubject ["emsr","EMS Vorschriften"];
player createDiarySubject ["spacer1","==================="];
player createDiarySubject ["strafen","Bußgeldkatalog"];
player createDiarySubject ["spacer4","==================="];
player createDiarySubject ["updates","ChangeLog"];
player createDiarySubject ["controls","Steuerung"];
player createDiarySubject ["oesiistschuld2","*******************"];


													// Werbung - Serverinfos
	player createDiaryRecord["werbung2",
		[
			" ",
				"
<font size='25'>144.76.105.204</font>
				"
		]
	];

	player createDiaryRecord["werbung1",
		[
			" ",
				"
<font size='25'>arma-3-life.de</font>
				"
		]
	];

	

													// Bussgeldkatalog
	player createDiaryRecord["strafen",
		[
			" ",
				"
<font size='25' color='#FF0000'>! Coming Soon !</font>
<br/><br/><br/>Momentaner Bußgeldkatalog: www.bit.ly/A3L_Bußgeld<br/>    Oder im Forum schauen: arma-3-life.de<br/>
				"
		]
	];

	
													// EMS Regeln
	player createDiaryRecord["emsr",
		[
			" ",
				"
<font size='25' color='#FF0000'>Dienstregeln für die EMS</font><br/><font color='#639C18'>Diese Dienstregeln zählen für jeden Rettungssanitäter. Eine Zuwiderhandlung wird bestraft. Die EMS (Emergency Medical Service) umfasst alle staatlich ausgebildeten, registrierten und erfassten Sanitäter/ Rettungsdienstmitarbeiter.</font><br/><br/>
<font size='19' color='#FF9473'>1. Dienstvorschriften</font><br/><br/>
1.1 Sanitäter sind neutral und verhalten sich so und ergreifen sie keine Partei!<br/>
1.2 Innerhalb eines Schusswechsels darf niemand behandelt werden - warten Sie ab bis dieses beendet ist.<br/>
1.3 Fahren Sie vorausschauend - auch auf dem Weg zu einem Einsatz.<br/>
1.4 Sollten Sie sich im Urlaub befinden so hat ihr Name nicht auf Zivilisten Seite bei kriminellen Aktivitäten aufzutauchen (Namechange)<br/>
1.5 Funkdisziplin einhalten.<br/>
1.6 Um einen Helikopter fliegen zu dürfen, schließen sie vorher die benötige Ausbildung ab!<br/>
1.7 Versuchen Sie jedem bestmöglichst zu helfen, es könnten schließlich Sie sein, der hilflos am Boden liegt!<br/>
				"
		]
	];

	
													//Cop Regeln
	player createDiaryRecord["copr",
		[
			"Checkpoints",
				"
<font size='19' color='#3152A5'>7. Lufteinheiten</font><br/><br/>
7.1 Polizisten ist es gestattet auf Straßen Checkpoints zu errichten. Diese dienen dazu um Drogen, Waffen oder andere illegalen Gegenstände zu finden und zu beschlagnahmen. Jeder angehaltene Verkehrsteilnehmer muss der Grund der Kontrolle mitgeteilt werden. Anschließend sind diese dazu verpflichtet der Kontrolle statt zu geben. Ein Checkpoint muss aus mindesten zwei Fahrzeugen sowie drei Beamten bestehen!<br/>
7.2 Das Umfahren eines Checkpoints ist ein Straftatbestand.<br/>
				"
		]
	];

	player createDiaryRecord["copr",
		[
			"Lufteinheiten",
				"
<font size='19' color='#3152A5'>6. Lufteinheiten</font><br/><br/>
6.1 Helikopter dürfen nur nach abgeschlossener Ausbildung geflogen werden!<br/>
6.2 Helikopter dürfen nicht auf einer ungesicherten Straße landen.<br/>
6.3 Sollte es sich um keinen Einsatzflug handeln, so ist auch hier die mindest Flughöhe von 200 Metern einzuhalten!<br/>
				"
		]
	];

	player createDiaryRecord["copr",
		[
			"Korruption",
				"
<font size='19' color='#3152A5'>5. Korruption</font><br/><br/>
5.1 Korruption wird mit einer sofortigen Suspendierung geahndet!<br/>
5.2 Sollte es einen Polizisten, welcher in der inneren Abteilung tätig ist geben, so ist dieser befugt Ermittlungen diesbezüglich durchzuführen.<br/>
				"
		]
	];

	player createDiaryRecord["copr",
		[
			"Interne Regeln",
				"
<font size='19' color='#3152A5'>4. Interne Regeln</font><br/><br/>
4.1 Officers müssen jeder Zeit eine nicht tödliche Waffe mit sich führen!<br/>
4.2 Sollte kein Einsatz vorliegen, so haben auch Polizisten sich an die StVO/ LuftVO zu halten!<br/>
4.3 Fahrzeuge welche verkehrswidrig abstellt wurden, werden per Halterabfrage überprüft - dieser wird informiert sollte er anschließend nicht reagieren, so wird das Fahrzeug beschlagnahmt.<br/>
4.4 Fahrzeuge welche in kriminellen Aktivitäten verstrickt sind, werden beschlagnahmt!<br/>
4.5 Zivilisten dürfen bis zu einer Stunde von der Polizei zwecks Beweissammlung festgehalten werden (Untersuchungshaft).<br/>
4.6 Sheriffs sollen außerhalb der Städte Patrouille fahren - nur im Notfall bzw. bei Personalmangel wird dieser Trupp innerhalb einer Stadt hinzugezogen.<br/>
4.7 Die Befehlskette ist zu wahren!<br/>
4.8 Jedem Verdächtigen sind seine Rechte vor einer Befragung zu verlesen.<br/>
4.9 Jeder Beschuldigte hat das Recht auf einem Anwalt.<br/>
				"
		]
	];

	player createDiaryRecord["copr",
		[
			"Durchsuchungen",
				"
<font size='19' color='#3152A5'>3. Durchsuchungen</font><br/><br/>
3.1 Während einer Kontrolle ist es der Polizei gestattet jeden Insassen eines Fahrzeuges zu identifizieren und bei Verdacht zu durchsuchen!<br/>
3.2 Besteht kein Verdacht, so darf die Polizei keine Durchsuchung ohne Einverständnis des Zivilisten durchführen!<br/>
3.3 Bei einem Verkehrsunfall darf jeder Polizist jeden beteiligten Zivilisten zur Eigensicherung vorläufig festnehmen, durchsuchen und seine Identität feststellen!<br/>
				"
		]
	];

	player createDiaryRecord["copr",
		[
			"Polizeigewalt",
				"
<font size='19' color='#3152A5'>2. Polizeigewalt</font><br/><br/>
2.1 Den Polizisten ist unter folgenden Voraussetzungen das Anwenden von Gewalt gestattet:<br/>
2.1.1 Sollte das Leben einer Person in direkte Gefahr sein.<br/>
2.1.2 Sollten sich Flugobjekte in nicht genehmigten Zonen fliegen (Erst Warnschuss - Anschließend gezielter Schuss)<br/>
				"
		]
	];

	player createDiaryRecord["copr",
		[
			"Allgemein",
				"
<font size='25' color='#FF0000'>♦ Polizeiregeln ♦</font><br/><font color='#639C18'>Diese Polizeiregeln umfassen zusätzliche Regelungen für Zivilisten. Des Weiteren beinhalten die Regeln Vorschriften die für alle Polizeibeamten auf Lakeside gelten.</font><br/><br/>
<font size='19' color='#3152A5'>1. Allgemein</font><br/><br/>
1.1 Zivilisten haben sich nicht in unbefugten Bereichen aufzuhalten.<br/>
1.1.2 Als unbefugte Bereiche zählen wir: Polizei HQs, Unfallstellen, die bereits abgesperrt wurden, Absturzstellen von Luftfahrzeugen.<br/>
1.2 Stehlen eines Polizeifahrzeuges innerhalb eines HQs ist verboten und führt zu einer Sperre.<br/>
1.3 Das Tragen von Masken, um unerkannt zu bleiben, ist Grund genug um eine Durchsuchung durchzuführen.<br/>
1.4 Das Tragen von Rebellenkleidung ist ebenfalls ein Grund für eine Durchsuchung!<br/>
				"
		]
	];

	
																		// Strassenverkerhsordnung und Luftverkehrsordnung ---------------------------

	player createDiaryRecord["stvo",
		[
			" ",
				"
<font size='19' color='#D66321'>• StVO u. LuftVO •</font><br/><font color='#639C18'>Die Straßenverkehrsordnung, sowie die LuftVerkehrsordnung ist bindend für alle Personen auf Lakeside. Zuwiderhandlungen gegen die genannten Regeln werden mit Führerscheinentzug, Geldstrafen und in schlimmen Fällen sogar mit Haftstrafen geahndet.</font><br/><br/>
1. Es gelten folgende Geschwindigkeitsbegrenzungen (KFZ, LKW):<br/>
1.1 Innerorts: 50 km/h<br/>
1.2 Außerorts: 100 km/h<br/>
2. Es herrscht Rechtsfahrgebot!<br/>
3. Verkehrsschilder, Richtungspfeile auf der Straße sowie Ampelsignale gelten!<br/>
4. Parken auf Gehwegen ist untersagt!<br/>
5. Sollte sich ein Einsatzfahrzeug der Polizei oder der Sanitäter mit Code 2 (Blaulicht) oder Code 3 (Sirene/ Martinshorn) nähern, haben diese Fahrzeuge Vorrang im Straßenverkehr.<br/>
5.1 Du fährst rechts ran und haltest zur Sicherheit komplett an.<br/>
5.2 Wenn das Einsatzfahrzeug dir entgegenkommen sollte, verringerst du deine Geschwindigkeit.<br/>
6. Fahren ohne Licht bei Dunkelheit wird geahndet.<br/>
7. Das übermäßige Hupen gilt als Lärmbelästigung und wird via Bußgeldkatalog geahndet.<br/>
8. Halten Sie den Sicherheitsabstand ein (5 Meter innerorts - 25 Meter Außerorts)!<br/>
9. Straßenrennen sind illegal!<br/>
10. Fahren unter Drogen- und/oder Alkoholeinfluss ist untersagt!<br/>
11. Den Weißungen der Polizei ist immer Folge zu leisten!<br/>
11.1 Zuwiderhandlungen werden bestraft.<br/>
12. Das Überfliegen der Städte ist nur gestattet, wenn man sich mindestens 250 Meter über NN befindet.<br/>
12.1 Das Schweben (sogenanntes Auto-Hovern) über Städte/ Ortschaften ist komplett verboten.<br/>
13. Das Landen in Städten/ Ortschaften oder auf Straßen, ohne die ausdrückliche Genehmigung eines Polizeibeamten, ist verboten.<br/>
14. Wer gegen die Regeln StVO und LuftVO Absatz 12. - 13. verstößt, muss damit rechnen, unter Beschuss genommen zu werden.<br/>
				"
		]
	];
																	// InGame Regelungen ---------------------------
																	
	player createDiaryRecord["rules",
		[
			"Schusswaffen",
				"
<font size='19' color='#089494'>§9 Schusswaffen</font><br/><br/>
9.1 Das Mitführen von Waffen über 9mm ist verboten, selbst mit einem Waffenschein!<br/>
9.2 Waffen sind innerhalb der Stadt gesichert in der Tasche zu tragen!<br/>
9.3 Man darf Waffen nur besitzen, wenn man einen gültigen Waffenschein besitzt.<br/>
9.4 Verkaufen von Waffen an Zivilisten welche keine Lizenz für diese besitzen ist illegal!<br/>
9.5 Sollten sie eine Tatwaffe bei sich tragen, so wird diese von der Polizei beschlagnahmt!<br/>
9.6 Waffen welche einen Burstmode (3-Schussmodus) bzw. vollautomatisch sind - sind ebenfalls verboten!<br/>
				"
		]
	];
	
	player createDiaryRecord["rules",
		[
			"Fahrzeuge",
				"
<font size='19' color='#089494'>§8 Fahrzeuge, Luftfahrzeuge, Boote</font><br/><br/>
8.1 Das absichtliche Zerstören von Fahrzeugen (Land, Luft und zur See) ist verboten.<br/>
8.2 Luftfahrzeuge und Boote sind keine Rammobjekte.<br/>
8.2.1 Diese dürfen ebenfalls nicht als Kamikaze fungieren!<br/>
8.3 Das Hineinfahren in Häuser mit Fahrzeugen fällt unter Trolling und führt zu einer Sperre.<br/>
				"
		]
	];
	
	
	player createDiaryRecord["rules",
		[
			"EMS Regelung",
				"
<font size='19' color='#089494'>§7 EMS Regelung</font><br/><br/>
7.1 Sanitäter dürfen unter keinen Umständen überfallen, getötet oder in der Ausübung in ihrer Tätigkeit behindert werden.<br/>
7.2 Das Klauen von Fahrzeugen die den Sanitätern gehören, ist verboten.<br/>
7.3 Sanitäter dürfen während eines Schussgefechtes niemanden wiederbeleben.<br/>
7.4 Sanitäter sind stets neutral.<br/>
7.5 Sollte man die Regelung §7 missachten, muss man mit einer permanenten/ temporären Sperre rechnen - in leichtwidrigen Fällen kann ein Eintrag auf die Medic-Interne BlackList erfolgen.<br/>
				"
		]
	];
	
	
	player createDiaryRecord["rules",
		[
			"Überfälle",
				"
<font size='19' color='#089494'>§6 Überfälle, Schusswaffengebrauch</font><br/><br/>
6.1 Bei einem Überfall ist stets Kontakt zu der Person die angegriffen wird (Opfer) zu halten.<br/>
6.2 Der Gebrauch von Schusswaffen muss immer angekündigt werden (sei es per Handy-Nachricht, Notruf an die Cops, oder lautem Schreien).<br/>
6.3 Das Opfer muss, sofern ein Überfall gemacht wird, Zeit zum reagieren haben.<br/>
6.3.1 So ist z. B. das Ankündigen eines Überfalls per Halt stehen bleiben! Überfall - oder wir schießen und eine Sekunde später wird das Opfer erschossen RDM und führt zum Bann.<br/>
6.4 Wenn du einen Überfall machst, hat das Opfer die Berechtigung dich bei gegebenem Anlass zu überfahren oder zu erschießen - dies ist Notwehr und kein VRDM/VDM.<br/>
6.5 Unbewaffnete Personen dürfen nicht erschossen werden.<br/>
6.5.1 Außnahmeregelung wäre das nicht Befolgen einer Anweisung, Geiselnahme oder Ähnlichem.<br/>
6.6 Banküberfälle und Geiselnahmen sind nur gestattet, wenn sich mindestens 4 Polizeibeamten im Dienst befinden.<br/>
				"
		]
	];
	
	
	player createDiaryRecord["rules",
		[
			"NewLife",
				"
<font size='19' color='#089494'>§5 NewLife</font><br/><br/>
5.1 Tot ist tot! Es gibt keinerlei Außnahmen, selbst wenn du durch einen Bug gestorben bist.<br/>
5.2 Wenn du gestorben bist, darfst du nicht mehr in vorherige Roleplay-Handlungen eingreifen.<br/>
5.3 Du darfst dich dem Punkt deines Todes für 30 Minuten nicht nähern. Näheres regelt §5, 5.4.<br/>
5.3.1 Sollte an dem Punkt deines Todes noch eine Roleplay-Handlung laufen, darfst du dich dem Punkt deines Todes solange nicht nähern, bis die Roleplay-Handlung beendet wurde.<br/>
5.3.2 Außerhalb von Städten 1000 Metern.<br/>
5.3.3 Innerhalb von Städtem 500 Metern.<br/>
5.4 Bei folgenden Roleplay-Situationen darf man permanent nicht mehr eingreifen: Bankraub, Geiselnahme.<br/>
				"
		]
	];
	
	
	player createDiaryRecord["rules",
		[
			"Kommunikation",
				"
<font size='19' color='#089494'>§4 Kommunikation</font><br/><br/>
4.1 Gesprochen wird über TeamSpeak3 mit dem Addon Task Force Radio.<br/>
4.2 Task Force Radio bildet somit die Grundlage der Kommunikation auf unserem Server.<br/>
4.3 Das Stören von Roleplaysituationen durch Hineinrufen, Trollen, etc. ist verboten.<br/>
4.4 Störgeräusche sind zu unterlassen.<br/>
4.5 Das Abspielen von Musik, Tönen oder Ähnlichem ist auf dem gesamten Server (InGame, TeamSpeak3) zu unterlassen.<br/>
4.6 Der SideChat (Seitenkanal) darf nur für Fragen oder Werbung (Roleplaytech.) verwendet werden!<br/>
4.6.1 Die Frage sollte immer im Roleplay-Sinn gestellt sein, z. B. Google Suche: Wie gehe ich auf Toilette?.<br/>
4.6.2 Der SideChat darf nicht für das Roleplay verwendet werden, z. B. Ankündigungen, Kann-Mich-Jemand-Aus-Dem-Knast-Holen Nachrichten.<br/>
4.7 Das Schreiben im GlobalenKanal ist verboten. Wer dagegen verstößt wird mit einer Sperre zu rechnen haben!<br/>
				"
		]
	];
	
	player createDiaryRecord["rules",
		[
			"Safezone",
				"
<font size='19' color='#089494'>§3 Safezones</font><br/><br/>
3.1 Als Safezone zählen folgende Orte in einem Umkreis von 50 Metern: Geldautomaten (sog. ATM), Spawn von Fahrzeugen (Fahrzeughändler, Garage, Truckshop, Civ-Spawns).<br/>
3.2 Waffenhändler und Rebellen-Außenposten zählen ebenfalls zur Safezone dazu.<br/>
3.2.1 Polizisten haben die Erlaubnis Rebellen-Außenposten zu stürmen. Sollte dies passieren, dürfen die Polizisten beschossen werden.<br/>
3.3 Hauptquartiere sind ebenfalls Safezone.<br/>
3.3.1 Die Befreiung von Gefangenen ist rein-theoretisch möglich, jedoch muss, bevor es zu einem Schusswechsel kommt, dies deutlich gemacht werden.<br/>
				"
		]
	];
	
	
																				
	player createDiaryRecord["rules",
		[
			"Hacking u. Bugs",
				"
<font size='19' color='#089494'>§2 Hacking, Exploit-Using, Bug-Using</font><br/><br/>
2.1 Cheaten, Hacken, Exploit-Using und Bug-Using ist strengstens untersagt, und wird mit einer permanenten Sperre bestraft.<br/>
2.1.1 Bugs sind im Forum zu melden; sollte es ein Bug sein, den jeder Spieler zu seinem Vorteil verwenden kann (wie z.B. Geld-Bugs, Duplication-Bugs) melde diese bitte direkt im TeamSpeak3.<br/>
2.2 Rassismus, Beleidigungen, RDM, VDM und VRDM hat nichts mit Roleplay zu tun. Dies ist zu unterlassen!<br/>
2.3 Solltet ihr einen Hacker, Cheater, Bug-User/ Exploit-User entdecken, seid ihr dazu verpflichtet dies umgehend einem Supporter bzw. Administrator mitzuteilen.<br/>
2.3.1 Meldet ihr dies nicht, werdet ihr automatisch zur Beihilfe verantwortlich gemacht und könnt dementsprechend auch gesperrt werden.<br/>
				"
		]
	];

	player createDiaryRecord["rules",
		[
			"Allgmeines",
				"
<font size='25' color='#FF0000'>♦ Grundgesetz ♦</font><br/><font color='#639C18'>Das Grundgesetz zählt für jeden Einwohner auf Lakeside.</font><br/><br/>
<font size='19' color='#089494'>§1 Allgemeines</font><br/><br/>
1.1 Die Worte eines Administrators sind Gesetz.<br/>
1.2 Auf dem Server hast du den gleichen Namen wie im Forum zu tragen.<br/>
1.3 Störgeräusche sind zu vermeiden.<br/>
1.4 Auf dem Server herrscht absolute Roleplay-Pflicht! Es gibt kein Out-Of-RP oder Out-Of-Character.<br/>
1.5 Trolling ist auf dem gesamten Server verboten.<br/>
1.6 Du bist Alleinverantwortlich für deinen Account (Forum, TeamSpeak3 und Arma3), so ist z. B. meine kleine Schwester war am Computer keine Entschuldigung und keinen Grund für eine Entsperrung.<br/>
1.7 Combat-Logging, also Ausloggen während einer Roleplay-Handlung/ Schussgefechtes, ist verboten und wird mit einer permanenten Sperre bestraft.<br/>
1.7.1 Solltest du die Verbindung verloren haben oder dein Arma3 ist abgestürzt, hast du dich unwiderruflich in die Roleplay-Handlung einzufinden.<br/>
1.7.2 Wenn der Ausfall deiner seits länger war, sodass die Roleplay-Handlung bereits vorbei ist, melde dich bitte bei den Beteiligten und entschuldige dich für deinen Ausfall.<br/>
1.7.3 Sollten diese Ausfälle vermehrt in Roleplay-Handlungen auftreffen, kannst du temporär vom Server gesperrt werden.<br/>
1.8 Stream-Snipen ist verboten. Wer erwischt wird, bekommt eine permanente Sperre!<br/>
				"
		]
	];


// Sonstiges ---------------------------------

	player createDiaryRecord["updates",
		[
			" ",
				"
<font size='25' color='#ff0000'>ChangeLog</font><br/><br/>
Unseren ChangeLog und weitere Informationen zu UpDates findest du in unserem Forum:<br/> <font color='#31ada5'>arma-3-life.de</font>
				"
		]
	];

	player createDiaryRecord ["controls",
		[
			" ",
				"
<font size='25' color='#ff0000'>• Steuerung •</font><br/><font color='#639C18'>Hier findest du die aktuelle Steuerung die auf unserem Arma3 Life Server gültig ist. Wir gehen von einer deutschsprachigen Tastatur aus. Um von Deutsch auf Englisch (und umgekehrt) zu wechseln, drücke</font><font color='#D66321'> ALT + SHIFT</font><br/><br/>
<font color='#D60000'>Z</font><br/>Spieler-Menü öffnen / Taplet aufrufen<br/><br/>
<font color='#D60000'>U</font><br/>Fahrzeuge auf- und zuschließen<br/><br/>
<font color='#D60000'>T</font><br/>Kofferraum öffnen (Z-Items / Virtuelle Items)<br/><br/>
<font color='#D60000'>SHIFT + R</font><br/>Person Fesseln (COP)<br/><br/>
<font color='#D60000'>SHIFT + G</font><br/>Person niederschlagen (MIT WAFFE)<br/><br/>
<font color='#D60000'>WINDOWSTASTE</font><br/>Interaktionsmenü aufrufen<br/>-- Sollte WINDOWSTASTE bei dir nicht funktionieren, öffne dein ESC-Menü > Konfigurieren > Steuerung > Indiv. Steuerung > Aktionstaste 10 anders belegen.<br/><br/>
<font color='#D60000'>WINDOWSTASTE + T</font><br/>Sammeln<br/><br/>
<font color='#D60000'>Q</font><br/>Abbauen (Spitzhacke)<br/><br/>
<font color='#D60000'>SHIFT + C</font><br/>Ergeben (Hände nach oben nehmen)<br/>
				"
		]
	];