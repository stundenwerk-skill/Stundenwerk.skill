---
name: stunde
description: Plant eine Unterrichtsstunde mit Verlaufsplan, Arbeitsblatt und Lösung – passend zum aktuellen Stand der Klasse laut Logbuch.
argument-hint: "[Thema] [Dauer in Minuten, z. B. 45 oder 90]"
---

Plane eine Stunde zu: $ARGUMENTS

Vorgehen:
1. Klassenprofil, Stoffverteilungsplan.md und die letzten 5 Logbuch-Einträge lesen. An den Stand anknüpfen.
2. Passende Bildungsplan-Auszüge (`../_Bildungsplan/`) und Beispiele (`../_Beispiele/`) berücksichtigen.

Erstelle in `Einheiten/<aktuelle Einheit>/Stunden/JJJJ-MM-TT_Thema.md`:
- Kopf: Klasse, Fach, Niveau, Thema, Dauer
- Bildungsplanbezug (prozess- und inhaltsbezogen) und Leitperspektiven, falls passend
- Stundenziel + 2–4 Feinziele mit Operatoren
- Verlaufsplan als Tabelle: Phase | Zeit | Inhalt / Aktivität L und S | Sozialform | Material
  (Einstieg · Erarbeitung · Sicherung · Übung/Transfer · Hausaufgabe) – Summe der Zeiten = Dauer
- Differenzierung (Hilfen, Sternchen-Aufgabe, DaZ-Wortspeicher gemäß Klassenprofil)
- Mögliche Stolpersteine

Zusätzlich im Ordner `Arbeitsblaetter/`: `AB_Thema.md` und `AB_Thema_Loesung.md`.
Im Chat: 3-Zeilen-Zusammenfassung.
