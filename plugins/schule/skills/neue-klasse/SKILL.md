---
name: neue-klasse
description: Legt einen neuen Klassen- oder Kursordner an (bei Bedarf auch das Fach) – mit anonymem Klassenprofil, Stoffverteilungsplan, Logbuch und allen Unterordnern.
argument-hint: "[Fach] [Klasse/Kurs] [optional: Schulart/Niveau, Wochenstunden]"
---

Lege eine neue Lerngruppe an: $ARGUMENTS

Vorgehen:
1. Schulordner finden: Das ist der Ordner mit `_Schule/` (aktueller Ordner oder ein übergeordneter). Dort arbeiten.
2. **Fach** prüfen: Gibt es den Ordner `<Fach>/` schon?
   - Nein → anlegen mit `CLAUDE.md` (Muster: andere Fach-CLAUDE.md oder die Vorlage aus `/einrichten`), `_Bildungsplan/LIESMICH.md`, `_Beispiele/LIESMICH.md`.
3. **Klassenordner** `<Fach>/Klasse-<Bez>/` anlegen (für Kurse: `Kurs-<Bez>/`). Existiert er schon: abbrechen und Bescheid geben.
4. Kurz nachfragen (eine Frage nach der anderen, alles optional, „weiß nicht“ ist okay):
   - Schulart und Niveau (G/M/E) bzw. Kursart
   - Wochenstunden, Doppelstunden
   - Größe der Lerngruppe, Förderbedarfe auf Klassenebene, DaZ, Leistungsspitze (**keine Namen!**)
   - Was methodisch gut/schlecht funktioniert
5. Dateien anlegen:
   - `CLAUDE.md` – Klassenprofil (Muster: `Mathematik/Klasse-7b/CLAUDE.md` bzw. ein bestehendes Profil)
   - `Stoffverteilungsplan.md` – Tabellenkopf; anbieten, ihn jetzt nach Bildungsplan und `_Schule/Jahresplan-*.md` zu entwerfen
   - `Logbuch.md` – Überschrift und Formatzeile
   - leere Unterordner: `Einheiten/`, `Klassenarbeiten/` (mit `.gitkeep` oder kurzer `LIESMICH.md`)
6. Abschluss: angelegte Struktur als Baum zeigen und den Startbefehl nennen:
   „Zum Arbeiten in diesem Ordner Claude starten, z. B. dann `/schule:einheit …` oder `/schule:stunde …`.“
