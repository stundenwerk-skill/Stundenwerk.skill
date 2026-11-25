---
name: stunde
description: Plant eine Unterrichtsstunde mit Verlaufsplan, Arbeitsblatt und Lösung – passend zum aktuellen Stand der Klasse laut Logbuch.
argument-hint: "[Thema] [Dauer in Minuten, z. B. 45 oder 90]"
---

> **Qualität (verbindlich):** Nichts erfinden – keine Studien, Zahlen, Lehrplan-Nummern, Paragrafen oder Quellen ohne Beleg; Unsicheres offen sagen und mit „[prüfen]“ kennzeichnen. Fehlen Angaben, die das Ergebnis inhaltlich verändern, oder widersprechen sich Anfrage und Dateien: **zuerst nachfragen** (max. 3 kurze Fragen), statt zu raten. Pädagogische Begründungen nur mit gut belegten Prinzipien (Skill `stundenwerk:unterricht`, `evidenz.md`). Verständlich für die Zielgruppe schreiben, Lösungen nachrechnen, am Ende „Bitte prüfen:“ mit offenen Punkten. Sprache: Schülermaterial passend zur Klassenstufe nach `sprache.md`, Texte für Erwachsene nach `schreibstil.md`. Ausführlich: `qualitaet.md` im Skill `stundenwerk:unterricht`.

Plane eine Stunde zu: $ARGUMENTS

Vorgehen:
1. Klassenprofil, Stoffverteilungsplan.md und die letzten 5 Logbuch-Einträge lesen. An den Stand anknüpfen.
2. Passende Lehrplan-Auszüge (`../_Lehrplan/`) und Beispiele (`../_Beispiele/`) berücksichtigen.

Erstelle in `Einheiten/<aktuelle Einheit>/Stunden/JJJJ-MM-TT_Thema.md`:
- Kopf: Klasse, Fach, Niveau, Thema, Dauer
- Lehrplanbezug (prozess- und inhaltsbezogen) und fächerübergreifende Ziele des Landes (z. B. Leitperspektiven in BW, Bildungs- und Erziehungsziele in BY), falls passend
- Stundenziel + 2–4 Feinziele mit Operatoren, dazu das Stundenziel als ein Satz in Schülersprache für die Tafel (z. B. „Heute lernst du, wie man die Steigung abliest.“)
- Verlaufsplan als Tabelle: Phase | Zeit | Inhalt / Aktivität L und S | Sozialform | Material
  (Einstieg · Erarbeitung · Sicherung · Übung/Transfer · Hausaufgabe) – Summe der Zeiten = Dauer
- Differenzierung (Hilfen, Sternchen-Aufgabe, DaZ-Wortspeicher gemäß Klassenprofil)
- Mögliche Stolpersteine

Zusätzlich im Ordner `Arbeitsblaetter/`:
- `AB_Thema.md`: Kopfzeile (Name, Klasse, Datum als Leerfelder; Thema), bei neuen Begriffen ein Wortspeicher, dann nummerierte Aufgaben vom Leichten zum Schweren (AFB I → II → III). Jede Aufgabe beginnt mit dem Operator und nennt die Ergebnisform. Bei neuen Verfahren zuerst ein vorgerechnetes Beispiel. Am Ende eine ★-Aufgabe für Schnelle. Umfang passend zur Arbeitsphase im Verlaufsplan.
- `AB_Thema_Loesung.md`: vollständige Lösungen mit Rechen- bzw. Lösungsweg, bei offenen Aufgaben ein Erwartungsbild mit den wichtigsten Punkten.
Im Chat: 3-Zeilen-Zusammenfassung.

## Sprache und Aufgabenstellung (verbindlich)
1. Klassenstufe, Niveau und Sprachstand (DaZ, Leseschwierigkeiten) aus dem Klassenprofil bestimmen. Fehlt etwas davon und ändert es das Ergebnis: nachfragen.
2. Alles, was Schülerinnen und Schüler lesen, nach `sprache.md` (Skill `stundenwerk:unterricht`) schreiben: Satzlänge und Wortschatz laut Stufentabelle, Operator am Satzanfang, ein Auftrag pro Satz, Ergebnisform nennen („in zwei Sätzen“, „in die Tabelle“), Material eindeutig benennen („M2“).
3. Neue Fachbegriffe beim ersten Auftreten erklären (Begriff mit Artikel, Erklärung in Alltagssprache, Beispiel) und danach immer gleich benennen. Bei neuen Themen einen Wortspeicher anbieten.
4. Fachlich korrekt bleiben: vereinfachen ja, verfälschen nein. Didaktische Vereinfachungen für die Lehrkraft vermerken.
5. Vor der Ausgabe den Sprach-Check aus `sprache.md` durchgehen und im Chat eine Zeile ausgeben, z. B. „Sprache: Klasse 7, Niveau M, neue Fachbegriffe: …“.
