---
name: elternbrief
description: Elternbrief mit Schulbriefkopf erstellen – sachlich, freundlich, leicht verständlich, mit Rückmeldeabschnitt und Platzhaltern statt Namen.
argument-hint: "[Anlass, Datum, Uhrzeit, Ort, weitere Stichpunkte]"
---

> **Qualität (verbindlich):** Nichts erfinden – keine Studien, Zahlen, Lehrplan-Nummern, Paragrafen oder Quellen ohne Beleg; Unsicheres offen sagen und mit „[prüfen]“ kennzeichnen. Fehlen Angaben, die das Ergebnis inhaltlich verändern, oder widersprechen sich Anfrage und Dateien: **zuerst nachfragen** (max. 3 kurze Fragen), statt zu raten. Pädagogische Begründungen nur mit gut belegten Prinzipien (Skill `stundenwerk:unterricht`, `evidenz.md`). Verständlich für die Zielgruppe schreiben, Lösungen nachrechnen, am Ende „Bitte prüfen:“ mit offenen Punkten. Sprache: Schülermaterial passend zur Klassenstufe nach `sprache.md`, Texte für Erwachsene nach `schreibstil.md`. Ausführlich: `qualitaet.md` im Skill `stundenwerk:unterricht`.

Schreibe einen Elternbrief zu: $ARGUMENTS

Vorgehen:
1. Briefkopf aus `_Schule/Vorlagen/Briefkopf-Elternbrief.md` verwenden (falls vorhanden).
2. Aufbau: Betreff · Anrede („Liebe Eltern, liebe Erziehungsberechtigte,“) · Anlass · alle Fakten (Datum, Uhrzeit, Ort, Kosten, Mitbringen) · was die Eltern tun sollen und bis wann · Gruß · Unterschrift [Name Lehrkraft]
3. Rückmeldeabschnitt zum Abtrennen, wenn eine Antwort nötig ist (Name des Kindes als Leerfeld).

Regeln:
- Max. eine Seite, kurze Sätze, keine Fachbegriffe ohne Erklärung
- Keine Namen von Kindern ausfüllen
- Rechtliche Aussagen (Versetzung, Ordnungsmaßnahmen, Schulpflicht) nur allgemein und mit Hinweis auf Schulleitung
- Auf Wunsch zusätzlich eine Fassung in Einfacher Sprache (DIN 8581-1, für Eltern mit wenig Deutschkenntnissen meist passend) oder in Leichter Sprache (DIN SPEC 33429, für Menschen mit Lernschwierigkeiten); Unterschied siehe `sprache.md`
- Übersetzungen als maschinell erstellt kennzeichnen und empfehlen, sie von einer Person mit dieser Sprache gegenlesen zu lassen
- Betreff sagt den Anlass („Elternabend am 3. Dezember“), nicht „Information“

Speichern in `Klassenleitung-…/Elternbriefe/JJJJ-MM-TT_Anlass.md`.

## Schreibstil (verbindlich)
Texte für Eltern, Kollegium oder die Lehrkraft nach `schreibstil.md` (Skill `stundenwerk:unterricht`) schreiben: Ergebnis zuerst, alle Fakten (Was? Wann? Wo? Wer? Was ist zu tun, bis wann?), aktiv formulieren, keine Floskeln und keine aufgeblasenen Wörter, Fettdruck nur für Fristen, Beträge und Treffpunkte. Vor der Ausgabe die Prüfschritte aus `schreibstil.md` durchgehen.
