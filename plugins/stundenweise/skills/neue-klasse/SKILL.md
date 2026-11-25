---
name: neue-klasse
description: Legt einen neuen Klassen- oder Kursordner an (bei Bedarf auch das Fach) – mit anonymem Klassenprofil, Stoffverteilungsplan, Logbuch und allen Unterordnern.
argument-hint: "[Fach] [Klasse/Kurs] [optional: Schulart/Niveau, Wochenstunden]"
---

> **Qualität (verbindlich):** Nichts erfinden – keine Studien, Zahlen, Lehrplan-Nummern, Paragrafen oder Quellen ohne Beleg; Unsicheres offen sagen und mit „[prüfen]“ kennzeichnen. Fehlen Angaben, die das Ergebnis inhaltlich verändern, oder widersprechen sich Anfrage und Dateien: **zuerst nachfragen** (max. 3 kurze Fragen), statt zu raten. Pädagogische Begründungen nur mit gut belegten Prinzipien (Skill `stundenweise:unterricht`, `evidenz.md`). Verständlich für die Zielgruppe schreiben, Lösungen nachrechnen, am Ende „Bitte prüfen:“ mit offenen Punkten. Ausführlich: `qualitaet.md` im Skill `stundenweise:unterricht`.

Lege eine neue Lerngruppe an: $ARGUMENTS

Vorgehen:
1. Schulordner finden: Das ist der Ordner mit `_Schule/` (aktueller Ordner oder ein übergeordneter). Dort arbeiten.
2. **Fach** prüfen: Gibt es den Ordner `<Fach>/` schon?
   - Nein → anlegen mit `CLAUDE.md` (Muster: andere Fach-CLAUDE.md oder die Vorlage aus `/einrichten`), `_Lehrplan/LIESMICH.md`, `_Beispiele/LIESMICH.md`.
3. **Klassenordner** `<Fach>/Klasse-<Bez>/` anlegen (für Kurse: `Kurs-<Bez>/`). Existiert er schon: abbrechen und Bescheid geben.
4. Kurz nachfragen (eine Frage nach der anderen, alles optional, „weiß nicht“ ist okay):
   - Schulart und Niveau bzw. Bildungsgang/Kurs (Bezeichnungen laut Länderprofil)
   - Wochenstunden, Doppelstunden
   - Größe der Lerngruppe, Förderbedarfe auf Klassenebene, DaZ, Leistungsspitze (**keine Namen!**)
   - Was methodisch gut/schlecht funktioniert
5. Dateien anlegen:
   - `CLAUDE.md` – Klassenprofil (Muster: `Mathematik/Klasse-7b/CLAUDE.md` bzw. ein bestehendes Profil)
   - `Stoffverteilungsplan.md` – Tabellenkopf; anbieten, ihn jetzt nach Lehrplan und `_Schule/Jahresplan-*.md` zu entwerfen
   - `Logbuch.md` – Überschrift und Formatzeile
   - leere Unterordner: `Einheiten/`, `Klassenarbeiten/` (mit `.gitkeep` oder kurzer `LIESMICH.md`)
6. Abschluss: angelegte Struktur als Baum zeigen und den Startbefehl nennen:
   „Zum Arbeiten in diesem Ordner Claude starten, z. B. dann `/stundenweise:einheit …` oder `/stundenweise:stunde …`.“
