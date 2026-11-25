---
name: tafelbild
description: Strukturiertes Tafelbild bzw. Hefteintrag zu einer Stunde erstellen – übersichtlich, mit Merksatz und Beispiel, abschreibbar in vertretbarer Zeit.
argument-hint: "[Thema oder Pfad zur Stundenplanung]"
---

> **Qualität (verbindlich):** Nichts erfinden – keine Studien, Zahlen, Lehrplan-Nummern, Paragrafen oder Quellen ohne Beleg; Unsicheres offen sagen und mit „[prüfen]“ kennzeichnen. Fehlen Angaben, die das Ergebnis inhaltlich verändern, oder widersprechen sich Anfrage und Dateien: **zuerst nachfragen** (max. 3 kurze Fragen), statt zu raten. Pädagogische Begründungen nur mit gut belegten Prinzipien (Skill `stundenwerk:unterricht`, `evidenz.md`). Verständlich für die Zielgruppe schreiben, Lösungen nachrechnen, am Ende „Bitte prüfen:“ mit offenen Punkten. Sprache: Schülermaterial passend zur Klassenstufe nach `sprache.md`, Texte für Erwachsene nach `schreibstil.md`. Ausführlich: `qualitaet.md` im Skill `stundenwerk:unterricht`.

Erstelle ein Tafelbild / einen Hefteintrag zu: $ARGUMENTS

Wenn ein Dateipfad genannt ist: die Stundenplanung lesen und das Tafelbild daraus ableiten.

Anforderungen:
- Überschrift mit Datum-Platzhalter
- klare Gliederung (links: Problem/Beispiel, Mitte: Erkenntnis, rechts: Übung – oder passend zum Fach)
- ein eingerahmter **Merksatz** (max. 2 Sätze, Fachbegriffe fett)
- ein durchgerechnetes bzw. ausgeführtes Beispiel
- Farbhinweise in Klammern (z. B. [rot], [blau]) für die Tafel
- Umfang: in ca. 8–10 Minuten abschreibbar (Unterstufe kürzer)
- Sprache und Länge nach der Stufentabelle in `sprache.md`; Fachbegriffe genau so benennen wie im Unterricht und auf dem Arbeitsblatt
- Bei Unterstufe/Grundschule: Skizze beschreiben, Merksatz höchstens ein Satz

Ausgabe:
1. Tafelbild als Markdown (mit Kästen/Tabellen, ggf. ASCII-Skizze)
2. Darunter: Variante für das Heft der Lernenden mit Lücken (Lückentext) für schwächere Lernende

Speichern neben der zugehörigen Stunde als `…_Tafelbild.md`.

## Sprache und Aufgabenstellung (verbindlich)
1. Klassenstufe, Niveau und Sprachstand (DaZ, Leseschwierigkeiten) aus dem Klassenprofil bestimmen. Fehlt etwas davon und ändert es das Ergebnis: nachfragen.
2. Alles, was Schülerinnen und Schüler lesen, nach `sprache.md` (Skill `stundenwerk:unterricht`) schreiben: Satzlänge und Wortschatz laut Stufentabelle, Operator am Satzanfang, ein Auftrag pro Satz, Ergebnisform nennen („in zwei Sätzen“, „in die Tabelle“), Material eindeutig benennen („M2“).
3. Neue Fachbegriffe beim ersten Auftreten erklären (Begriff mit Artikel, Erklärung in Alltagssprache, Beispiel) und danach immer gleich benennen. Bei neuen Themen einen Wortspeicher anbieten.
4. Fachlich korrekt bleiben: vereinfachen ja, verfälschen nein. Didaktische Vereinfachungen für die Lehrkraft vermerken.
5. Vor der Ausgabe den Sprach-Check aus `sprache.md` durchgehen und im Chat eine Zeile ausgeben, z. B. „Sprache: Klasse 7, Niveau M, neue Fachbegriffe: …“.
