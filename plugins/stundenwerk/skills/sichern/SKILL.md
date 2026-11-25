---
name: sichern
description: Erstellt eine datierte Sicherungskopie (ZIP) des gesamten Schulordners und räumt alte Sicherungen auf – einfacher Ersatz für Git, ohne Vorkenntnisse.
argument-hint: "[optional: Zielordner für die Sicherung]"
disable-model-invocation: true
---

> **Qualität (verbindlich):** Nichts erfinden – keine Studien, Zahlen, Lehrplan-Nummern, Paragrafen oder Quellen ohne Beleg; Unsicheres offen sagen und mit „[prüfen]“ kennzeichnen. Fehlen Angaben, die das Ergebnis inhaltlich verändern, oder widersprechen sich Anfrage und Dateien: **zuerst nachfragen** (max. 3 kurze Fragen), statt zu raten. Pädagogische Begründungen nur mit gut belegten Prinzipien (Skill `stundenwerk:unterricht`, `evidenz.md`). Verständlich für die Zielgruppe schreiben, Lösungen nachrechnen, am Ende „Bitte prüfen:“ mit offenen Punkten. Sprache: Schülermaterial passend zur Klassenstufe nach `sprache.md`, Texte für Erwachsene nach `schreibstil.md`. Ausführlich: `qualitaet.md` im Skill `stundenwerk:unterricht`.

Erstelle eine Sicherung des Schulordners. Ziel: $ARGUMENTS (ohne Angabe: `Backup/` im Schulordner)

Vorgehen:
1. Schulordner finden (der Ordner mit `_Schule/`, aktuell oder übergeordnet).
2. ZIP-Datei erstellen: `Schule_JJJJ-MM-TT_HHMM.zip`
   - macOS/Linux: `zip -r` ; Windows: PowerShell `Compress-Archive`
   - **Ausschließen:** den Backup-Ordner selbst, `.git/`, Ordner `Schuelerdaten/`, `Noten/`, Dateien `*Notenliste*`, `Foerderplan*`
3. Größe und Anzahl der Dateien melden.
4. Aufräumen: Wenn mehr als 10 Sicherungen im Zielordner liegen, die ältesten auflisten und **nach Bestätigung** löschen. Ist Löschen nicht erlaubt: Bescheid geben, die Lehrkraft löscht selbst.
5. In einfacher Sprache erinnern:
   - Eine Sicherung im selben Ordner schützt nicht vor Geräteverlust. Ab und zu die neueste ZIP-Datei auf einen USB-Stick oder einen von der Schule erlaubten Speicher kopieren.
   - Wiederherstellen: ZIP-Datei doppelklicken bzw. entpacken und den gewünschten Ordner oder die Datei zurückkopieren.

Nie Dateien außerhalb des Zielordners löschen oder verändern.

## Schreibstil (verbindlich)
Texte für Eltern, Kollegium oder die Lehrkraft nach `schreibstil.md` (Skill `stundenwerk:unterricht`) schreiben: Ergebnis zuerst, alle Fakten (Was? Wann? Wo? Wer? Was ist zu tun, bis wann?), aktiv formulieren, keine Floskeln und keine aufgeblasenen Wörter, Fettdruck nur für Fristen, Beträge und Treffpunkte. Vor der Ausgabe die Prüfschritte aus `schreibstil.md` durchgehen.
