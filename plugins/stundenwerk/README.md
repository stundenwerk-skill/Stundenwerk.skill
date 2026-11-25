# Stundenwerk – KI-Kollegium für Lehrkräfte

Stundenwerk ist ein Plugin für Lehrerinnen und Lehrer in Deutschland. Es hilft bei der täglichen Arbeit: Unterrichtsstunden und Einheiten planen, Klassenarbeiten und Kurztests mit Erwartungshorizont erstellen, Material differenzieren, Fehler analysieren, Elternbriefe und Protokolle schreiben sowie Vertretungsstunden vorbereiten. Für alle 16 Bundesländer gibt es Länderprofile mit Lehrplänen, Schularten, Abschlüssen und Regeln für Leistungsnachweise (zum Beispiel heißt die Klassenarbeit in Bayern „Schulaufgabe“).

## Befehle (Auswahl)

| Befehl | Wofür |
|---|---|
| `/stundenwerk:stunde` | Unterrichtsstunde mit Verlaufsplan, Material und Tafelbild |
| `/stundenwerk:einheit` | Unterrichtseinheit über mehrere Stunden |
| `/stundenwerk:klassenarbeit` | Klassenarbeit (Gruppe A/B), Erwartungshorizont, Notenschlüssel |
| `/stundenwerk:kurztest` | Kurztest mit Lösung |
| `/stundenwerk:differenzieren` | Material auf drei Niveaus |
| `/stundenwerk:vertretung` | Vertretungsstunde, die ohne Vorwissen funktioniert |
| `/stundenwerk:elternbrief` | Elternbrief, verständlich und freundlich |
| `/stundenwerk:neuigkeiten` | Was ist in der neuen Version neu? |

Insgesamt 25 Befehle, unter anderem für Wochenplan, Exit-Ticket, Feedback, Lernlandkarte, Präsentationsprüfung, Abschlussprüfung, Ausflug, Elterngespräch und Logbuch.

## Qualität

Alle Befehle folgen festen Regeln: nichts erfinden, Herkunft kennzeichnen (Beleg, fachlich anerkannt, Vorschlag oder „[prüfen]“), bei Unklarheiten zuerst nachfragen und am Ende offene Punkte unter „Bitte prüfen:“ auflisten. Pädagogische Begründungen stützen sich auf gut belegte Prinzipien mit Quellenangabe.

## Was das Plugin tut und was nicht

- Es besteht nur aus Anleitungen (Skills) in Textform. Es enthält keine Programme, keine Hooks und keine MCP-Server.
- Es sendet keine Daten an Dienste außerhalb von Claude und lädt nichts aus dem Internet.
- Es liest und schreibt nur Dateien im Ordner, in dem die Lehrkraft arbeitet (zum Beispiel Stoffverteilungspläne, Logbuch, Klassenarbeiten).
- Der Befehl `/stundenwerk:sichern` legt auf Wunsch eine ZIP-Sicherungskopie des eigenen Schulordners an.
- Personenbezogene Daten von Schülerinnen und Schülern sollen nicht verarbeitet werden. Die Befehle arbeiten mit Kürzeln oder anonymisierten Angaben und weisen darauf hin.

## Einrichtung

Die ausführliche Anleitung mit Ordnervorlage für den Schulordner steht im Repository: https://github.com/stundenwerk-skill/Stundenwerk.skill

## Lizenz

Inhalte: CC BY-NC-SA 4.0 – kostenlos für Lehrkräfte. Kommerzielle Nutzung nur mit Lizenz, Kontakt: stundenwerk.skill@gmail.com. Name und Logo „Stundenwerk“ sind nicht Teil der freien Lizenz. © 2026 Nedim Boztepe.
