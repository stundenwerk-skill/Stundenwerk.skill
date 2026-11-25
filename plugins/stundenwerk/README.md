# Stundenwerk: KI-Kollegium für Lehrkräfte

Stundenwerk ist ein Plugin für Lehrerinnen und Lehrer in Deutschland. Es plant Unterrichtsstunden und Einheiten, erstellt Klassenarbeiten und Kurztests mit Erwartungshorizont, differenziert Material, analysiert Fehler, schreibt Elternbriefe und Protokolle und bereitet Vertretungsstunden vor. Für jedes der 16 Bundesländer gibt es ein Länderprofil mit Lehrplänen, Schularten, Abschlüssen und den Regeln für Leistungsnachweise. In Bayern heißt die Klassenarbeit zum Beispiel „Schulaufgabe“, und Stundenwerk verwendet dann auch diesen Begriff.

## Befehle (Auswahl)

| Befehl | Wofür |
|---|---|
| `/stundenwerk:stunde` | Unterrichtsstunde mit Verlaufsplan, Material und Tafelbild |
| `/stundenwerk:einheit` | Unterrichtseinheit über mehrere Stunden |
| `/stundenwerk:klassenarbeit` | Klassenarbeit (Gruppe A/B), Erwartungshorizont, Notenschlüssel |
| `/stundenwerk:kurztest` | Kurztest mit Lösung |
| `/stundenwerk:differenzieren` | Material auf drei Niveaus |
| `/stundenwerk:vertretung` | Vertretungsstunde, die ohne Vorwissen funktioniert |
| `/stundenwerk:elternbrief` | verständlicher, freundlicher Elternbrief |
| `/stundenwerk:neuigkeiten` | was in der installierten Version neu ist |

Insgesamt sind es 25 Befehle. Weitere gibt es unter anderem für Wochenplan, Exit-Ticket, Feedback, Lernlandkarte, Präsentationsleistung, Abschlussprüfung, Ausflug, Elterngespräch und Logbuch.

## Qualität

Alle Befehle folgen denselben Regeln. Stundenwerk erfindet keine Studien, Zahlen oder Lehrplan-Nummern und kennzeichnet, worauf eine Aussage beruht: Beleg, fachlich anerkannt, Vorschlag oder „[prüfen]“. Fehlen wichtige Angaben, fragt es zuerst nach. Am Ende längerer Ergebnisse listet es unter „Bitte prüfen:“ die Punkte auf, die du gegenlesen solltest. Pädagogische Begründungen stützen sich auf gut belegte Lernforschung und nennen die Quelle.

## Was das Plugin tut und was nicht

- Es besteht nur aus Anleitungen (Skills) in Textform. Es enthält keine Programme, keine Hooks und keine MCP-Server.
- Es sendet keine Daten an Dienste außerhalb von Claude und lädt nichts aus dem Internet.
- Es liest und schreibt nur Dateien in dem Ordner, in dem die Lehrkraft arbeitet, etwa Stoffverteilungspläne, Logbuch und Klassenarbeiten.
- `/stundenwerk:sichern` legt auf Wunsch eine ZIP-Sicherungskopie des eigenen Schulordners an.
- Personenbezogene Daten von Schülerinnen und Schülern gehören nicht hinein. Die Befehle arbeiten mit Kürzeln oder anonymisierten Angaben und weisen darauf hin.

## Einrichtung

Die ausführliche Anleitung und die Ordnervorlage für den Schulordner stehen im Repository: https://github.com/stundenwerk-skill/Stundenwerk.skill

## Lizenz

Die Inhalte stehen unter CC BY-NC-SA 4.0 und sind für Lehrkräfte kostenlos. Kommerzielle Nutzung ist nur mit Lizenz erlaubt; Kontakt: stundenwerk.skill@gmail.com. Der Name „Stundenwerk“ und das Logo gehören nicht zur freien Lizenz. © 2026 Nedim Boztepe.
