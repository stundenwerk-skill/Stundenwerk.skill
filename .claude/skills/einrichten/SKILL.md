---
name: einrichten
description: Ersteinrichtung bzw. Aktualisierung der Lehrkraft-Vorlage – installiert Skills und Regeln dauerhaft, richtet Zugriff und Datenschutz-Sperren ein, füllt die Vorlagen per kurzem Interview und legt Fächer und Klassen an. Nur auf ausdrücklichen Aufruf.
disable-model-invocation: true
---

Du richtest Claude Code für eine Lehrkraft ein, die **keine technischen Vorkenntnisse** hat. Sprich einfach, freundlich, ohne Fachjargon. Erkläre jeden Schritt in einem Satz, bevor du ihn ausführst. Frage vor jedem Überschreiben vorhandener Dateien.

Dieser Ordner (das aktuelle Arbeitsverzeichnis) ist der **Schulordner**. Prüfe zuerst, dass hier `.claude/skills/` und `_Schule/` existieren. Wenn nicht: erklären, dass `/einrichten` im entpackten Vorlagen-Ordner gestartet werden muss, und abbrechen.

## Schritt 1 – System erkennen
- Betriebssystem und Home-Verzeichnis ermitteln.
- Absoluten Pfad des Schulordners ermitteln.
- Hinweis geben, falls der Ordner in einem Cloud-Sync-Ordner (iCloud, OneDrive, Dropbox, Google Drive) liegt: Das ist nur zulässig, wenn die Schule es erlaubt.

## Schritt 2 – Skills und Regeln dauerhaft installieren
- Alle Ordner aus `./.claude/skills/` nach `~/.claude/skills/` kopieren (Windows: `%USERPROFILE%\.claude\skills\`).
- Alle Dateien aus `./.claude/rules/` nach `~/.claude/rules/` kopieren.
- Gibt es dort bereits gleichnamige Skills/Regeln: auflisten und fragen „ersetzen (empfohlen bei Aktualisierung) oder behalten?“.
- Erklären: Dadurch funktionieren die Befehle in jedem Unterordner, ohne Git.

## Schritt 3 – Zugriff und Datenschutz-Sperren
Persönliche Einstellungsdatei `~/.claude/settings.json`:
- Existiert sie, einlesen; vorhandene Einstellungen **unbedingt behalten** und nur ergänzen.
- Ergänzen unter `permissions`:
  - `additionalDirectories`: absoluter Pfad des Schulordners
  - `deny`: Leseverbote für `Schuelerdaten/`, `Noten/`, `*Notenliste*`, `Foerderplan*` im Schulordner.
    - Liegt der Schulordner im Home-Verzeichnis: Muster mit `~/…` (z. B. `Read(~/Documents/Schule/**/Schuelerdaten/**)` – den echten Pfad verwenden; der Ordner „Dokumente“ heißt technisch `Documents`)
    - sonst mit absolutem Pfad und doppeltem Schrägstrich am Anfang (`Read(//Pfad/zum/Schule/**/Schuelerdaten/**)`)
- Vorlage: `einrichtung/user-settings-beispiel.json`.
- Vor dem Schreiben die geplante Datei zeigen und Bestätigung einholen. Danach JSON auf Gültigkeit prüfen.

## Schritt 4 – Kurzes Interview (eine Frage nach der anderen, max. 8)
1. Schulart (Grundschule, HS/WRS, Realschule, Gemeinschaftsschule, Gymnasium, SBBZ mit Förderschwerpunkt, berufliche Schule)
2. Schulort und Name der Schule (optional, für Briefköpfe)
3. Fächer
4. Lerngruppen je Fach (z. B. „Mathe: 7b, 9a; Physik: 9a“)
5. Klassenleitung (falls ja: welche Klasse)
6. Lehrwerke je Fach (optional, „weiß nicht“ ist okay)
7. Notenschlüssel der Fachschaft (optional – sonst Platzhalter lassen)
8. Anrede in Material: du / Sie

## Schritt 5 – Vorlagen füllen und Ordner anlegen
- `CLAUDE.md` mit den Antworten ausfüllen (Platzhalter in eckigen Klammern ersetzen, unbekannte stehen lassen).
- `_Schule/Vorlagen/Briefkopf-Elternbrief.md` und `Kopf-Klassenarbeit.md` mit Schulname füllen.
- Für jedes Fach: Ordner nach dem Muster `Mathematik/` anlegen (`CLAUDE.md`, `_Bildungsplan/`, `_Beispiele/`), Fach-CLAUDE.md auf das Fach anpassen (Kompetenzbereiche des Fachs laut Bildungsplan BW, sonst „[prüfen]“).
- Für jede Lerngruppe: wie bei `/neue-klasse` Klassenordner mit Profil, Stoffverteilungsplan, Logbuch und Unterordnern anlegen. Profilangaben, die du nicht kennst, als Platzhalter lassen.
- Bei Klassenleitung: `Klassenleitung-<Klasse>/` mit `Elternbriefe/`, `Ausfluege/`, `Elterngespraeche/Vorlagen/`.
- Beispielordner `Mathematik/Klasse-7b` und `Klassenleitung-7b`: fragen, ob sie gelöscht werden sollen (nur wenn nicht selbst benötigt). Wenn Löschen nicht erlaubt ist: in `_Archiv_Beispiele/` verschieben.

## Schritt 6 – Abschluss
Kurze Zusammenfassung in einfacher Sprache:
- was installiert wurde
- welche Ordner angelegt wurden
- was noch auszufüllen ist (Liste der verbleibenden Platzhalter, wichtigste zuerst: Bildungsplan-Auszüge, Beispiele, Notenschlüssel)
- **Claude Code einmal beenden und neu starten**, dann im Klassenordner testen mit `/einstieg <Thema>`
- Hinweis: `/sichern` regelmäßig nutzen

Bei erneutem Aufruf (Aktualisierung): Schritte 2 und 3 ausführen, Interview nur anbieten, vorhandene ausgefüllte Dateien NICHT überschreiben.
