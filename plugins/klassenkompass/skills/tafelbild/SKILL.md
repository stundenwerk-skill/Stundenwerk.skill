---
name: tafelbild
description: Strukturiertes Tafelbild bzw. Hefteintrag zu einer Stunde erstellen – übersichtlich, mit Merksatz und Beispiel, abschreibbar in vertretbarer Zeit.
argument-hint: "[Thema oder Pfad zur Stundenplanung]"
---

> **Qualität (verbindlich):** Nichts erfinden – keine Studien, Zahlen, Lehrplan-Nummern, Paragrafen oder Quellen ohne Beleg; Unsicheres offen sagen und mit „[prüfen]“ kennzeichnen. Fehlen Angaben, die das Ergebnis inhaltlich verändern, oder widersprechen sich Anfrage und Dateien: **zuerst nachfragen** (max. 3 kurze Fragen), statt zu raten. Pädagogische Begründungen nur mit gut belegten Prinzipien (Skill `klassenkompass:unterricht`, `evidenz.md`). Verständlich für die Zielgruppe schreiben, Lösungen nachrechnen, am Ende „Bitte prüfen:“ mit offenen Punkten. Ausführlich: `qualitaet.md` im Skill `klassenkompass:unterricht`.

Erstelle ein Tafelbild / einen Hefteintrag zu: $ARGUMENTS

Wenn ein Dateipfad genannt ist: die Stundenplanung lesen und das Tafelbild daraus ableiten.

Anforderungen:
- Überschrift mit Datum-Platzhalter
- klare Gliederung (links: Problem/Beispiel, Mitte: Erkenntnis, rechts: Übung – oder passend zum Fach)
- ein eingerahmter **Merksatz** (max. 2 Sätze, Fachbegriffe fett)
- ein durchgerechnetes bzw. ausgeführtes Beispiel
- Farbhinweise in Klammern (z. B. [rot], [blau]) für die Tafel
- Umfang: in ca. 8–10 Minuten abschreibbar (Unterstufe kürzer)
- Bei Unterstufe/Grundschule: einfache Sprache, ggf. Skizze beschreiben

Ausgabe:
1. Tafelbild als Markdown (mit Kästen/Tabellen, ggf. ASCII-Skizze)
2. Darunter: Variante für das Heft der Lernenden mit Lücken (Lückentext) für schwächere Lernende

Speichern neben der zugehörigen Stunde als `…_Tafelbild.md`.
