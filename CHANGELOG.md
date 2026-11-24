# Änderungen

Neueste Version oben. Bei jeder Änderung an den Befehlen: Version in `plugins/kreide/.claude-plugin/plugin.json` erhöhen, hier eintragen **und** den Abschnitt in `plugins/kreide/skills/neuigkeiten/SKILL.md` aktualisieren.

## 1.3.0 – 2026-11-25
- **Qualitätsregeln** in allen Befehlen: nichts erfinden, Herkunft kennzeichnen (Beleg – anerkannt – Vorschlag – [prüfen]), bei Unklarheiten zuerst nachfragen (max. 3 Fragen), verständlich schreiben, Lösungen nachrechnen, „Bitte prüfen:“ am Ende
- Neu: `unterricht/qualitaet.md` und `unterricht/evidenz.md` (gut belegte Prinzipien mit Quellen)
- Neue Regel `qualitaet.md` für jedes Gespräch (wird mit `/einrichten` installiert)
- Lizenz: Inhalte CC BY-NC-SA 4.0 (kostenlos für Lehrkräfte, Ausnahme ohne SA auf Anfrage), kommerzielle Lizenz und Kooperationen (`KOMMERZIELL.md`), Skripte MIT, Name und Logo geschützt (`MARKE.md`), Beitragsvereinbarung

## 1.2.0 – 2026-11-25
- **Bundesweit**: Länderprofile für alle 16 Bundesländer (`skills/unterricht/laender/`), Skill `unterricht-bw` → `unterricht`
- Neu: `_Schule/Landesvorgaben.md` für eigene, geprüfte Angaben (Vorrang vor dem Länderprofil)
- `/einrichten` fragt das Bundesland ab
- Umbenannt: `wiederholungsarbeit` → `kurztest`, `gfs` → `praesentation`, `_Bildungsplan/` → `_Lehrplan/`
- Marketplace heißt jetzt `kreide` (Installation: `kreide@kreide`)

## 1.1.0 – 2026-11-24
- Neu: automatische Updates über den Plugin-Marketplace `kreide`
- Neu: `/kreide:neuigkeiten` zeigt, was sich geändert hat
- Neu: `/kreide:neue-klasse`, `/kreide:sichern`
- `/einrichten` installiert das Plugin und richtet Zugriff und Datenschutz-Sperren ein
- Neuer Name: **Kreide** (Plugin `kreide`, Marketplace `kreide`), Befehle heißen `/kreide:…` (z. B. `/kreide:klassenarbeit`)
- Logo in `assets/`

## 1.0.0 – 2026-11-24
- Erste Version: 22 Befehle, Rules für Datenschutz, Klassenarbeiten und Arbeitsblätter, Vorlagen für Schule, Fach und Klasse
