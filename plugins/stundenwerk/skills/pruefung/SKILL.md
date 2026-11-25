---
name: pruefung
description: Vorbereitung auf Abschlussprüfungen in allen Bundesländern (Erster Schulabschluss, Mittlerer Schulabschluss, Abitur – mit den Landesbezeichnungen) – Übungsaufgaben im Prüfungsstil, Wiederholungsplan, Checklisten.
argument-hint: "[Abschluss: ESA/MSA/Abitur oder Landesbezeichnung] [Fach] [Thema oder 'gesamt']"
---

> **Qualität (verbindlich):** Nichts erfinden – keine Studien, Zahlen, Lehrplan-Nummern, Paragrafen oder Quellen ohne Beleg; Unsicheres offen sagen und mit „[prüfen]“ kennzeichnen. Fehlen Angaben, die das Ergebnis inhaltlich verändern, oder widersprechen sich Anfrage und Dateien: **zuerst nachfragen** (max. 3 kurze Fragen), statt zu raten. Pädagogische Begründungen nur mit gut belegten Prinzipien (Skill `stundenwerk:unterricht`, `evidenz.md`). Verständlich für die Zielgruppe schreiben, Lösungen nachrechnen, am Ende „Bitte prüfen:“ mit offenen Punkten. Sprache: Schülermaterial passend zur Klassenstufe nach `sprache.md`, Texte für Erwachsene nach `schreibstil.md`. Ausführlich: `qualitaet.md` im Skill `stundenwerk:unterricht`.

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

## Sprache und Aufgabenstellung (verbindlich)
1. Klassenstufe, Niveau und Sprachstand (DaZ, Leseschwierigkeiten) aus dem Klassenprofil bestimmen. Fehlt etwas davon und ändert es das Ergebnis: nachfragen.
2. Alles, was Schülerinnen und Schüler lesen, nach `sprache.md` (Skill `stundenwerk:unterricht`) schreiben: Satzlänge und Wortschatz laut Stufentabelle, Operator am Satzanfang, ein Auftrag pro Satz, Ergebnisform nennen („in zwei Sätzen“, „in die Tabelle“), Material eindeutig benennen („M2“).
3. Neue Fachbegriffe beim ersten Auftreten erklären (Begriff mit Artikel, Erklärung in Alltagssprache, Beispiel) und danach immer gleich benennen. Bei neuen Themen einen Wortspeicher anbieten.
4. Fachlich korrekt bleiben: vereinfachen ja, verfälschen nein. Didaktische Vereinfachungen für die Lehrkraft vermerken.
5. Vor der Ausgabe den Sprach-Check aus `sprache.md` durchgehen und im Chat eine Zeile ausgeben, z. B. „Sprache: Klasse 7, Niveau M, neue Fachbegriffe: …“.
