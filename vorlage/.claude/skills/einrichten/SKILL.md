---
name: einrichten
description: Ersteinrichtung bzw. Aktualisierung für Lehrkräfte – installiert das Plugin „Kreide“ mit automatischen Updates, die Regeln, Zugriff und Datenschutz-Sperren, füllt die Vorlagen per kurzem Interview und legt Fächer und Klassen an. Nur auf ausdrücklichen Aufruf.
disable-model-invocation: true
---

Du richtest Claude Code für eine Lehrkraft ein, die **keine technischen Vorkenntnisse** hat. Sprich einfach und freundlich, ohne Fachjargon. Erkläre jeden Schritt in einem Satz, bevor du ihn ausführst. Frage vor jedem Überschreiben vorhandener Dateien.

Der aktuelle Ordner ist der **Schulordner**. Prüfe zuerst, dass hier `_Schule/` und `einrichtung/` existieren. Wenn nicht: erklären, dass `/einrichten` im Schulordner (der umbenannte Ordner `vorlage`) gestartet werden muss, und abbrechen.

## Schritt 1 – System prüfen
- Betriebssystem, Home-Verzeichnis und absoluten Pfad des Schulordners ermitteln.
- Liegt der Ordner in einem Cloud-Sync-Ordner (iCloud, OneDrive, Dropbox, Google Drive)? Dann darauf hinweisen: nur, wenn die Schule es erlaubt.
- Prüfen, ob `git` installiert ist (`git --version`). Wird für automatische Updates gebraucht.
  - Fehlt es: kurz erklären, dass es ein kleines Hilfsprogramm ist, das nur im Hintergrund für Updates genutzt wird.
    - macOS: `xcode-select --install` anbieten (öffnet ein Installationsfenster, „Installieren“ klicken).
    - Windows: Download von https://git-scm.com/download/win nennen, Installation mit Standardoptionen, danach Claude neu starten und `/einrichten` erneut aufrufen.
  - Will die Lehrkraft das nicht: mit **Schritt 2b** weitermachen.

## Schritt 2a – Plugin „Kreide“ installieren (mit Updates)
1. Quelle aus `einrichtung/marketplace-quelle.txt` lesen (Format `name/repo` oder eine URL). Steht dort noch `DEIN-GITHUB-NAME`: nach der richtigen Quelle fragen (bekommt man von der Person, die das Paket verteilt) oder Schritt 2b nehmen.
2. Ausführen:
   - `claude plugin marketplace add <Quelle>`
   - `claude plugin install kreide@kreide`
   Schlägt das Hinzufügen fehl, weil kein GitHub-Schlüssel vorhanden ist, einmal mit gesetzter Umgebungsvariable `CLAUDE_CODE_PLUGIN_PREFER_HTTPS=1` wiederholen.
3. Prüfen mit `claude plugin list`: `kreide@kreide` muss als aktiviert erscheinen.
4. **Auto-Update einschalten**: Das kann nur die Lehrkraft selbst. Anleitung geben:
   „Tippe nach dem Neustart `/plugin`, wähle **Marketplaces** → **kreide** → **Enable auto-update**.“
5. Alte Kopien aufräumen: Liegen in `~/.claude/skills/` Ordner mit denselben Namen wie die Plugin-Befehle (z. B. `klassenarbeit`, `stunde` – von Version 1.0), auflisten und anbieten, sie zu entfernen. Ist Löschen nicht erlaubt: in `~/.claude/skills/_alt/` verschieben.

## Schritt 2b – Ohne git (keine automatischen Updates)
- Hat die Lehrkraft das komplette Paket (ZIP) vorliegen: den Ordner `plugins/kreide/skills/` aus dem Paket nach `~/.claude/skills/` kopieren. Die Befehle heißen dann ohne Vorsilbe (`/klassenarbeit` statt `/kreide:klassenarbeit`).
- Deutlich sagen: Updates gibt es dann nur, wenn man eine neue ZIP holt und `/einrichten` erneut ausführt.

## Schritt 3 – Regeln installieren
- Alle Dateien aus `./.claude/rules/` nach `~/.claude/rules/` kopieren (Windows: `%USERPROFILE%\.claude\rules\`). Bei gleichnamigen Dateien fragen: „ersetzen (empfohlen bei Aktualisierung) oder behalten?“
- Erklären: Die Regeln sorgen für Datenschutz und einheitliche Klassenarbeiten und Arbeitsblätter, in jedem Ordner.

## Schritt 4 – Zugriff und Datenschutz-Sperren
Persönliche Einstellungsdatei `~/.claude/settings.json`:
- Existiert sie, einlesen und vorhandene Einstellungen **unbedingt behalten**, nur ergänzen.
- Unter `permissions` ergänzen:
  - `additionalDirectories`: absoluter Pfad des Schulordners
  - `deny`: Leseverbote für `Schuelerdaten/`, `Noten/`, `*Notenliste*`, `Foerderplan*` im Schulordner
    - Liegt der Schulordner im Home-Verzeichnis: Muster mit `~/…`, z. B. `Read(~/Documents/Schule/**/Schuelerdaten/**)`. Den echten Pfad verwenden; „Dokumente“ heißt technisch `Documents`.
    - sonst absoluter Pfad mit doppeltem Schrägstrich am Anfang: `Read(//Pfad/zum/Schule/**/Schuelerdaten/**)`
- Vorlage: `einrichtung/user-settings-beispiel.json`
- Vor dem Schreiben die geplante Datei zeigen und Bestätigung einholen. Danach prüfen, ob das JSON gültig ist.

## Schritt 5 – Kurzes Interview (eine Frage nach der anderen, max. 9)
1. **Bundesland** (eines der 16 Länder)
2. Schulart – Auswahl passend zum Land anbieten (Schularten stehen im Länderprofil des Skills `kreide:unterricht`, z. B. Mittelschule in Bayern, Stadtteilschule in Hamburg, Oberschule in Sachsen), dazu Förderschule und berufliche Schule
3. Name und Ort der Schule (optional, für Briefköpfe)
4. Fächer
5. Lerngruppen je Fach (z. B. „Mathe: 7b, 9a; Physik: 9a“)
6. Klassenleitung (falls ja: welche Klasse)
7. Lehrwerke je Fach (optional, „weiß nicht“ ist okay)
8. Notenschlüssel der Fachschaft (optional, sonst Platzhalter lassen)
9. Anrede in Material: du / Sie

Wird `/einrichten` erneut aufgerufen und sind die Vorlagen schon ausgefüllt: Interview nur anbieten, ausgefüllte Dateien NICHT überschreiben.

## Schritt 6 – Vorlagen füllen und Ordner anlegen
- `CLAUDE.md` mit den Antworten ausfüllen (Platzhalter in eckigen Klammern ersetzen, unbekannte stehen lassen). Die Zeile **„Bundesland:“** muss gefüllt sein.
- `_Schule/Landesvorgaben.md`: Bundesland eintragen. Anbieten (optional, nur mit Websuche): die mit „[prüfen]“ markierten Punkte des Länderprofils auf offiziellen Seiten des Landes nachzuprüfen und die Ergebnisse **mit Quelle** dort einzutragen.
- `_Schule/Vorlagen/Briefkopf-Elternbrief.md` und `Kopf-Klassenarbeit.md` mit dem Schulnamen füllen.
- Für jedes Fach: Ordner nach dem Muster `Mathematik/` anlegen (`CLAUDE.md`, `_Lehrplan/`, `_Beispiele/`) und die Fach-CLAUDE.md auf das Fach anpassen (Kompetenzbereiche laut Lehrplan des Landes, sonst „[prüfen]“).
- Für jede Lerngruppe: Klassenordner mit Profil, `Stoffverteilungsplan.md`, `Logbuch.md`, `Einheiten/`, `Klassenarbeiten/` (wie bei `/kreide:neue-klasse`). Unbekanntes als Platzhalter lassen.
- Bei Klassenleitung: `Klassenleitung-<Klasse>/` mit `Elternbriefe/`, `Ausfluege/`, `Elterngespraeche/Vorlagen/`.
- Beispielordner `Mathematik/Klasse-7b` und `Klassenleitung-7b`: fragen, ob sie entfernt werden sollen. Ist Löschen nicht erlaubt: nach `_Archiv_Beispiele/` verschieben.

## Schritt 7 – Abschluss
Kurze Zusammenfassung in einfacher Sprache:
- was installiert wurde (Plugin mit oder ohne Updates, Regeln, Einstellungen)
- welche Ordner angelegt wurden
- was noch auszufüllen ist, wichtigstes zuerst: Lehrplan-Auszüge, eigene Beispiele, Notenschlüssel, geprüfte Landesvorgaben
- **Claude beenden (`/exit`) und neu starten**, dann:
  1. `/plugin` → Marketplaces → kreide → **Enable auto-update** (falls Schritt 2a)
  2. im Klassenordner testen: `/kreide:einstieg <Thema>`
- Hinweise: `/kreide:neuigkeiten` zeigt Änderungen, `/kreide:sichern` regelmäßig nutzen
