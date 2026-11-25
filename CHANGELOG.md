# Änderungen

Neueste Version oben. Bei jeder Änderung an den Befehlen: Version in `plugins/stundenwerk/.claude-plugin/plugin.json` erhöhen, hier eintragen **und** den Abschnitt in `plugins/stundenwerk/skills/neuigkeiten/SKILL.md` aktualisieren.

## 1.3.1 – 2026-11-25
- **Sprache passend zur Klassenstufe:** neue Datei `unterricht/sprache.md` mit Richtwerten von Klasse 1 bis zur Oberstufe, Regeln für Arbeitsaufträge, Operatoren in Schülersprache, Aufbau von Fach- und Bildungssprache, Unterschied Einfache/Leichte Sprache (DIN 8581-1, DIN SPEC 33429), Lesbarkeits-Abschätzung (Wiener Sachtextformel) und Sprach-Check
- **Klarer Schreibstil:** neue Datei `unterricht/schreibstil.md` für Texte an Eltern und Kollegium (ohne Floskeln, aufgeblasene Wörter und typische KI-Muster)
- Alle Befehle mit verbindlichem Abschnitt „Sprache und Aufgabenstellung“ bzw. „Schreibstil“
- Klarere Anweisungen in `stunde` (Aufbau des Arbeitsblatts, Stundenziel in Schülersprache), `klassenarbeit` (Kopf, Version B, nur eingeführte Begriffe, Zeitschätzung), `kurztest`, `differenzieren` (Sprache je Niveau, DaZ-Hilfen), `tafelbild`, `vertretung`, `berichtigung`, `elternbrief`
- `evidenz.md` um Gestaltung von Text und Bild (Mayer), Scaffolding (Gibbons, Leisen), Bildungssprache (Gogolin & Lange) und Verständlichkeit (Langer, Schulz von Thun & Tausch) ergänzt
- Regeln `qualitaet.md` und `arbeitsblatt-layout.md` in der Vorlage angepasst

## 1.3.0 – 2026-11-25
- **Neuer Name: Stundenwerk** (Arbeitstitel waren „Kreide“ und „Klassenkompass“; beide geändert, weil es diese Namen schon gibt). Befehle: `/stundenwerk:…`, Installation: `stundenwerk@stundenwerk`
- **Qualitätsregeln** in allen Befehlen: nichts erfinden, Herkunft kennzeichnen (Beleg – anerkannt – Vorschlag – [prüfen]), bei Unklarheiten zuerst nachfragen (max. 3 Fragen), verständlich schreiben, Lösungen nachrechnen, „Bitte prüfen:“ am Ende
- Neu: `unterricht/qualitaet.md` und `unterricht/evidenz.md` (gut belegte Prinzipien mit Quellen)
- Neue Regel `qualitaet.md` für jedes Gespräch (wird mit `/einrichten` installiert)
- Lizenz: Inhalte CC BY-NC-SA 4.0 (kostenlos für Lehrkräfte, Ausnahme ohne SA auf Anfrage), kommerzielle Lizenz und Kooperationen (`KOMMERZIELL.md`), Skripte MIT, Name und Logo geschützt (`MARKE.md`), Beitragsvereinbarung

## 1.2.0 – 2026-11-25
- **Bundesweit**: Länderprofile für alle 16 Bundesländer (`skills/unterricht/laender/`), Skill `unterricht-bw` → `unterricht`
- Neu: `_Schule/Landesvorgaben.md` für eigene, geprüfte Angaben (Vorrang vor dem Länderprofil)
- `/einrichten` fragt das Bundesland ab
- Umbenannt: `wiederholungsarbeit` → `kurztest`, `gfs` → `praesentation`, `_Bildungsplan/` → `_Lehrplan/`
- Marketplace heißt jetzt `stundenwerk` (Installation: `stundenwerk@stundenwerk`)

## 1.1.0 – 2026-11-24
- Neu: automatische Updates über den Plugin-Marketplace `stundenwerk`
- Neu: `/stundenwerk:neuigkeiten` zeigt, was sich geändert hat
- Neu: `/stundenwerk:neue-klasse`, `/stundenwerk:sichern`
- `/einrichten` installiert das Plugin und richtet Zugriff und Datenschutz-Sperren ein
- Neuer Name: **Stundenwerk** (Plugin `stundenwerk`, Marketplace `stundenwerk`), Befehle heißen `/stundenwerk:…` (z. B. `/stundenwerk:klassenarbeit`)
- Logo in `assets/`

## 1.0.0 – 2026-11-24
- Erste Version: 22 Befehle, Rules für Datenschutz, Klassenarbeiten und Arbeitsblätter, Vorlagen für Schule, Fach und Klasse
