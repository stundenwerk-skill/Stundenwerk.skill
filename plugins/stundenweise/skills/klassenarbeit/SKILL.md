---
name: klassenarbeit
description: Erstellt eine Klassenarbeit (Bayern: Schulaufgabe, Oberstufe: Klausur) mit Erwartungshorizont, Notenschlüssel-Vorschlag und Version B für die aktuelle Klasse – nach den Vorgaben des jeweiligen Bundeslandes.
argument-hint: "[Thema] [Dauer in Minuten]"
---

> **Qualität (verbindlich):** Nichts erfinden – keine Studien, Zahlen, Lehrplan-Nummern, Paragrafen oder Quellen ohne Beleg; Unsicheres offen sagen und mit „[prüfen]“ kennzeichnen. Fehlen Angaben, die das Ergebnis inhaltlich verändern, oder widersprechen sich Anfrage und Dateien: **zuerst nachfragen** (max. 3 kurze Fragen), statt zu raten. Pädagogische Begründungen nur mit gut belegten Prinzipien (Skill `stundenweise:unterricht`, `evidenz.md`). Verständlich für die Zielgruppe schreiben, Lösungen nachrechnen, am Ende „Bitte prüfen:“ mit offenen Punkten. Ausführlich: `qualitaet.md` im Skill `stundenweise:unterricht`.

Erstelle eine Klassenarbeit zum Thema: $ARGUMENTS

Vorgehen:
1. Länderprofil lesen (über den Skill `unterricht`): **Begriff** (z. B. Schulaufgabe in Bayern) und **Regeln** des Landes übernehmen (Ankündigung, Höchstzahl pro Tag/Woche, Anzahl je Fach). Mit „[prüfen]“ markierte Regeln nur als Hinweis nennen.
2. Klassenprofil (CLAUDE.md der Klasse), Stoffverteilungsplan.md und die letzten 10 Einträge im Logbuch.md lesen.
3. Passende Lehrplan-Auszüge in `../_Lehrplan/` und Beispiele in `../_Beispiele/` lesen.
4. Prüfen: Wurde alles, was abgefragt wird, laut Logbuch auch unterrichtet? Wenn nicht: nachfragen.
5. Im Ordner `Klassenarbeiten/` einen neuen Unterordner `KAx-Thema/` anlegen mit:
   - `KA.md` (Version A)
   - `KA_B.md` (Version B, gleiche Schwierigkeit)
   - `Erwartungshorizont.md` (beide Versionen, Teilpunkte)
   - `Uebersicht.md` (Tabelle: Aufgabe | Kompetenz/Lehrplanbezug | AFB | Punkte; dazu Zeitbedarf und Notenschlüssel-Vorschlag aus der Fach-CLAUDE.md)
6. Jede Aufgabe: Operator, AFB (I/II/III), Punkte. Punktsumme prüfen.
7. Kurze Zusammenfassung im Chat: Punktzahl, AFB-Verteilung, offene Punkte.

Lehrplan-Standards nie erfinden – ohne Beleg „[Lehrplanbezug prüfen]“.
