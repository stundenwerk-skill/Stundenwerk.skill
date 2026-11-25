---
name: neuigkeiten
description: Zeigt, was in der aktuellen Version der Schul-Befehle neu ist und ob etwas zu tun ist. Nutzen, wenn die Lehrkraft fragt, was neu ist, was sich geändert hat oder welche Version installiert ist.
---

> **Qualität (verbindlich):** Nichts erfinden – keine Studien, Zahlen, Lehrplan-Nummern, Paragrafen oder Quellen ohne Beleg; Unsicheres offen sagen und mit „[prüfen]“ kennzeichnen. Fehlen Angaben, die das Ergebnis inhaltlich verändern, oder widersprechen sich Anfrage und Dateien: **zuerst nachfragen** (max. 3 kurze Fragen), statt zu raten. Pädagogische Begründungen nur mit gut belegten Prinzipien (Skill `stundenweise:unterricht`, `evidenz.md`). Verständlich für die Zielgruppe schreiben, Lösungen nachrechnen, am Ende „Bitte prüfen:“ mit offenen Punkten. Ausführlich: `qualitaet.md` im Skill `stundenweise:unterricht`.

Zeige der Lehrkraft in einfacher Sprache, was neu ist. Nutze genau die Angaben unten, erfinde nichts dazu.
Danach: Wenn unter „Zu tun“ etwas steht, biete an, es direkt zu erledigen.

## Aktuelle Version: 1.3.0 (25.11.2026)

**Neu: Qualitätsregeln**
- Stundenweise erfindet nichts: keine Studien, Zahlen, Lehrplan-Nummern oder Paragrafen ohne Beleg. Unsicheres wird mit „[prüfen]“ markiert.
- Pädagogische Vorschläge werden mit gut belegten Lernprinzipien begründet (z. B. Abrufübung, verteiltes Üben).
- Fehlen wichtige Angaben, fragt Stundenweise zuerst nach (höchstens 3 kurze Fragen), statt zu raten.
- Am Ende längerer Ergebnisse steht „Bitte prüfen:“ mit den Punkten, die du gegenlesen solltest.

**Zu tun (1.3.0)**
- Damit die Regeln auch in normalen Gesprächen ohne Befehl gelten: neue ZIP laden, im neuen `vorlage`-Ordner `/einrichten` ausführen und bei den Regeln **ersetzen** wählen.

## Version 1.2.0 (25.11.2026)

**Neu: Stundenweise gilt für alle 16 Bundesländer**
- Länderprofile mit Lehrplan-Portal, Schularten, Abschlüssen und Regeln für Leistungsnachweise (z. B. Schulaufgabe in Bayern).
- Eigene, geprüfte Angaben in `_Schule/Landesvorgaben.md` haben Vorrang.
- Umbenannt: `/stundenweise:kurztest` (vorher Wiederholungsarbeit), `/stundenweise:praesentation` (vorher GFS), Ordner `_Lehrplan/` (vorher `_Bildungsplan/`).

**Zu tun (1.2.0)**
- In der `CLAUDE.md` des Schulordners die Zeile `- Bundesland: …` ergänzen, falls sie fehlt.
- Ordner `_Bildungsplan/` in den Fächern in `_Lehrplan/` umbenennen (Claude kann das für dich tun).

## Version 1.1.0 (24.11.2026)

**Neu**
- Die Befehle aktualisieren sich jetzt automatisch, wenn Auto-Update eingeschaltet ist.
- `/stundenweise:neuigkeiten` (dieser Befehl) zeigt Änderungen an.
- `/stundenweise:neue-klasse` legt neue Klassen- oder Kursordner an.
- `/stundenweise:sichern` erstellt eine Sicherungskopie des Schulordners.
- Das Paket heißt jetzt **Stundenweise**. Alle Befehle beginnen mit `stundenweise:`, z. B. `/stundenweise:klassenarbeit`. Tipp: `/` tippen und den Anfang des Namens eingeben.

**Zu tun**
- Falls noch nicht geschehen: Auto-Update einschalten (`/plugin` → Marketplaces → `stundenweise` → Enable auto-update).
- Wer vorher Version 1.0 hatte: Alte Kopien der Befehle in `~/.claude/skills/` entfernen. `/einrichten` im Schulordner bietet das an.

## Frühere Versionen
- 1.0.0 (24.11.2026): erste Version mit 22 Befehlen (nur Baden-Württemberg).
