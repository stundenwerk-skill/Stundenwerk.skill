---
name: klassenarbeit
description: Erstellt eine Klassenarbeit mit Erwartungshorizont, Notenschlüssel-Vorschlag und Version B für die aktuelle Klasse (NVO BW).
argument-hint: "[Thema] [Dauer in Minuten]"
---

Erstelle eine Klassenarbeit zum Thema: $ARGUMENTS

Vorgehen:
1. Lies Klassenprofil (CLAUDE.md der Klasse), Stoffverteilungsplan.md und die letzten 10 Einträge im Logbuch.md.
2. Lies die passenden Bildungsplan-Auszüge in `../_Bildungsplan/` und Beispiele in `../_Beispiele/`.
3. Prüfe: Wurde alles, was abgefragt wird, laut Logbuch auch unterrichtet? Wenn nicht: nachfragen.
4. Erstelle im Ordner `Klassenarbeiten/` einen neuen Unterordner `KAx-Thema/` mit:
   - `KA.md` (Version A)
   - `KA_B.md` (Version B, gleiche Schwierigkeit)
   - `Erwartungshorizont.md` (beide Versionen, Teilpunkte)
   - `Uebersicht.md` (Tabelle: Aufgabe | Kompetenz/Standard | AFB | Punkte; dazu Zeitbedarf und Notenschlüssel-Vorschlag aus der Fach-CLAUDE.md)
5. Jede Aufgabe: Operator, AFB (I/II/III), Punkte. Punktsumme prüfen.
6. Kurze Zusammenfassung im Chat: Punktzahl, AFB-Verteilung, offene Punkte.

Bildungsplan-Standards nie erfinden – ohne Beleg „[Standard prüfen]“.
