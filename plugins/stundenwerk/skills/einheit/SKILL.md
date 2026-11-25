---
name: einheit
description: Plant eine Unterrichtseinheit über mehrere Stunden mit Lehrplanbezug, Stundenfolge, Leistungsfeststellung und Differenzierung.
argument-hint: "[Thema der Einheit] [Anzahl Stunden]"
---

> **Qualität (verbindlich):** Nichts erfinden – keine Studien, Zahlen, Lehrplan-Nummern, Paragrafen oder Quellen ohne Beleg; Unsicheres offen sagen und mit „[prüfen]“ kennzeichnen. Fehlen Angaben, die das Ergebnis inhaltlich verändern, oder widersprechen sich Anfrage und Dateien: **zuerst nachfragen** (max. 3 kurze Fragen), statt zu raten. Pädagogische Begründungen nur mit gut belegten Prinzipien (Skill `stundenwerk:unterricht`, `evidenz.md`). Verständlich für die Zielgruppe schreiben, Lösungen nachrechnen, am Ende „Bitte prüfen:“ mit offenen Punkten. Sprache: Schülermaterial passend zur Klassenstufe nach `sprache.md`, Texte für Erwachsene nach `schreibstil.md`. Ausführlich: `qualitaet.md` im Skill `stundenwerk:unterricht`.

Plane die Unterrichtseinheit: $ARGUMENTS

Vorgehen:
1. Stoffverteilungsplan.md, Klassenprofil und `../_Lehrplan/` lesen.
2. Termine aus `_Schule/Jahresplan-*.md` beachten (Ferien, Projekttage).

Erstelle `Einheiten/NN-Thema/Planung.md`:
- Überblick: Ziel der Einheit, Lehrplan-Kompetenzen (mit Nummer/Bezeichnung oder „[Lehrplanbezug prüfen]“), fächerübergreifende Ziele des Landes
- Lernausgangslage (aus Logbuch / Klassenprofil)
- Stundenfolge als Tabelle: Std. | Thema | Schwerpunkt-Kompetenz | Methode | Material | Hausaufgabe
- Lernprogression: vom Einstieg über Erarbeitung zu Übung, Vernetzung und Transfer
- Leistungsfeststellung: wann Kurztest, wann Klassenarbeit (Begriffe und Regeln des Landes laut Länderprofil)
- Differenzierung über die Einheit (Niveaus/Bildungsgänge, Förderung, Forderung)
- Ideen für Lernlandkarte und Abschlussaufgabe

Lege leere Unterordner `Stunden/` und `Arbeitsblaetter/` an. Optional den Stoffverteilungsplan aktualisieren – vorher fragen.

## Sprache und Aufgabenstellung (verbindlich)
1. Klassenstufe, Niveau und Sprachstand (DaZ, Leseschwierigkeiten) aus dem Klassenprofil bestimmen. Fehlt etwas davon und ändert es das Ergebnis: nachfragen.
2. Alles, was Schülerinnen und Schüler lesen, nach `sprache.md` (Skill `stundenwerk:unterricht`) schreiben: Satzlänge und Wortschatz laut Stufentabelle, Operator am Satzanfang, ein Auftrag pro Satz, Ergebnisform nennen („in zwei Sätzen“, „in die Tabelle“), Material eindeutig benennen („M2“).
3. Neue Fachbegriffe beim ersten Auftreten erklären (Begriff mit Artikel, Erklärung in Alltagssprache, Beispiel) und danach immer gleich benennen. Bei neuen Themen einen Wortspeicher anbieten.
4. Fachlich korrekt bleiben: vereinfachen ja, verfälschen nein. Didaktische Vereinfachungen für die Lehrkraft vermerken.
5. Vor der Ausgabe den Sprach-Check aus `sprache.md` durchgehen und im Chat eine Zeile ausgeben, z. B. „Sprache: Klasse 7, Niveau M, neue Fachbegriffe: …“.

## Schreibstil (verbindlich)
Texte für Eltern, Kollegium oder die Lehrkraft nach `schreibstil.md` (Skill `stundenwerk:unterricht`) schreiben: Ergebnis zuerst, alle Fakten (Was? Wann? Wo? Wer? Was ist zu tun, bis wann?), aktiv formulieren, keine Floskeln und keine aufgeblasenen Wörter, Fettdruck nur für Fristen, Beträge und Treffpunkte. Vor der Ausgabe die Prüfschritte aus `schreibstil.md` durchgehen.
