---
name: sichern
description: Erstellt eine datierte Sicherungskopie (ZIP) des gesamten Schulordners und räumt alte Sicherungen auf – einfacher Ersatz für Git, ohne Vorkenntnisse.
argument-hint: "[optional: Zielordner für die Sicherung]"
disable-model-invocation: true
---

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
