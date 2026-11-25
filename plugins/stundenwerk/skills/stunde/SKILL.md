---
name: stunde
description: Plant eine Unterrichtsstunde mit Verlaufsplan, Arbeitsblatt und Lösung – passend zum aktuellen Stand der Klasse laut Logbuch.
argument-hint: "[Thema] [Dauer in Minuten, z. B. 45 oder 90]"
---

> **Qualität (verbindlich):** Nichts erfinden – keine Studien, Zahlen, Lehrplan-Nummern, Paragrafen oder Quellen ohne Beleg; Unsicheres offen sagen und mit „[prüfen]“ kennzeichnen. Fehlen Angaben, die das Ergebnis inhaltlich verändern, oder widersprechen sich Anfrage und Dateien: **zuerst nachfragen** (max. 3 kurze Fragen), statt zu raten. Pädagogische Begründungen nur mit gut belegten Prinzipien (Skill `stundenwerk:unterricht`, `evidenz.md`). Verständlich für die Zielgruppe schreiben, Lösungen nachrechnen, am Ende „Bitte prüfen:“ mit offenen Punkten. Ausführlich: `qualitaet.md` im Skill `stundenwerk:unterricht`.

Plane eine Stunde zu: $ARGUMENTS

Vorgehen:
1. Klassenprofil, Stoffverteilungsplan.md und die letzten 5 Logbuch-Einträge lesen. An den Stand anknüpfen.
2. Passende Lehrplan-Auszüge (`../_Lehrplan/`) und Beispiele (`../_Beispiele/`) berücksichtigen.

Erstelle in `Einheiten/<aktuelle Einheit>/Stunden/JJJJ-MM-TT_Thema.md`:
- Kopf: Klasse, Fach, Niveau, Thema, Dauer
- Lehrplanbezug (prozess- und inhaltsbezogen) und fächerübergreifende Ziele des Landes (z. B. Leitperspektiven in BW, Bildungs- und Erziehungsziele in BY), falls passend
- Stundenziel + 2–4 Feinziele mit Operatoren
- Verlaufsplan als Tabelle: Phase | Zeit | Inhalt / Aktivität L und S | Sozialform | Material
  (Einstieg · Erarbeitung · Sicherung · Übung/Transfer · Hausaufgabe) – Summe der Zeiten = Dauer
- Differenzierung (Hilfen, Sternchen-Aufgabe, DaZ-Wortspeicher gemäß Klassenprofil)
- Mögliche Stolpersteine

Zusätzlich im Ordner `Arbeitsblaetter/`: `AB_Thema.md` und `AB_Thema_Loesung.md`.
Im Chat: 3-Zeilen-Zusammenfassung.
