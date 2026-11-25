<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="assets/logo-wordmark-dark.svg">
    <img src="assets/logo-wordmark.svg" alt="Stundenwerk, KI-Kollegium für Lehrkräfte" width="520">
  </picture>
</p>

<h1 align="center">Stundenwerk</h1>

<p align="center"><b>Dein KI-Kollegium für den Schulalltag, in allen 16 Bundesländern.</b><br>
Damit die Vorbereitung am Schreibtisch schneller geht.</p>

<p align="center">
  <img alt="Version 1.3.1" src="https://img.shields.io/badge/version-1.3.1-2F4A3A">
  <img alt="Claude Code Plugin" src="https://img.shields.io/badge/Claude%20Code-Plugin-F2C14E">
  <img alt="16 Bundesländer" src="https://img.shields.io/badge/Bundesl%C3%A4nder-16-2F4A3A">
  <img alt="25 Befehle" src="https://img.shields.io/badge/Befehle-25-2F4A3A">
  <img alt="Datenschutz eingebaut" src="https://img.shields.io/badge/Datenschutz-eingebaut-2F4A3A">
  <img alt="Lizenz CC BY-NC-SA 4.0" src="https://img.shields.io/badge/Lizenz-CC%20BY--NC--SA%204.0-2F4A3A">
  <img alt="Evidenzbasiert" src="https://img.shields.io/badge/evidenzbasiert-nichts%20erfunden-F2C14E">
</p>

<p align="center"><i>KI für Lehrerinnen und Lehrer · Unterrichtsvorbereitung · Klassenarbeiten mit Erwartungshorizont · Differenzierung · Vertretungsstunden · Elternbriefe · Lehrplanbezug für alle Bundesländer</i></p>

Stundenwerk ist ein Plugin für Claude Code. Es liest deine Fächer, Klassen, Stoffverteilungspläne und Schulvorgaben und erstellt daraus Klassenarbeiten, Unterrichtsstunden, differenziertes Material, Elternbriefe und mehr. Es gilt für alle Bundesländer, Schularten und Fächer. Programmieren musst du dafür nicht, und neue Versionen kommen automatisch.

---

## Inhalt

0. [Was ist in diesem Paket?](#0-was-ist-in-diesem-paket)
1. [So funktioniert Stundenwerk](#1-so-funktioniert-stundenwerk)
   - [Qualitätsregeln](#1a-qualitätsregeln)
2. [Einrichtung in 15 Minuten](#2-einrichtung-in-15-minuten)
   - [In der Claude-Desktop-App, ohne Konsole](#einrichtung-in-der-claude-desktop-app-ohne-konsole)
   - [Mit dem Terminal und der Ordnervorlage](#einrichtung-mit-dem-terminal-und-der-ordnervorlage)
3. [Updates und Neuigkeiten](#3-updates-und-neuigkeiten)
4. [Ordnerstruktur](#4-ordnerstruktur)
5. [Die drei CLAUDE.md-Ebenen](#5-die-drei-claudemd-ebenen)
6. [Rules: Regeln für bestimmte Ordner](#6-rules-regeln-für-bestimmte-ordner)
7. [Befehlsreferenz](#7-befehlsreferenz)
8. [Arbeitsabläufe: Befehle kombinieren](#8-arbeitsabläufe-befehle-kombinieren)
9. [Material aufbereiten: Lehrplan, Stoffverteilung, Logbuch](#9-material-aufbereiten)
10. [Datenschutz](#10-datenschutz)
11. [Befehle anpassen und eigene schreiben](#11-befehle-anpassen-und-eigene-schreiben)
12. [Tipps für bessere Ergebnisse](#12-tipps-für-bessere-ergebnisse)
13. [Häufige Probleme](#13-häufige-probleme)
14. [Checkliste](#14-checkliste)
- [Lizenz, Name und Logo](#lizenz-name-und-logo)
- [Anhang A: Terminal-Mini-Kurs](#anhang-a-terminal-mini-kurs)
- [Anhang B: Pflege, Versionen, Verteilung](#anhang-b-pflege-versionen-verteilung)

---

## 0. Was ist in diesem Paket?

| Teil | Was es ist | Für wen |
|---|---|---|
| `vorlage/` | Dein künftiger Schulordner: Vorlagen für dich, deine Fächer und Klassen, Regeln, Datenschutz-Einstellungen und der Befehl `/einrichten` | Lehrkräfte; wird in `Schule` umbenannt |
| `plugins/stundenwerk/` | Das Plugin mit 25 Befehlen (`/stundenwerk:stunde`, `/stundenwerk:klassenarbeit` …). `/einrichten` installiert es, danach aktualisiert es sich selbst | wird installiert, nicht bearbeitet |
| `.claude-plugin/marketplace.json` | Katalog, über den Claude Code das Plugin findet und Updates holt | Verantwortliche |
| `CHANGELOG.md` | alle Änderungen je Version | alle |
| `ROADMAP.md` | geplante Versionen und Befehle | alle |
| `DATENSCHUTZ.md` | Datenschutzerklärung des Plugins | alle |
| `README.md` | diese Anleitung | alle |

---

## 1. So funktioniert Stundenwerk

Stundenwerk hat zwei Teile:

| Teil | Wo | Wer ändert ihn |
|---|---|---|
| Dein Wissen: Schule, Fächer, Klassen, Logbuch, Stoffverteilung | Schulordner (`CLAUDE.md`-Dateien und deine Dateien) | du |
| Die Befehle: wie eine Klassenarbeit, Stunde oder Vertretung entsteht | Plugin `stundenwerk` | Updates, automatisch |

Claude Code liest beim Start die `CLAUDE.md`-Dateien des Ordners, in dem du startest, und die aller übergeordneten Ordner. Startest du in `Mathematik/Klasse-7b`, kennt Claude also drei Ebenen:

| Ebene | Datei | Inhalt |
|---|---|---|
| Du und deine Schule | `Schule/CLAUDE.md` | Schulart, Fächer, Arbeitsweise, Datenschutz |
| Fach | `Schule/Mathematik/CLAUDE.md` | Lehrwerk, Fachschaftsbeschlüsse, Stil |
| Klasse | `Schule/Mathematik/Klasse-7b/CLAUDE.md` | anonymes Klassenprofil, Niveau, Besonderheiten |

Du tippst nur:

```text
/stundenwerk:klassenarbeit Lineare Funktionen 45
```

Claude liest dann Logbuch, Stoffverteilungsplan, Lehrplan-Auszug und deine Beispiele und legt die fertigen Dateien im passenden Ordner ab. Du kannst auch einfach schreiben: *„Mach mir eine Klassenarbeit zu linearen Funktionen, 45 Minuten.“* Claude wählt den Befehl dann selbst.

> Tipp: Tippe `/` und die ersten Buchstaben, z. B. `/stund`. Claude zeigt dir die passenden Befehle zur Auswahl.

---

## 1a. Qualitätsregeln

Jeder Befehl arbeitet nach denselben Regeln (`qualitaet.md`):

| Regel | Was das für dich heißt |
|---|---|
| Nichts erfinden | Keine ausgedachten Studien, Zahlen, Lehrplan-Nummern, Paragrafen, Links oder Buchseiten. Was Stundenwerk nicht sicher weiß, sagt es und markiert es mit „[prüfen]“. |
| Herkunft kennzeichnen | Du siehst, worauf eine Aussage beruht: Beleg (mit Quelle), fachlich anerkannt, Vorschlag oder Erfahrungswert, [prüfen]. |
| Mit Forschung begründen | Methodische Vorschläge stützen sich auf gut belegte Lernforschung, etwa Abrufübung, verteiltes Üben, kognitive Belastung, Lösungsbeispiele und formatives Feedback (Quellen in `evidenz.md`). Schlecht belegte Ideen wie „Lerntypen“ dienen nicht als Begründung. |
| Erst fragen, dann machen | Fehlen Angaben, die das Ergebnis verändern (Niveau, Thema, Dauer), oder passen Anfrage und Logbuch nicht zusammen, fragt Stundenwerk zuerst nach. Es stellt höchstens 3 kurze Fragen, oft mit Antwortvorschlägen, und fragt nichts, was schon in deinen Dateien steht. |
| Sprache passend zur Klasse | Schülermaterial richtet sich nach Klassenstufe, Niveau und Sprachstand: Operator am Satzanfang, ein Auftrag pro Satz, neue Fachbegriffe werden erklärt und danach gleich benannt. Vereinfacht wird nur die Sprache, nicht der Fachinhalt (Regeln in `sprache.md`, gestützt auf Verständlichkeits- und Sprachbildungsforschung). |
| Klar schreiben | Texte für Eltern und Kollegium bringen das Ergebnis zuerst und alle Fakten, ohne Floskeln und aufgeblasene Wörter (`schreibstil.md`). |
| Nachrechnen | Lösungen und Punktsummen werden geprüft. |
| „Bitte prüfen:“ | Am Ende längerer Ergebnisse stehen die Punkte, die du gegenlesen solltest. |

Keine KI arbeitet fehlerfrei. Die Regeln senken das Risiko und machen Unsicherheiten sichtbar, die fachliche Prüfung und die Verantwortung bleiben aber bei dir.

Lieber Annahmen statt Rückfragen? Schreib „mach einfach“. Stundenwerk trifft dann Annahmen und listet sie am Anfang auf.

---

## 2. Einrichtung in 15 Minuten

Programmierkenntnisse brauchst du nicht. Es gibt zwei Wege: Die Claude-Desktop-App kommt ganz ohne Konsole aus und eignet sich auch, wenn du schon einen eigenen Schulordner hast. Der Weg über das Terminal bringt zusätzlich die fertige Ordnervorlage und die Datenschutz-Sperren mit.

### Einrichtung in der Claude-Desktop-App, ohne Konsole

Du brauchst die Claude-Desktop-App (claude.ai/download) und ein bezahltes Claude-Abo, z. B. Pro. Unter Windows braucht der Code-Reiter einmalig Git für Windows: von git-scm.com herunterladen, mit den Standardeinstellungen installieren, danach die App neu starten.

Dein Schulordner kann beliebig heißen und überall liegen, auch in Google Drive, OneDrive oder iCloud, wenn deine Schule das erlaubt. Ordner aus der Cloud vorher „offline verfügbar“ machen.

1. Claude-App öffnen und oben auf **Code** klicken.
2. Als Umgebung **Local** wählen, nicht Cloud. Plugins funktionieren nur lokal, und Cloud verlangt eine Anmeldung bei GitHub.
3. Deinen Schulordner auswählen, z. B. `Dokumente/Schule`.
4. Ins Eingabefeld tippen und abschicken:
   ```text
   /plugin marketplace add stundenwerk-skill/Stundenwerk.skill
   ```
5. Nach der Bestätigung tippen:
   ```text
   /plugin install stundenwerk@stundenwerk
   ```
   Bei der Frage nach dem Umfang „für dich“ (user) wählen. Dann gilt Stundenwerk in allen Ordnern.
6. Zeigt `/plugin` ein Menü: Marketplaces → stundenwerk → Enable auto-update. Dann kommen neue Versionen von selbst.
7. Die App neu starten oder `/reload-plugins` eingeben.
8. Testen: `/stund` tippen. Erscheinen die Stundenwerk-Befehle, ist das Plugin eingerichtet.

Einmalig danach, im Schulordner:

```text
Leg hier eine CLAUDE.md an. Bundesland: …, Schulart: …, meine Fächer: …, meine Klassen: …, Anrede der Schüler: du.
```

Ohne die Zeile mit dem Bundesland kennt Stundenwerk weder Lehrplan noch Landesregeln.

Für jede Klasse, die du gerade unterrichtest, einen Klassenordner anlegen. Dazu den Schulordner wählen und z. B. tippen:

```text
/stundenwerk:neue-klasse Mathematik 7a Realschule 4 Std.
```

Das legt den Fachordner (falls nötig) und darin `Klasse-7a` mit Klassenprofil, Stoffverteilungsplan und Logbuch an. Liegen deine Fächer in einem Unterordner wie `Fächer`, wählst du stattdessen diesen.

Zum Arbeiten wählst du in der App immer den Klassenordner, z. B. `Schule/Mathematik/Klasse-7a`. Dann kennt Claude Schule, Fach und Klasse. Nach jeder Stunde kurz `/stundenwerk:logbuch` mit dem, was ihr gemacht habt.

Schülerdaten gehören nicht in den Schulordner. Willst du Ordner zusätzlich für Claude sperren, schreib im Schulordner: *„Sperr für dich das Lesen der Ordner Schuelerdaten und Noten sowie aller Dateien mit Notenliste oder Foerderplan im Namen.“*

### Einrichtung mit dem Terminal und der Ordnervorlage

Wenn du noch nie mit dem Terminal gearbeitet hast, lies zuerst [Anhang A](#anhang-a-terminal-mini-kurs); das dauert etwa zwei Minuten.

### Schritt 1: Claude Code installieren
Die Anleitung steht unter https://code.claude.com/docs. Du brauchst ein Claude-Konto.

### Schritt 2: Paket entpacken und Schulordner anlegen
1. ZIP-Datei herunterladen: auf GitHub über den grünen Knopf „Code“ → „Download ZIP“, oder von der Person, die das Paket an deiner Schule verteilt
2. Mit Doppelklick entpacken
3. Darin den Ordner `vorlage` in `Schule` umbenennen und dorthin verschieben, wo er bleiben soll, z. B. in „Dokumente“

> Einen Cloud-Ordner (iCloud, OneDrive, Dropbox …) nur verwenden, wenn deine Schule das erlaubt.

### Schritt 3: Claude im Ordner `Schule` starten
- Terminal öffnen, `cd ` tippen (mit Leerzeichen), den Ordner `Schule` ins Fenster ziehen, Enter drücken
- `claude` tippen, Enter drücken
- Beim ersten Start fragt Claude, ob du dem Ordner vertraust: mit Ja bestätigen

### Schritt 4: `/einrichten` tippen

```text
/einrichten
```

Claude geht die Einrichtung Schritt für Schritt durch und fragt vor jedem Schritt nach:
1. Es prüft, ob alles da ist, und hilft, falls das kleine Hilfsprogramm git für Updates fehlt.
2. Es installiert das Plugin Stundenwerk mit allen Befehlen.
3. Es installiert die Regeln für Datenschutz, Klassenarbeiten und Arbeitsblätter.
4. Es richtet Zugriff und Datenschutz-Sperren ein: Claude darf den Schulordner lesen, Schülerdaten bleiben gesperrt.
5. Es stellt dir bis zu 9 kurze Fragen, zuerst nach deinem Bundesland, dann nach Schulart, Fächern, Klassen und Klassenleitung.
6. Es füllt die Vorlagen aus und legt deine Fach- und Klassenordner an.

Bestätige jeden Schritt mit Ja, wenn Claude fragt.

### Schritt 5: Neu starten, Auto-Update einschalten, testen
1. Claude beenden: `/exit`
2. Claude wieder starten (`claude`) und Auto-Update einschalten:
   ```text
   /plugin
   ```
   → Marketplaces → stundenwerk → Enable auto-update
3. In einen Klassenordner wechseln, Claude starten und testen:
   ```text
   /memory                         ← zeigt, welche CLAUDE.md-Dateien geladen sind
   /stundenwerk:einstieg Bruchrechnung
   ```

Damit ist die Einrichtung abgeschlossen. Lege danach nach und nach Lehrplan-Auszüge und eigene Beispiele ab (Abschnitt 9); damit werden die Ergebnisse spürbar besser.

<details>
<summary><b>Manuell einrichten (für Fortgeschrittene)</b></summary>

```bash
# Plugin mit Updates
claude plugin marketplace add stundenwerk-skill/Stundenwerk.skill
claude plugin install stundenwerk@stundenwerk
# dann in Claude: /plugin → Marketplaces → stundenwerk → Enable auto-update

# Regeln
cp vorlage/.claude/rules/*.md ~/.claude/rules/
```

`~/.claude/settings.json` ergänzen (vorhandene Einträge behalten, Pfad anpassen; „Dokumente“ heißt technisch `Documents`):

```json
{
  "$schema": "https://json.schemastore.org/claude-code-settings.json",
  "permissions": {
    "additionalDirectories": ["/Users/DEINNAME/Documents/Schule"],
    "deny": [
      "Read(~/Documents/Schule/**/Schuelerdaten/**)",
      "Read(~/Documents/Schule/**/Noten/**)",
      "Read(~/Documents/Schule/**/*Notenliste*)",
      "Read(~/Documents/Schule/**/Foerderplan*)"
    ]
  }
}
```

- `additionalDirectories`: Claude darf den ganzen Schulordner ohne Rückfrage lesen, auch wenn du im Klassenordner startest
- `deny`: sperrt Schülerdaten überall
- Prüfen mit `/status` („Setting sources“ muss „User settings“ enthalten)

</details>

---

## 3. Updates und Neuigkeiten

### Automatisch
Ist Auto-Update eingeschaltet (Abschnitt 2, Schritt 5), prüft Claude Code nach jedem Start im Hintergrund, ob es eine neue Version der Befehle gibt, und lädt sie. Deine eigenen Dateien (Profile, Logbücher, Klassenarbeiten) verändert ein Update nie.

### Was ist neu?

```text
/stundenwerk:neuigkeiten
```

zeigt die installierte Version, die Änderungen und ob du etwas tun musst. Claude bietet an, das gleich zu erledigen.

### Von Hand aktualisieren
Falls Auto-Update aus ist oder du die neueste Version sofort willst:

```text
/plugin marketplace update stundenwerk
```

Danach Claude neu starten.

### Wie erfahre ich von Updates?
- Die Person, die das Paket an deiner Schule verteilt, informiert über den üblichen Weg (E-Mail, Moodle, Messenger, Konferenz).
- Mit GitHub-Konto: im Repo oben „Watch“ → „Custom“ → „Releases“ wählen. Dann kommt bei jeder neuen Version eine E-Mail.
- `CHANGELOG.md` im Repo listet alle Änderungen.
- `ROADMAP.md` zeigt, welche Versionen und Befehle als Nächstes geplant sind.

### Was wird nicht automatisch aktualisiert?
- Regeln (`~/.claude/rules/`) und Einstellungen. Sie ändern sich selten. Wenn doch, steht es unter `/stundenwerk:neuigkeiten` bei „Zu tun“. Dann die neue ZIP laden, im neuen `vorlage`-Ordner Claude starten, `/einrichten` ausführen und bei den Regeln „ersetzen“ wählen. Deine Daten im bisherigen `Schule`-Ordner bleiben unberührt.
- Vorlagen im Schulordner (z. B. `_Schule/Vorlagen/`). Das sind deine Dateien; sie bleiben so, wie du sie angepasst hast.

---

## 4. Ordnerstruktur

Ordner mit ⚙ legen die Befehle selbst an und füllen sie.

```text
Schule/                                   ← dein Schulordner (aus „vorlage“)
├── CLAUDE.md                             ← du, Schule, Grundregeln
├── CLAUDE.local.md                       ← optional, private Notizen
├── .claude/                              ← /einrichten, Regeln, Sperren
├── einrichtung/                          ← Hilfsdateien für /einrichten
├── Backup/                             ⚙ /stundenwerk:sichern
│
├── _Schule/                              ← schulweite Vorgaben
│   ├── Notenschluessel-Fachschaften.md
│   ├── Jahresplan-2026-27.md
│   ├── Vorlagen/                         ← KA-Kopf, Stundenentwurf, Briefkopf
│   ├── Protokolle/                     ⚙ /stundenwerk:protokoll
│   └── Wochenplaene/                   ⚙ /stundenwerk:wochenplan
│
├── Mathematik/                         ⚙ /stundenwerk:neue-klasse (ein Ordner pro Fach)
│   ├── CLAUDE.md                         ← Fachregeln, Lehrwerk, Fachschaftsbeschlüsse
│   ├── _Lehrplan/                    ← Auszüge als Markdown
│   ├── _Beispiele/                       ← eigene gelungene Arbeiten („Goldstandard“)
│   └── Klasse-7b/                      ⚙ /stundenwerk:neue-klasse (ein Ordner pro Lerngruppe)
│       ├── CLAUDE.md                     ← Klassenprofil (anonym!)
│       ├── Stoffverteilungsplan.md
│       ├── Logbuch.md                  ⚙ /stundenwerk:logbuch
│       ├── Einheiten/
│       │   └── 03-Lineare-Funktionen/  ⚙ /stundenwerk:einheit
│       │       ├── Planung.md
│       │       ├── Stunden/            ⚙ /stundenwerk:stunde, :tafelbild, :exit-ticket
│       │       └── Arbeitsblaetter/    ⚙ /stundenwerk:stunde, :differenzieren
│       ├── Klassenarbeiten/
│       │   ├── KA2-Lineare-Funktionen/ ⚙ /stundenwerk:klassenarbeit, :fehleranalyse, :berichtigung, :lernlandkarte
│       │   └── KT-2026-11-20-Steigung/ ⚙ /stundenwerk:kurztest
│       ├── Vertretung/                 ⚙ /stundenwerk:vertretung
│       ├── Praesentation/              ⚙ /stundenwerk:praesentation
│       └── Pruefung/                   ⚙ /stundenwerk:pruefung
│
└── Klassenleitung-7b/                  ⚙ /einrichten
    ├── Elternbriefe/                   ⚙ /stundenwerk:elternbrief
    ├── Elterngespraeche/Vorlagen/      ⚙ /stundenwerk:elterngespraech (nur Vorlagen)
    └── Ausfluege/                      ⚙ /stundenwerk:ausflug
```

> **Schülerdaten gehören nicht in diesen Ordner.** Notenlisten, Namen, Förderpläne, Gutachten und Fotos bleiben im dienstlichen System deiner Schule. Die Sperren sind nur ein zusätzliches Sicherheitsnetz.

Die Befehle verlassen sich auf diese Namen:
- Fächer: `Mathematik/`, `Deutsch/` … · Klassen: `Klasse-7b/`, Kurse: `Kurs-J1-Mathe/` …
- Dateien: `JJJJ-MM-TT_Thema.md`, ohne Umlaute und Leerzeichen
- Lösungen immer als eigene Datei: `…_Loesung.md`

---

## 5. Die drei CLAUDE.md-Ebenen

`/einrichten` und `/stundenwerk:neue-klasse` füllen diese Dateien gemeinsam mit dir aus. Es sind einfache Textdateien, die du jederzeit selbst ändern kannst. Du kannst Claude auch bitten: *„Ergänze im Klassenprofil, dass Gruppenarbeit nach der 6. Stunde schlecht klappt.“*

### 5.1 `CLAUDE.md` im Schulordner: du und deine Schule
- Schulart, Ort, Fächer, Klassenleitung, Anrede (du oder Sie)
- Bundesland; danach richten sich Lehrplan, Begriffe und Regeln
- Grundregeln: Lehrplan und Vorgaben des Landes, Operatoren, keine erfundenen Standards
- Arbeitsweise: Dateien speichern, Dateinamen, Lösungen separat
- Verweise mit `@_Schule/…` auf kurze Dateien, die immer gebraucht werden (Notenschlüssel, Jahresplan)

> `@pfad` bindet eine Datei bei jedem Start ein, deshalb nur für kurze Dateien nutzen. Beim ersten Mal fragt Claude Code einmal nach Bestätigung.

### 5.2 `Fach/CLAUDE.md`: das Fach
- Lehrwerke je Klassenstufe, Kompetenzbereiche laut Lehrplan des Landes
- Fachschaftsbeschlüsse: Notenschlüssel, Anzahl der Klassenarbeiten, Hilfsmittel
- Stil: Kontexte, Verteilung der Anforderungsbereiche, Layoutwünsche

### 5.3 `Klasse/CLAUDE.md`: das Klassenprofil (anonym)
- Schulart, Niveau oder Bildungsgang (mit den Bezeichnungen des Landes), Wochenstunden, Doppelstunden
- Die Lerngruppe auf Klassenebene: Anzahl, Förderbedarfe ohne Namen, DaZ, Leistungsspitze
- Was methodisch funktioniert und was nicht

Halte jede CLAUDE.md unter etwa 200 Zeilen und schreib konkret: „Aufgabentexte höchstens 2 Sätze“ hilft mehr als „einfach formulieren“.

---

## 6. Rules: Regeln für bestimmte Ordner

Rules sind kurze Regeldateien, die `/einrichten` nach `~/.claude/rules/` kopiert. Eine Rule mit `paths:` gilt nur in passenden Ordnern, eine Rule ohne `paths:` gilt immer.

| Datei | Gilt | Inhalt |
|---|---|---|
| `qualitaet.md` | immer | nichts erfinden, Herkunft kennzeichnen, bei Unklarheiten nachfragen, Sprache passend zur Klasse, klar schreiben |
| `datenschutz.md` | immer | keine personenbezogenen Daten, Platzhalter, keine Notenentscheidungen |
| `klassenarbeiten.md` | Ordner `Klassenarbeiten` | KA-Kopf, Operator, AFB und Punkte je Aufgabe, Summe prüfen, Version B, Erwartungshorizont separat |
| `arbeitsblatt-layout.md` | Ordner `Arbeitsblaetter` | Kopfzeile, Operatoren fett, Platz zum Schreiben, ★-Aufgabe, Lösung separat |

Eine eigene Rule legst du an, indem du Claude z. B. sagst: *„Leg eine Rule an: In Deutsch-Klassenarbeiten Bewertung Inhalt 50 %, Aufbau 20 %, Sprache 30 %.“*

---

## 7. Befehlsreferenz

Ein Befehl ist `/stundenwerk:name`, gefolgt von deinen Angaben. Passt deine Bitte zu einem Befehl, nutzt Claude ihn auch von selbst. Nur `/einrichten` und `/stundenwerk:sichern` laufen ausschließlich, wenn du sie aufrufst.

Fast alle Befehle startest du im Klassenordner. Wo es anders ist, steht es dabei.

### 7.1 Einrichtung und Verwaltung

| Befehl | Start | Was er tut |
|---|---|---|
| `/einrichten` | im Schulordner | Ersteinrichtung oder Aktualisierung: Plugin, Regeln, Zugriff und Sperren, Interview, Ordner anlegen |
| `/stundenwerk:neuigkeiten` | überall | was in der aktuellen Version neu ist und was zu tun ist |
| `/stundenwerk:neue-klasse [Fach] [Klasse] …` | im Schulordner | z. B. `/stundenwerk:neue-klasse Deutsch 5a Realschule M 5 Std.`: legt das Fach (falls nötig) und den Klassenordner mit Profil, Stoffverteilungsplan und Logbuch an |
| `/stundenwerk:sichern [Ziel]` | im Schulordner | datierte ZIP-Sicherung in `Backup/`, ohne Schülerdaten-Ordner; die letzten 10 bleiben erhalten |

### 7.2 Grundlage

| Skill | Was er tut |
|---|---|
| `stundenwerk:unterricht` | Grundwissen für alle Länder (KMK-Bildungsstandards, Operatoren und Anforderungsbereiche, Abschlüsse, Datenschutz) und das Länderprofil deines Bundeslandes (Lehrplan, Schularten, Leistungsnachweise). Du musst ihn nicht aufrufen; Claude nutzt ihn automatisch. Mehr in Abschnitt 7.7. |

### 7.3 Planung

| Befehl | Beispiel | Liest | Erzeugt |
|---|---|---|---|
| `/stundenwerk:einheit [Thema] [Std.]` | `/stundenwerk:einheit Lineare Funktionen 14` | Stoffverteilung, Profil, Lehrplan, Jahresplan | `Einheiten/NN-Thema/Planung.md` mit Stundenfolge, Leistungsfeststellung, Differenzierung |
| `/stundenwerk:stunde [Thema] [Min.]` | `/stundenwerk:stunde Steigungsdreieck 90` | Profil, Logbuch (letzte 5), Lehrplan, Beispiele | `Stunden/JJJJ-MM-TT_Thema.md` (Verlaufsplan) und `Arbeitsblaetter/AB_Thema.md` mit Lösung |
| `/stundenwerk:einstieg [Thema]` | `/stundenwerk:einstieg Prozentrechnung` | Profil | nur im Chat: drei Einstiege (Problem, Bild oder Objekt, Provokation) mit Empfehlung |
| `/stundenwerk:tafelbild [Thema/Datei]` | `/stundenwerk:tafelbild Steigung` | Stundenplanung | `…_Tafelbild.md` mit Merksatz, Beispiel, Farben und Lückentext-Variante |
| `/stundenwerk:differenzieren [Datei] [Varianten]` | `/stundenwerk:differenzieren Arbeitsblaetter/AB_Steigung.md G E DaZ` | Arbeitsblatt, Profil | `…_G.md`, `…_E.md`, `…_DaZ.md` und eine gemeinsame Lösung |
| `/stundenwerk:vertretung [Klasse] [Fach] [Dauer]` | `/stundenwerk:vertretung 7b Mathe 45` | Logbuch | `Vertretung/Datum_Klasse/`: Ablaufzettel, Arbeitsblatt, Lösung |
| `/stundenwerk:wochenplan [KW]` | Start im Schulordner | Jahresplan, alle Logbücher und Stoffverteilungspläne | `_Schule/Wochenplaene/KW-NN.md` mit To-do-Liste und passenden Befehlen |
| `/stundenwerk:logbuch [Notiz]` | `/stundenwerk:logbuch Steigung geübt, AB4, HA S. 85/6` | nichts | neue Zeile in `Logbuch.md` und ein Hinweis für die nächste Stunde |

### 7.4 Leistungsfeststellung

| Befehl | Beispiel | Liest | Erzeugt |
|---|---|---|---|
| `/stundenwerk:klassenarbeit [Thema] [Min.]`<br>(Bayern: Schulaufgabe) | `/stundenwerk:klassenarbeit Lineare Funktionen 45` | Länderprofil, Profil, Stoffverteilung, Logbuch (letzte 10), Lehrplan, Beispiele, Notenschlüssel | `Klassenarbeiten/KAx-Thema/`: `KA.md`, `KA_B.md`, `Erwartungshorizont.md`, `Uebersicht.md` |
| `/stundenwerk:kurztest [Thema] [Min.]`<br>(BW: Wiederholungsarbeit, BY: Stegreifaufgabe/Kurzarbeit) | `/stundenwerk:kurztest Steigung 15` | Länderprofil, Logbuch (letzte 3–5) | `Klassenarbeiten/KT-Datum-Thema/`: `Test.md`, `Test_B.md`, `Loesung.md` |
| `/stundenwerk:exit-ticket [Thema]` | `/stundenwerk:exit-ticket Steigung ablesen` | Logbuch oder Stunde | `…_ExitTicket.md`: 3 Fragen, Version A/B, Auswertungshilfe |
| `/stundenwerk:lernlandkarte [Thema]` | `/stundenwerk:lernlandkarte KA2 Lineare Funktionen` | Stoffverteilung, Logbuch, KA-Übersicht | `Lernlandkarte.md` („Ich kann …“-Tabelle mit Übungsverweisen) |
| `/stundenwerk:praesentation [Thema] [Form]`<br>(BW: GFS, SN: Komplexe Leistung …) | `/stundenwerk:praesentation Funktionen im Alltag Präsentation` | Länderprofil, Profil, Stoffverteilung, Schulvorgaben | `Praesentation/`: Themenliste, Anforderungen, Bewertungsbogen, Kolloquium-Leitfaden |
| `/stundenwerk:pruefung [Abschluss] [Fach] [Thema]` | `/stundenwerk:pruefung MSA Mathematik gesamt` | Länderprofil, Lehrplan, Jahresplan, Prüfungsvorgaben | `Pruefung/`: Themenüberblick, Wiederholungsplan, Übungsaufgaben, Lösungen, Tipps |

> Bei Klassenarbeiten und Kurztests prüft Claude anhand des Logbuchs, ob alles unterrichtet wurde. Begriffe und Regeln deines Landes (Ankündigung, Höchstzahl pro Tag oder Woche) nimmt es aus dem Länderprofil oder aus `_Schule/Landesvorgaben.md`.

### 7.5 Korrektur und Rückmeldung (immer anonym)

| Befehl | Beispiel | Erzeugt |
|---|---|---|
| `/stundenwerk:feedback [Stichworte]` | `/stundenwerk:feedback Einleitung gut, Argumente ohne Beispiele, Schluss fehlt` | nur im Chat: Rückmeldetext (Gelungen, Daran arbeiten, Tipp), keine Note |
| `/stundenwerk:fehleranalyse [KA-Ordner] [Stichworte]` | `/stundenwerk:fehleranalyse Klassenarbeiten/KA2-… A3b: 15/27 verwechseln m und b` | `Fehleranalyse.md`: Fehler nach Ursache, Förderaufgaben, Plan für die nächsten Stunden |
| `/stundenwerk:berichtigung [KA-Ordner]` | `/stundenwerk:berichtigung Klassenarbeiten/KA2-Lineare-Funktionen` | `Berichtigung.md` (gestufte Tipps und ähnliche Aufgaben) und Lösungen |

### 7.6 Klassenleitung und Organisation

| Befehl | Beispiel | Start | Erzeugt |
|---|---|---|---|
| `/stundenwerk:elternbrief [Anlass, Fakten]` | `/stundenwerk:elternbrief Elternabend 3.12. 19 Uhr Raum 112` | `Klassenleitung-…` | `Elternbriefe/Datum_Anlass.md` mit Briefkopf und Rückmeldeabschnitt, auf Wunsch in Leichter Sprache oder übersetzt |
| `/stundenwerk:elterngespraech [Anlass]` | `/stundenwerk:elterngespraech Leistungsabfall, Hausaufgaben fehlen` | `Klassenleitung-…` | im Chat: Leitfaden, Formulierungshilfen, Protokollvorlage, nur Platzhalter |
| `/stundenwerk:protokoll [Sitzung] [Stichpunkte]` | `/stundenwerk:protokoll Fachkonferenz Mathe: TOP1 …` | Schulordner | `_Schule/Protokolle/Datum_Art.md` (Klassenkonferenzen nur im Chat) |
| `/stundenwerk:ausflug [Art] [Ziel] [Datum] [Klasse]` | `/stundenwerk:ausflug Exkursion Wilhelma 14.05. 7b` | `Klassenleitung-…` | `Ausfluege/Datum_Ziel/`: Planung, Checkliste, Kosten, Elternbrief, Arbeitsauftrag |

### 7.7 Bundesländer

Für jedes der 16 Länder liegt ein Länderprofil bei (`plugins/stundenwerk/skills/unterricht/laender/`). Claude liest es anhand der Zeile `Bundesland:` in deiner `CLAUDE.md` und verwendet dann die Begriffe und Regeln deines Landes.

| Land | Lehrplan heißt … | Große schriftliche Arbeit | Erster / Mittlerer Abschluss |
|---|---|---|---|
| Baden-Württemberg | Bildungsplan | Klassenarbeit | Hauptschulabschluss / Realschulabschluss |
| Bayern | LehrplanPLUS | Schulaufgabe | Erfolgreicher Abschluss der Mittelschule / Realschulabschluss bzw. Mittlerer Schulabschluss |
| Berlin | Rahmenlehrplan 1–10 (mit BB) | Klassenarbeit | Berufsbildungsreife / Mittlerer Schulabschluss |
| Brandenburg | Rahmenlehrplan 1–10 (mit BE) | Klassenarbeit | Berufsbildungsreife / Fachoberschulreife |
| Bremen | Bildungsplan | Klassenarbeit | Einfache Berufsbildungsreife / Mittlerer Schulabschluss |
| Hamburg | Bildungsplan | Klassenarbeit | Erster allgemeinbildender Schulabschluss / Mittlerer Schulabschluss |
| Hessen | Kerncurriculum | Klassenarbeit | Hauptschulabschluss / Realschulabschluss |
| Mecklenburg-Vorpommern | Rahmenplan | Klassenarbeit | Berufsreife / Mittlere Reife |
| Niedersachsen | Kerncurriculum | Klassenarbeit | Hauptschulabschluss / Sekundarabschluss I – Realschulabschluss |
| Nordrhein-Westfalen | Kernlehrplan | Klassenarbeit (Oberstufe: Klausur) | Erster Schulabschluss / Mittlerer Schulabschluss |
| Rheinland-Pfalz | Lehrplan | Klassenarbeit | Berufsreife / Qualifizierter Sekundarabschluss I |
| Saarland | Lehrplan | Klassenarbeit | Hauptschulabschluss / Mittlerer Bildungsabschluss |
| Sachsen | Lehrplan | Klassenarbeit (dazu Komplexe Leistungen) | Hauptschulabschluss / Realschulabschluss |
| Sachsen-Anhalt | Lehrplan / Rahmenrichtlinien | Klassenarbeit | Hauptschulabschluss / Realschulabschluss |
| Schleswig-Holstein | Fachanforderungen | Klassenarbeit | Erster Schulabschluss / Mittlerer Schulabschluss |
| Thüringen | Lehrplan | Klassenarbeit | Hauptschulabschluss / Realschulabschluss |

Belegte Angaben in den Profilen stehen ohne Zusatz. Was nicht sicher belegt ist, etwa die Höchstzahl von Arbeiten pro Woche in manchen Ländern, ist mit „[prüfen]“ markiert. Claude gibt solche Punkte nicht als Tatsache aus und kennzeichnet sie auch im Material.

So machst du das Profil deines Landes genauer:
1. Trag geprüfte Regeln mit Quelle in `_Schule/Landesvorgaben.md` ein. Sie haben Vorrang vor dem Länderprofil.
2. Oder lass Claude helfen: *„Prüfe die [prüfen]-Punkte meines Länderprofils auf den offiziellen Seiten meines Landes und trage die Ergebnisse mit Quelle in Landesvorgaben.md ein.“*
3. Findest du einen Fehler im Länderprofil, melde ihn der Person, die Stundenwerk pflegt. Mit dem nächsten Update ist er dann für alle korrigiert.

---

## 8. Arbeitsabläufe: Befehle kombinieren

### 8.1 Schuljahresbeginn
1. Altes Schuljahr sichern: `/stundenwerk:sichern`, dann Claude bitten: *„Verschiebe alle Klassenordner in Archiv/2025-26.“*
2. `_Schule/Jahresplan-…md` mit Ferien und Terminen füllen (Claude kann eine Vorlage erstellen)
3. Für jede neue Lerngruppe: `/stundenwerk:neue-klasse Mathematik 5c Gymnasium 4 Std.`
4. Stoffverteilungsplan: *„Entwirf den Stoffverteilungsplan für die 5c nach Lehrplan und Jahresplan.“*
5. Erste Einheit: `/stundenwerk:einheit …`

### 8.2 Ablauf einer Unterrichtseinheit

```text
/stundenwerk:einheit Lineare Funktionen 14         → Planung.md
  └─ pro Stunde:
     /stundenwerk:einstieg …                       → Ideen (Chat)
     /stundenwerk:stunde …                         → Verlauf + Arbeitsblatt
     /stundenwerk:differenzieren Arbeitsblaetter/… → G/E/DaZ-Fassungen
     /stundenwerk:tafelbild …                      → Hefteintrag
     /stundenwerk:exit-ticket …                    → Lernstandscheck
     /stundenwerk:logbuch …                        → nach der Stunde eintragen (!)
```

### 8.3 Ablauf einer Klassenarbeit

```text
/stundenwerk:kurztest …                            → zwischendurch Stand prüfen
/stundenwerk:lernlandkarte …                       → ca. 1 Woche vorher an die Klasse
/stundenwerk:klassenarbeit …                       → KA, Version B, Erwartungshorizont
   (du korrigierst selbst)
/stundenwerk:feedback …                            → Rückmeldetexte (nacheinander, anonym)
/stundenwerk:fehleranalyse … [Stichworte]          → was lief schief, Förderaufgaben
/stundenwerk:berichtigung …                        → Berichtigungsblatt mit Tipps
/stundenwerk:logbuch KA2 zurückgegeben, Berichtigung als HA
```

### 8.4 Wochenplanung
Sonntags im Schulordner:
```text
/stundenwerk:wochenplan
/stundenwerk:sichern
```
Du bekommst eine To-do-Liste mit fertigen Befehlen, z. B. „`/stundenwerk:stunde …` für 7b Dienstag“ oder „KA 9a ist angekündigt, aber noch nicht erstellt“.

Fällt kurzfristig eine Stunde aus: `/stundenwerk:vertretung 7b Mathe 45`, dann den Ablaufzettel weitergeben.

### 8.5 Präsentationsleistung und Abschlussprüfung
- Präsentationsleistung (z. B. GFS in BW): `/stundenwerk:praesentation` erstellt eine Themenliste für die Klasse, einen Bewertungsbogen für dich und Fragen für das Kolloquium.
- Abschlussklassen: `/stundenwerk:pruefung MSA Deutsch gesamt`. Claude verwendet die Abschlussbezeichnung deines Landes. Leg die aktuellen Prüfungsvorgaben in `_Lehrplan/` ab.

### 8.6 Klassenleitung
Im Ordner `Klassenleitung-7b`:
```text
/stundenwerk:ausflug Schullandheim Schwarzwald 22.–24.06. 7b
/stundenwerk:elternbrief Infoabend Schullandheim 12.03. 19 Uhr
/stundenwerk:elterngespraech Häufige Verspätungen, Rückzug in der Pause
```

---

## 9. Material aufbereiten

Claude arbeitet am besten mit Markdown: einfachem Text mit `#` für Überschriften und `|` für Tabellen, den jeder Texteditor öffnet. PDFs und Word-Dateien gehen auch, werden aber ungenauer gelesen. Claude kann sie für dich umwandeln.

| Material | Wohin | Tipp |
|---|---|---|
| Lehrplan (Bildungsplan, LehrplanPLUS, Kernlehrplan, Kerncurriculum, Rahmenlehrplan, Fachanforderungen …) | `Fach/_Lehrplan/` | Nur deine Klassenstufen, Nummerierungen mitkopieren. Wo es den Lehrplan gibt, steht im Länderprofil; eine Übersicht hat bildungsserver.de unter „Lehrpläne der Bundesländer“. |
| Schulinternes Curriculum, Fachcurriculum | `Fach/_Lehrplan/` | In vielen Ländern Pflicht (z. B. Schleswig-Holstein, NRW) und für Claude sehr hilfreich |
| Übergangs- und Lesehilfen (z. B. zur G9-Umstellung) | `Fach/_Lehrplan/` | wenn dein Land sie herausgibt |
| Geprüfte Landesregeln | `_Schule/Landesvorgaben.md` | haben Vorrang vor dem mitgelieferten Länderprofil |
| Prüfungsvorgaben | `Fach/_Lehrplan/` | jedes Jahr aktualisieren |
| Stoffverteilungsplan | `Klasse/Stoffverteilungsplan.md` | Tabelle: KW, Einheit, Stunden, Kompetenzen/Standards, fächerübergreifende Ziele, Leistung |
| Schulcurriculum, Fachschaftsbeschlüsse | `_Schule/` und `Fach/CLAUDE.md` | nur das Verbindliche, kurz |
| Notenschlüssel | `_Schule/Notenschluessel-Fachschaften.md` | Eine landesweite Prozentvorgabe gibt es nicht; trag die Werte deiner Fachschaft ein. |
| Eigene gelungene Klassenarbeiten und Stunden | `Fach/_Beispiele/` | Bringt am meisten: Claude übernimmt Niveau, Länge und Layout. |
| Lehrwerk | `Fach/CLAUDE.md` | nur Titel und Inhaltsverzeichnis oder Seitenzuordnung |

Zum Umwandeln die Datei in den Ordner legen und Claude sagen:

```text
Wandle _Lehrplan/BP2016_Mathe.pdf in Markdown um. Behalte nur Klassen 7/8,
alle Standardnummern und Überschriften. Speichere als BP2016-Mathe-SekI-Kl7-8.md.
Lösche das PDF nicht, ich prüfe erst.
```

```text
Wandle meine alte Klassenarbeit _Beispiele/KA_Terme.docx in Markdown um und
entferne alle Namen. Speichere als KA-Beispiel-Kl7-Terme.md.
```

### Das Logbuch
Fast alle Befehle lesen das Logbuch. Trag nach jeder Stunde eine Zeile ein, am einfachsten mit `/stundenwerk:logbuch`:

```markdown
- 2026-11-24 | Std. 5–6 | Steigungsdreieck eingeführt, AB3 bis Nr. 4 | HA: S. 84/3a–c | fallende Geraden noch unsicher
```

Dann fragen Klassenarbeiten nichts ab, was noch nicht dran war. Folgestunden knüpfen an, Vertretungen passen zum Stand, und der Wochenplan erkennt, ob du im Plan liegst.

---

## 10. Datenschutz

### 10.1 Technische Sperren
- Persönliche Einstellungen (legt `/einrichten` an): Lesesperren für `Schuelerdaten/`, `Noten/`, `*Notenliste*` und `Foerderplan*` im ganzen Schulordner, egal wo du startest
- Schulordner: `.claude/settings.json` enthält dieselben Sperren als zweite Absicherung
- Rule `datenschutz.md`: Claude weist auf eingefügte Namen hin und arbeitet mit Platzhaltern weiter
- `/stundenwerk:sichern` lässt diese Ordner in jeder Sicherung weg

### 10.2 Was die Befehle tun

| Befehl | Schutzmaßnahme |
|---|---|
| `feedback` | nur Stichworte, keine Namen, keine Note, nichts wird gespeichert |
| `fehleranalyse` | nur Angaben auf Klassenebene („15 von 27 …“) |
| `logbuch` | Beobachtungen nur für die ganze Klasse, Namen werden entfernt |
| `neue-klasse` | Profil nur auf Klassenebene, fragt ausdrücklich ohne Namen |
| `elterngespraech` | nur Platzhalter, Ausgabe im Chat |
| `protokoll` | Klassenkonferenzen nur im Chat |
| `ausflug`, `elternbrief` | keine Namen, Gesundheitsdaten oder Notfallkontakte |

### 10.3 Organisatorisch
- Was du Claude gibst, wird zur Verarbeitung an Anthropic übertragen. Für personenbezogene Daten gelten die landeseigenen oder von der Schule freigegebenen Werkzeuge (z. B. telli, siehe Länderprofil) und die Vorgaben deiner Schule.
- Kläre, ob und wie du auf einem Privatgerät dienstlich arbeiten darfst.
- Schülerarbeiten nur vollständig anonymisiert und ohne Fotos der Handschrift verwenden.
- Die Noten gibst du. Alle Bewertungsvorschläge sind Entwürfe.

Die Datenschutzerklärung des Plugins steht in [`DATENSCHUTZ.md`](DATENSCHUTZ.md).

---

## 11. Befehle anpassen und eigene schreiben

> **Wichtig:** Jedes Update ersetzt die Plugin-Befehle (`/stundenwerk:…`). Was du direkt im Plugin änderst, geht dabei verloren. Leg eigene Varianten deshalb als persönliche Skills an; die bleiben bei Updates erhalten.

Am einfachsten sagst du Claude, was du willst:

```text
Erstelle mir einen persönlichen Skill /meine-klassenarbeit auf Basis von
/stundenwerk:klassenarbeit, der zusätzlich immer eine Variante mit Hilfekarten
für den Nachteilsausgleich erstellt. Speichere ihn in ~/.claude/skills/.
```

```text
Schreib mir einen persönlichen Skill /quiz nach dem Muster von
/stundenwerk:exit-ticket: 10 Multiple-Choice-Fragen zum aktuellen Thema, als Tabelle.
```

Persönliche Skills liegen in `~/.claude/skills/NAME/SKILL.md` (Windows: `C:\Users\NAME\.claude\skills\`) und heißen ohne Vorsilbe, also z. B. `/quiz`.

So ist ein Skill aufgebaut:

```markdown
---
name: quiz
description: Erstellt ein Quiz mit 10 Multiple-Choice-Fragen zum aktuellen Thema der Klasse.
argument-hint: "[Thema]"
---

Erstelle ein Quiz zu: $ARGUMENTS

1. Letzte 5 Einträge im Logbuch.md lesen.
2. 10 Fragen, je 4 Antworten, genau eine richtig, steigende Schwierigkeit.
3. Als Tabelle speichern: Frage | A | B | C | D | richtig | Zeit (s)
4. Speichern als `Quiz/JJJJ-MM-TT_Thema.md`.
```

| Feld | Bedeutung |
|---|---|
| `name` | Befehlsname (`/quiz`), sonst der Ordnername |
| `description` | wann der Skill passt; danach entscheidet Claude, ob es ihn von selbst nutzt |
| `argument-hint` | Hinweis beim Tippen, z. B. `[Thema] [Minuten]` |
| `$ARGUMENTS` | wird durch alles ersetzt, was du nach dem Befehl tippst |
| `disable-model-invocation: true` | Claude nutzt den Skill nie von selbst, nur wenn du `/name` tippst |

Ist dein Skill auch für andere nützlich, schick ihn an die Person, die das Paket pflegt. Mit dem nächsten Update bekommen ihn dann alle.

---

## 12. Tipps für bessere Ergebnisse

1. Beantworte die Rückfragen. Je genauer deine Antwort, desto besser passt das Ergebnis.
2. Lies den Abschnitt „Bitte prüfen:“. Dort stehen die Punkte, die Stundenwerk nicht sicher belegen konnte.
3. Starte im Klassenordner. Dann sind Schule, Fach und Klasse automatisch geladen.
4. Zwei gute eigene Klassenarbeiten in `_Beispiele/` bringen mehr als zehn Regeln.
5. Führ das Logbuch: 30 Sekunden mit `/stundenwerk:logbuch` nach jeder Stunde.
6. Lass Ergebnisse als Dateien speichern. So wächst dein Materialarchiv nebenbei.
7. Mach aus Korrekturen Regeln. Gefällt dir etwas nicht, sag: *„Nimm das als Regel in die Fach-CLAUDE.md auf.“*
8. Halte jede CLAUDE.md unter 200 Zeilen.
9. Sichere regelmäßig mit `/stundenwerk:sichern` und kopier die neueste Sicherung ab und zu auf ein anderes Speichermedium.
10. Für Druck oder Word: *„Mach aus KA.md eine Word-Datei mit Schulkopf.“*
11. Schau ab und zu in `/stundenwerk:neuigkeiten`, damit du neue Befehle mitbekommst.
12. Prüf alles. Fachliche Richtigkeit, Lehrplanbezug und Bewertung verantwortest du.

---

## 13. Häufige Probleme

| Problem | Lösung |
|---|---|
| `/stundenwerk:…`-Befehle erscheinen nicht | Claude nach `/einrichten` neu starten. Dann unter `/plugin` → Installed prüfen, ob `stundenwerk` aktiviert ist. Sonst `/einrichten` erneut ausführen. |
| `/einrichten` erscheint nicht | Claude wurde nicht im Schulordner (dem umbenannten Ordner `vorlage`) gestartet. Dort starten (Anhang A). |
| `/einrichten` meldet, dass git fehlt | Claude hilft bei der Installation. Alternativ geht die Einrichtung auch ohne Updates; Claude bietet das an. |
| Updates kommen nicht an | Unter `/plugin` → Marketplaces → stundenwerk prüfen, ob auto-update an ist. Sonst `/plugin marketplace update stundenwerk` und neu starten. `/stundenwerk:neuigkeiten` zeigt die Version. |
| Claude kennt mein Klassenprofil nicht | Claude wurde nicht im Klassenordner gestartet. Mit `/memory` prüfen. |
| Claude fragt ständig, ob es `_Schule/` oder `_Lehrplan/` lesen darf | Der Zugriff fehlt oder der Schulordner wurde verschoben. `/einrichten` erneut ausführen und den Zugriffs-Schritt bestätigen. |
| Lehrplan-Nummern stimmen nicht | Der Auszug fehlt in `_Lehrplan/`. Claude markiert dann mit „[Lehrplanbezug prüfen]“. |
| Begriffe oder Regeln passen nicht zu meinem Land | Bundesland in der `CLAUDE.md` prüfen. Richtige Angaben in `_Schule/Landesvorgaben.md` eintragen (sie haben Vorrang) und der Person melden, die Stundenwerk pflegt. |
| Klassenarbeit fragt Unbehandeltes ab | Das Logbuch hat Lücken. Nachtragen und neu erzeugen lassen. |
| Ergebnisse zu lang oder zu schwer | Beispiele in `_Beispiele/` ablegen und eine Regel in die Fach-CLAUDE.md schreiben. |
| Befehl doppelt (`/klassenarbeit` und `/stundenwerk:klassenarbeit`) | Alte Kopie aus Version 1.0. `/einrichten` bietet an, sie zu entfernen. |
| Meldung „Settings Error“ beim Start | Die Einstellungsdatei ist beschädigt. „Mit Claude reparieren“ wählen. |
| Datei versehentlich überschrieben | Aus dem neuesten ZIP in `Backup/` wiederherstellen. |

---

## 14. Checkliste

- [ ] Claude Code installiert und angemeldet
- [ ] Ordner `vorlage` in `Schule` umbenannt und an einen festen Platz verschoben
- [ ] Im Schulordner `/einrichten` vollständig durchlaufen
- [ ] Claude neu gestartet, Auto-Update eingeschaltet (`/plugin` → Marketplaces → stundenwerk)
- [ ] Im Klassenordner `/memory` und `/stundenwerk:einstieg …` getestet
- [ ] Notenschlüssel der Fachschaft eingetragen
- [ ] Pro Fach: Lehrplan-Auszug und 1–2 eigene Beispiele
- [ ] Pro Klasse: Stoffverteilungsplan
- [ ] Routinen: `/stundenwerk:logbuch` nach jeder Stunde, `/stundenwerk:sichern` jede Woche

---

## Lizenz, Name und Logo

- Für Lehrkräfte ist Stundenwerk kostenlos. Die Inhalte (Befehle, Länderprofile, Regeln, Vorlagen, Anleitungen) stehen unter CC BY-NC-SA 4.0: Du darfst sie für nicht-kommerzielle Zwecke teilen und anpassen, mit Namensnennung und unter gleichen Bedingungen. Volltext in [`LICENSE`](LICENSE), Kurzfassung in [`LIZENZ.md`](LIZENZ.md).
- Lehrkräfte bekommen auf Anfrage kostenlos eine Zusatzerlaubnis ohne „Weitergabe unter gleichen Bedingungen“ (CC BY-NC 4.0), über das Issue „Lizenz-Anfrage“.
- Unternehmen dürfen Stundenwerk kommerziell nur mit kostenpflichtiger Lizenz nutzen. Schulträger, Behörden und Landesinstitute, die es landes- oder trägerweit einsetzen wollen, melden sich bitte; dafür gibt es kostenpflichtige Kooperations- und Supportverträge. Details in [`KOMMERZIELL.md`](KOMMERZIELL.md), Kontakt: [stundenwerk.skill@gmail.com](mailto:stundenwerk.skill@gmail.com)
- Die Skripte (`scripts/`) stehen unter MIT, siehe [`scripts/LICENSE`](scripts/LICENSE).
- Der Name „Stundenwerk“, das Logo und die Wortmarke sind nicht frei lizenziert. Unveränderte Weitergabe und Berichte sind erlaubt; veränderte Fassungen brauchen einen eigenen Namen und ein eigenes Logo. Siehe [`MARKE.md`](MARKE.md).
- Was du mit Stundenwerk erstellst (Klassenarbeiten, Arbeitsblätter, Briefe), gehört dir.

---

## Anhang A: Terminal-Mini-Kurs

Das Terminal ist ein Fenster, in das man Befehle tippt. Du brauchst davon nur drei Dinge.

**1. Terminal öffnen**
- Mac: `Cmd + Leertaste`, „Terminal“ tippen, Enter
- Windows: Start-Menü, „Terminal“ oder „PowerShell“ tippen, Enter

**2. In einen Ordner wechseln**
`cd ` tippen (mit Leerzeichen), dann den Ordner aus dem Finder oder Explorer ins Terminal-Fenster ziehen und Enter drücken.

**3. Claude starten und beenden**
- Starten: `claude` + Enter
- Beenden: `/exit` + Enter

Nützlich in Claude:

| Eingabe | Wirkung |
|---|---|
| `/` | Liste aller Befehle, weitertippen zum Filtern |
| `/stundenwerk:neuigkeiten` | was ist neu? |
| `/memory` | geladene CLAUDE.md-Dateien |
| `/plugin` | Plugins und Updates verwalten |
| `/status` | aktive Einstellungen |
| `/clear` | neues Gespräch im selben Ordner (bei Themenwechsel) |
| `Esc` | Claude unterbrechen |
| Pfeil ↑ | letzte Eingabe wiederholen |

Du kannst Claude auch in normaler Sprache sagen, was es tun soll, etwa *„Zeig mir, welche Dateien in diesem Ordner liegen“* oder *„Öffne mir die KA2 als Word-Datei.“*

---

## Anhang B: Pflege, Versionen, Verteilung

*Dieser Teil ist für die Person, die das Paket pflegt, etwa Medienbeauftragte oder Fachschaftsleitung. Lehrkräfte brauchen ihn nicht.*

### B.1 Aufbau

```text
Stundenwerk.skill/                       ← dieses Repo = Plugin-Marketplace
├── .claude-plugin/marketplace.json      ← Katalog: Marketplace „stundenwerk“, Plugin „stundenwerk“
├── plugins/stundenwerk/
│   ├── .claude-plugin/plugin.json       ← Name, VERSION, Beschreibung, Links fürs Verzeichnis
│   ├── .claude-plugin/icon.png          ← Icon im Claude-Verzeichnis
│   ├── README.md, LICENSE               ← Beschreibung und Lizenz fürs Verzeichnis
│   └── skills/<name>/SKILL.md           ← die Befehle (/stundenwerk:<name>)
├── vorlage/                             ← Schulordner-Vorlage inkl. /einrichten, Rules, Settings
│   └── einrichtung/marketplace-quelle.txt  ← Repo-Adresse für /einrichten
├── CHANGELOG.md, ROADMAP.md
├── DATENSCHUTZ.md                       ← Datenschutzerklärung
├── LICENSE, LIZENZ.md                   ← CC BY-NC-SA 4.0 · Kurzfassung
├── KOMMERZIELL.md, MARKE.md            ← Firmenlizenz/Kooperation · Name/Logo
├── BEITRAGSVEREINBARUNG.md             ← Voraussetzung für Beiträge (Doppellizenz)
└── README.md
```

Die Aufteilung hat drei Gründe:
- Die Skills liegen im Plugin, damit sie zentral gepflegt und über den Marketplace aktualisiert werden.
- Rules und Settings liegen in der Vorlage, weil Plugins keine Rules oder CLAUDE.md mitbringen können und aus der Plugin-`settings.json` nur wenige Schlüssel übernommen werden. `/einrichten` installiert sie deshalb einmalig.
- `/einrichten` ist ein Projekt-Skill der Vorlage und funktioniert deshalb schon, bevor das Plugin installiert ist.

### B.2 Wo Stundenwerk veröffentlicht ist
- GitHub: https://github.com/stundenwerk-skill/Stundenwerk.skill (öffentlich). Lehrkräfte brauchen kein GitHub-Konto, Updates laufen ohne Anmeldung. Das Repo enthält keine personenbezogenen Daten.
- Claude-Verzeichnis: Das Plugin ist über das Entwicklerportal unter claude.ai/directory/manage eingereicht (Ordner `plugins/stundenwerk`, Branch `main`). Nach der Freigabe finden Lehrkräfte es direkt in Claude. Neue Commits auf `main` holt das Verzeichnis etwa alle 6 Stunden ab; mit der Claude GitHub App geht es schneller.
- Lehrkräfte bekommen den Link zur ZIP (`Code → Download ZIP`) und diese README.

Wer eine eigene Kopie für seine Schule betreibt, trägt die eigene Repo-Adresse in `vorlage/einrichtung/marketplace-quelle.txt` ein und passt den `owner` in `.claude-plugin/marketplace.json` an. Veränderte Fassungen brauchen einen eigenen Namen (siehe `MARKE.md`). `scripts/github-einrichten.sh` setzt Beschreibung, Topics und Release eines solchen Repos.

### B.3 Neue Version veröffentlichen
1. Skills in `plugins/stundenwerk/skills/` ändern oder hinzufügen.
2. Die Version in `plugins/stundenwerk/.claude-plugin/plugin.json` erhöhen (z. B. `1.3.0` → `1.4.0`). **Ohne neue Versionsnummer bekommen die Lehrkräfte die Änderung nicht.**
3. `CHANGELOG.md` ergänzen und `plugins/stundenwerk/skills/neuigkeiten/SKILL.md` aktualisieren; das sehen die Lehrkräfte unter `/stundenwerk:neuigkeiten`. Was sie selbst tun müssen, gehört unter „Zu tun“.
4. `claude plugin validate .` ausführen, dann committen und pushen.
5. Optional ein GitHub-Release mit Versionsnummer anlegen. Wer das Repo mit „Watch → Releases“ beobachtet, bekommt eine E-Mail.
6. Kurz über den üblichen Kanal informieren (E-Mail, Moodle, Konferenz).

Zwei Sonderfälle:
- Änderungen an Rules oder Settings erreichen niemanden automatisch. Beschreib sie in `neuigkeiten` unter „Zu tun“: „Neue ZIP laden, `/einrichten` ausführen, Regeln ersetzen.“
- Einen Befehl umbenennen oder entfernen: Für ganze Plugins gibt es in `marketplace.json` das Feld `renames`, für einzelne Skills nicht. Alte Namen fallen einfach weg; erwähne das in `neuigkeiten`.

### B.4 Auto-Update für alle erzwingen (Schulträger, Claude Team oder Enterprise)
Nutzt die Schule Claude über eine Organisation, kann ein Admin über verwaltete Einstellungen (Admin-Konsole von claude.ai oder Geräteverwaltung) den Marketplace für alle registrieren, das Plugin aktivieren und Auto-Update erzwingen. Die Plugin-Installation in `/einrichten` und das manuelle Einschalten entfallen dann:

```json
{
  "extraKnownMarketplaces": {
    "stundenwerk": {
      "source": { "source": "github", "repo": "stundenwerk-skill/Stundenwerk.skill" },
      "autoUpdate": true
    }
  },
  "enabledPlugins": {
    "stundenwerk@stundenwerk": true
  }
}
```

Details: [Manage plugins for your organization](https://code.claude.com/docs/en/plugins/org)

### B.5 Länderprofile pflegen
- Dateien: `plugins/stundenwerk/skills/unterricht/laender/<KÜRZEL>.md` (BW, BY, BE, BB, HB, HH, HE, MV, NI, NW, RP, SL, SN, ST, SH, TH)
- Belegte Angaben stehen ohne Zusatz, alles andere mit „[prüfen]“. Die Quelle gehört in den Commit oder als Kommentar in die Datei.
- Am besten lösen sich „[prüfen]“-Punkte über Rückmeldungen von Lehrkräften auf, die ihre `Landesvorgaben.md` geprüft haben.
- Nach Änderungen: Version erhöhen, `CHANGELOG.md` und `neuigkeiten` ergänzen (siehe B.3).

### B.6 Vor dem Veröffentlichen testen
```bash
claude plugin validate .
claude plugin marketplace add ./          # lokaler Test-Marketplace
claude plugin install stundenwerk@stundenwerk
```
Bei lokal hinzugefügten Marketplaces wirken Änderungen beim nächsten Start oder mit `/reload-plugins`.

---

Offizielle Dokumentation:
[CLAUDE.md & Rules](https://code.claude.com/docs/en/memory) · [Skills](https://code.claude.com/docs/en/skills) · [Settings](https://code.claude.com/docs/en/settings) · [Permissions](https://code.claude.com/docs/en/permissions) · [Plugins](https://code.claude.com/docs/en/plugins) · [Marketplace erstellen](https://code.claude.com/docs/en/plugin-marketplaces) · [Marketplace hosten & Updates](https://code.claude.com/docs/en/plugins/host-marketplace)

*Stundenwerk © 2026 Nedim Boztepe und Mitwirkende · Inhalte: CC BY-NC-SA 4.0 (kostenlos für Lehrkräfte, kommerziell nur mit Lizenz) · Skripte: MIT · Name und Logo: siehe MARKE.md*

*Alle Inhalte sind Arbeitshilfen ohne Gewähr. Maßgeblich sind die jeweils gültigen Vorschriften (Schulgesetze, Verordnungen, Lehrpläne deines Landes) und die Vorgaben deiner Schule.*
