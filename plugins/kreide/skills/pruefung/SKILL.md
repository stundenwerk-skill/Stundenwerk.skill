---
name: pruefung
description: Vorbereitung auf Abschlussprüfungen in allen Bundesländern (Erster Schulabschluss, Mittlerer Schulabschluss, Abitur – mit den Landesbezeichnungen) – Übungsaufgaben im Prüfungsstil, Wiederholungsplan, Checklisten.
argument-hint: "[Abschluss: ESA/MSA/Abitur oder Landesbezeichnung] [Fach] [Thema oder 'gesamt']"
---

> **Qualität (verbindlich):** Nichts erfinden – keine Studien, Zahlen, Lehrplan-Nummern, Paragrafen oder Quellen ohne Beleg; Unsicheres offen sagen und mit „[prüfen]“ kennzeichnen. Fehlen Angaben, die das Ergebnis inhaltlich verändern, oder widersprechen sich Anfrage und Dateien: **zuerst nachfragen** (max. 3 kurze Fragen), statt zu raten. Pädagogische Begründungen nur mit gut belegten Prinzipien (Skill `kreide:unterricht`, `evidenz.md`). Verständlich für die Zielgruppe schreiben, Lösungen nachrechnen, am Ende „Bitte prüfen:“ mit offenen Punkten. Ausführlich: `qualitaet.md` im Skill `kreide:unterricht`.

Erstelle Prüfungsvorbereitung für: $ARGUMENTS

Vorher: Länderprofil lesen (über den Skill `unterricht`) und die **Abschlussbezeichnung des Landes** verwenden (z. B. Berufsbildungsreife in Berlin, Realschulabschluss in Sachsen, Qualifizierter Sekundarabschluss I in Rheinland-Pfalz).

Wichtig:
- Prüfungsvorgaben, Schwerpunktthemen, zugelassene Hilfsmittel und Operatorenlisten ändern sich jährlich und unterscheiden sich je Land. Wenn sie nicht in `_Lehrplan/` oder `_Schule/` liegen: Websuche auf den offiziellen Seiten des Landes nutzen, falls verfügbar, sonst als „[aktuelle Prüfungsvorgaben des Landes prüfen]“ markieren.
- Keine Originalaufgaben früherer Prüfungen abschreiben. Eigene Aufgaben im gleichen Stil, Aufbau und Niveau erstellen.

Erstelle im Ordner `Pruefung/` der Klasse:

1. `Themenueberblick.md` – prüfungsrelevante Kompetenzen und Themen als Checkliste („Ich kann …“), mit Selbsteinschätzung ☐ sicher ☐ teils ☐ unsicher
2. `Wiederholungsplan.md` – Wochenplan bis zum Prüfungstermin (Termin aus `_Schule/Jahresplan` oder nachfragen), je Woche Thema, Übungsform, Mini-Test
3. `Uebungsaufgaben_X.md` – Aufgaben im Prüfungsformat, Operatoren laut Prüfungsvorgaben, mit Bewertungseinheiten
4. `Loesungen_X.md` – Erwartungshorizont und Bewertungshinweise
5. `Pruefungstipps.md` – Zeitmanagement, Operatoren richtig lesen, typische Fehler – in Schülersprache
