---
name: neuigkeiten
description: Zeigt, was in der aktuellen Version der Schul-Befehle neu ist und ob etwas zu tun ist. Nutzen, wenn die Lehrkraft fragt, was neu ist, was sich geändert hat oder welche Version installiert ist.
---

> **Qualität (verbindlich):** Nichts erfinden – keine Studien, Zahlen, Lehrplan-Nummern, Paragrafen oder Quellen ohne Beleg; Unsicheres offen sagen und mit „[prüfen]“ kennzeichnen. Fehlen Angaben, die das Ergebnis inhaltlich verändern, oder widersprechen sich Anfrage und Dateien: **zuerst nachfragen** (max. 3 kurze Fragen), statt zu raten. Pädagogische Begründungen nur mit gut belegten Prinzipien (Skill `stundenwerk:unterricht`, `evidenz.md`). Verständlich für die Zielgruppe schreiben, Lösungen nachrechnen, am Ende „Bitte prüfen:“ mit offenen Punkten. Sprache: Schülermaterial passend zur Klassenstufe nach `sprache.md`, Texte für Erwachsene nach `schreibstil.md`. Ausführlich: `qualitaet.md` im Skill `stundenwerk:unterricht`.

Zeige der Lehrkraft in einfacher Sprache, was neu ist. Nutze genau die Angaben unten, erfinde nichts dazu.
Danach: Wenn unter „Zu tun“ etwas steht, biete an, es direkt zu erledigen.

## Aktuelle Version: 1.3.1 (25.11.2026)

**Neu: Sprache passend zur Klasse**
- Arbeitsblätter, Klassenarbeiten und Tests richten sich jetzt nach Klassenstufe, Niveau und Sprachstand deiner Klasse: kurze, klare Arbeitsaufträge mit dem Operator am Anfang, ein Auftrag pro Satz.
- Neue Fachbegriffe werden beim ersten Mal erklärt und danach immer gleich benannt. Bei neuen Themen gibt es einen Wortspeicher.
- Vereinfacht wird nur die Sprache, nicht der Fachinhalt.
- Nach jedem Material steht im Chat eine Zeile, für welche Klassenstufe die Sprache gedacht ist und welche Fachbegriffe neu sind.
- Elternbriefe und andere Texte für Erwachsene sind knapper und klarer, ohne Floskeln.

**Zu tun (1.3.1)**
- Die Regeln für normale Gespräche wurden angepasst. Wenn du sie auf dem neuesten Stand willst: neue ZIP laden, im neuen `vorlage`-Ordner `/einrichten` ausführen und bei den Regeln **ersetzen** wählen. Die Befehle selbst aktualisieren sich automatisch.

## Version 1.3.0 (25.11.2026)

**Neu: Qualitätsregeln**
- Stundenwerk erfindet nichts: keine Studien, Zahlen, Lehrplan-Nummern oder Paragrafen ohne Beleg. Unsicheres wird mit „[prüfen]“ markiert.
- Pädagogische Vorschläge werden mit gut belegten Lernprinzipien begründet (z. B. Abrufübung, verteiltes Üben).
- Fehlen wichtige Angaben, fragt Stundenwerk zuerst nach (höchstens 3 kurze Fragen), statt zu raten.
- Am Ende längerer Ergebnisse steht „Bitte prüfen:“ mit den Punkten, die du gegenlesen solltest.

**Zu tun (1.3.0)**
- Damit die Regeln auch in normalen Gesprächen ohne Befehl gelten: neue ZIP laden, im neuen `vorlage`-Ordner `/einrichten` ausführen und bei den Regeln **ersetzen** wählen.

## Version 1.2.0 (25.11.2026)

**Neu: Stundenwerk gilt für alle 16 Bundesländer**
- Länderprofile mit Lehrplan-Portal, Schularten, Abschlüssen und Regeln für Leistungsnachweise (z. B. Schulaufgabe in Bayern).
- Eigene, geprüfte Angaben in `_Schule/Landesvorgaben.md` haben Vorrang.
- Umbenannt: `/stundenwerk:kurztest` (vorher Wiederholungsarbeit), `/stundenwerk:praesentation` (vorher GFS), Ordner `_Lehrplan/` (vorher `_Bildungsplan/`).

**Zu tun (1.2.0)**
- In der `CLAUDE.md` des Schulordners die Zeile `- Bundesland: …` ergänzen, falls sie fehlt.
- Ordner `_Bildungsplan/` in den Fächern in `_Lehrplan/` umbenennen (Claude kann das für dich tun).

## Version 1.1.0 (24.11.2026)

**Neu**
- Die Befehle aktualisieren sich jetzt automatisch, wenn Auto-Update eingeschaltet ist.
- `/stundenwerk:neuigkeiten` (dieser Befehl) zeigt Änderungen an.
- `/stundenwerk:neue-klasse` legt neue Klassen- oder Kursordner an.
- `/stundenwerk:sichern` erstellt eine Sicherungskopie des Schulordners.
- Das Paket heißt jetzt **Stundenwerk**. Alle Befehle beginnen mit `stundenwerk:`, z. B. `/stundenwerk:klassenarbeit`. Tipp: `/` tippen und den Anfang des Namens eingeben.

**Zu tun**
- Falls noch nicht geschehen: Auto-Update einschalten (`/plugin` → Marketplaces → `stundenwerk` → Enable auto-update).
- Wer vorher Version 1.0 hatte: Alte Kopien der Befehle in `~/.claude/skills/` entfernen. `/einrichten` im Schulordner bietet das an.

## Frühere Versionen
- 1.0.0 (24.11.2026): erste Version mit 22 Befehlen (nur Baden-Württemberg).

## Schreibstil (verbindlich)
Texte für Eltern, Kollegium oder die Lehrkraft nach `schreibstil.md` (Skill `stundenwerk:unterricht`) schreiben: Ergebnis zuerst, alle Fakten (Was? Wann? Wo? Wer? Was ist zu tun, bis wann?), aktiv formulieren, keine Floskeln und keine aufgeblasenen Wörter, Fettdruck nur für Fristen, Beträge und Treffpunkte. Vor der Ausgabe die Prüfschritte aus `schreibstil.md` durchgehen.
