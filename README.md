<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="assets/logo-wordmark-dark.svg">
    <img src="assets/logo-wordmark.svg" alt="Kreide – KI-Kollegium für Lehrkräfte" width="520">
  </picture>
</p>

<h1 align="center">Kreide</h1>

<p align="center"><b>Dein KI-Kollegium für den Schulalltag – in allen 16 Bundesländern.</b><br>
Weniger Vorbereitung am Schreibtisch, mehr Zeit für den Unterricht.</p>

<p align="center">
  <img alt="Version 1.2.0" src="https://img.shields.io/badge/version-1.2.0-2F4A3A">
  <img alt="Claude Code Plugin" src="https://img.shields.io/badge/Claude%20Code-Plugin-F2C14E">
  <img alt="16 Bundesländer" src="https://img.shields.io/badge/Bundesl%C3%A4nder-16-2F4A3A">
  <img alt="25 Befehle" src="https://img.shields.io/badge/Befehle-25-2F4A3A">
  <img alt="Datenschutz eingebaut" src="https://img.shields.io/badge/Datenschutz-eingebaut-2F4A3A">
</p>

<p align="center"><i>KI für Lehrerinnen und Lehrer · Unterrichtsvorbereitung · Klassenarbeiten mit Erwartungshorizont · Differenzierung · Vertretungsstunden · Elternbriefe · Lehrplanbezug für alle Bundesländer</i></p>

Kreide ist ein Paket für **Claude Code**: Es kennt deine Fächer, Klassen, Stoffverteilungspläne und Schulvorgaben und erstellt daraus Klassenarbeiten, Stunden, Differenzierungen, Elternbriefe und vieles mehr. Für alle Bundesländer, Schularten und Fächer. Ohne Programmierkenntnisse, mit automatischen Updates.

---

## Inhalt

0. [Was ist in diesem Paket?](#0-was-ist-in-diesem-paket)
1. [Grundidee](#1-grundidee)
2. [Einrichtung in 15 Minuten](#2-einrichtung-in-15-minuten)
3. [Updates und Neuigkeiten](#3-updates-und-neuigkeiten)
4. [Ordnerstruktur](#4-ordnerstruktur)
5. [Die drei CLAUDE.md-Ebenen](#5-die-drei-claudemd-ebenen)
6. [Rules: Regeln für bestimmte Ordner](#6-rules-regeln-für-bestimmte-ordner)
7. [Befehlsreferenz](#7-befehlsreferenz)
8. [Arbeitsabläufe: Befehle kombinieren](#8-arbeitsabläufe-befehle-kombinieren)
9. [Material aufbereiten: Lehrplan, Stoffverteilung, Logbuch](#9-material-aufbereiten)
10. [Datenschutz](#10-datenschutz)
11. [Befehle anpassen und eigene schreiben](#11-befehle-anpassen-und-eigene-schreiben)
12. [Tipps für optimale Ergebnisse](#12-tipps-für-optimale-ergebnisse)
13. [Häufige Probleme](#13-häufige-probleme)
14. [Checkliste](#14-checkliste)
- [Anhang A: Terminal-Mini-Kurs](#anhang-a-terminal-mini-kurs)
- [Anhang B: Für Verantwortliche – Pflege, Versionen, Verteilung](#anhang-b-für-verantwortliche--pflege-versionen-verteilung)

---

## 0. Was ist in diesem Paket?

| Teil | Was es ist | Für wen |
|---|---|---|
| `vorlage/` | **Dein Schulordner**: Vorlagen für dich, deine Fächer und Klassen, Regeln, Datenschutz-Einstellungen und der Befehl `/einrichten` | Lehrkräfte: wird zu `Schule` umbenannt |
| `plugins/kreide/` | **Das Plugin „Kreide“** mit 25 Skills (`/kreide:stunde`, `/kreide:klassenarbeit` …). Wird bei der Einrichtung installiert und **aktualisiert sich automatisch** | wird installiert, nicht angefasst |
| `.claude-plugin/marketplace.json` | Katalog, über den Claude Code das Plugin findet und Updates bezieht | Verantwortliche |
| `CHANGELOG.md` | Liste aller Änderungen | alle |
| `README.md` | diese Anleitung | alle |

---

## 1. Grundidee

**Zwei Teile, die sich ergänzen:**

| Teil | Wo | Ändert sich … |
|---|---|---|
| **Dein Wissen**: Schule, Fächer, Klassen, Logbuch, Stoffverteilung | Schulordner (`CLAUDE.md`-Dateien und deine Dateien) | durch dich |
| **Die Befehle**: wie man eine Klassenarbeit, Stunde, Vertretung … erstellt | Plugin `kreide` | durch Updates, automatisch |

Claude Code liest beim Start die `CLAUDE.md`-Dateien **des Ordners, in dem du startest, und aller übergeordneten Ordner**. Startest du in `Mathematik/Klasse-7b`, kennt es:

| Ebene | Datei | Inhalt |
|---|---|---|
| Du & Schule | `Schule/CLAUDE.md` | Schulart, Fächer, Arbeitsweise, Datenschutz |
| Fach | `Schule/Mathematik/CLAUDE.md` | Lehrwerk, Fachschaftsbeschlüsse, Stil |
| Klasse | `Schule/Mathematik/Klasse-7b/CLAUDE.md` | anonymes Klassenprofil, Niveau, Besonderheiten |

Du tippst nur:

```text
/kreide:klassenarbeit Lineare Funktionen 45
```

Claude liest dann selbst Logbuch, Stoffverteilungsplan, Lehrplan-Auszug und Beispiele und legt die fertigen Dateien im richtigen Ordner ab. Du kannst auch einfach in normaler Sprache schreiben: *„Mach mir eine Klassenarbeit zu linearen Funktionen, 45 Minuten.“* Claude nimmt dann den passenden Befehl selbst.

> **Tipp:** Tippe `/` und die ersten Buchstaben, z. B. `/klass`. Claude zeigt dir passende Befehle zur Auswahl.

---

## 2. Einrichtung in 15 Minuten

Du brauchst **keine** Programmierkenntnisse. Neu im Terminal? Dann zuerst [Anhang A](#anhang-a-terminal-mini-kurs) lesen (2 Minuten).

### Schritt 1: Claude Code installieren
Anleitung: https://code.claude.com/docs. Du brauchst ein Claude-Konto.

### Schritt 2: Paket entpacken und Schulordner anlegen
1. ZIP-Datei herunterladen (von GitHub: grüner Knopf **„Code“ → „Download ZIP“**, oder von der Person, die das Paket verteilt)
2. Doppelklick zum Entpacken
3. Darin den Ordner **`vorlage`** suchen, in **`Schule`** umbenennen und dorthin verschieben, wo er bleiben soll, z. B. in **Dokumente**

> Nur in einen Cloud-Ordner (iCloud, OneDrive, Dropbox …), wenn deine Schule das erlaubt.

### Schritt 3: Claude im Ordner `Schule` starten
- Terminal öffnen, `cd ` tippen (mit Leerzeichen), den Ordner `Schule` ins Fenster **ziehen**, Enter drücken
- `claude` tippen, Enter drücken
- Beim ersten Start fragt Claude, ob du dem Ordner vertraust → **Ja**

### Schritt 4: `/einrichten` tippen

```text
/einrichten
```

Claude erledigt alles Schritt für Schritt und fragt vorher nach:
1. **Prüft, ob alles da ist**, und hilft, falls ein kleines Hilfsprogramm (git) für Updates fehlt
2. **Installiert das Plugin „Kreide“** mit allen Befehlen
3. **Installiert die Regeln** für Datenschutz, Klassenarbeiten und Arbeitsblätter
4. **Richtet Zugriff und Datenschutz-Sperren ein**, damit Claude den Schulordner lesen darf und Schülerdaten gesperrt bleiben
5. **Stellt dir bis zu 8 kurze Fragen**: Schulart, Fächer, Klassen, Klassenleitung …
6. **Füllt die Vorlagen aus und legt deine Fach- und Klassenordner an**

Bestätige jeden Schritt mit **Ja**, wenn Claude fragt.

### Schritt 5: Neu starten, Auto-Update einschalten, testen
1. Claude beenden: `/exit`
2. Claude wieder starten (`claude`) und **Auto-Update einschalten**:
   ```text
   /plugin
   ```
   → **Marketplaces** → **kreide** → **Enable auto-update**
3. In einen Klassenordner wechseln, Claude starten und testen:
   ```text
   /memory                         ← zeigt, welche CLAUDE.md-Dateien geladen sind
   /kreide:einstieg Bruchrechnung
   ```

**Fertig.** Danach nach und nach Lehrplan-Auszüge und eigene Beispiele ergänzen (Abschnitt 9). Das macht die Ergebnisse deutlich besser.

<details>
<summary><b>Manuell einrichten (für Fortgeschrittene)</b></summary>

```bash
# Plugin mit Updates
claude plugin marketplace add NAME/kreide
claude plugin install kreide@kreide
# dann in Claude: /plugin → Marketplaces → kreide → Enable auto-update

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

- `additionalDirectories`: Claude darf den ganzen Schulordner ohne Rückfrage **lesen**, auch beim Start im Klassenordner
- `deny`: sperrt Schülerdaten überall
- Prüfen mit `/status` („Setting sources“ muss „User settings“ enthalten)

</details>

---

## 3. Updates und Neuigkeiten

### Automatisch
Mit eingeschaltetem **Auto-Update** (Abschnitt 2, Schritt 5) prüft Claude Code nach dem Start im Hintergrund, ob es eine neue Version der Befehle gibt, und lädt sie. **Du musst nichts tun.** Deine eigenen Dateien (Profile, Logbücher, Klassenarbeiten) werden dabei **nie** verändert.

### Was ist neu?

```text
/kreide:neuigkeiten
```

zeigt die aktuelle Version, was sich geändert hat und ob du etwas tun musst. Claude bietet an, es gleich zu erledigen.

### Von Hand aktualisieren
Falls Auto-Update aus ist oder du sofort die neueste Version willst:

```text
/plugin marketplace update kreide
```

Danach Claude neu starten.

### Wie erfahre ich von Updates?
- Die Person, die das Paket verteilt, informiert über den üblichen Weg (E-Mail, Moodle, Messenger, Konferenz)
- Mit GitHub-Konto: im Repo oben **„Watch“ → „Custom“ → „Releases“** wählen. Dann kommt bei jeder neuen Version eine E-Mail
- `CHANGELOG.md` im Repo listet alle Änderungen

### Was wird nicht automatisch aktualisiert?
- **Regeln** (`~/.claude/rules/`) und **Einstellungen**: Ändern sich selten. Wenn doch, steht es unter `/kreide:neuigkeiten` → „Zu tun“. Dann neue ZIP laden, im **neuen** `vorlage`-Ordner Claude starten und `/einrichten` ausführen, bei den Regeln **ersetzen** wählen. Deine Daten bleiben im bisherigen `Schule`-Ordner unberührt.
- **Vorlagen im Schulordner** (z. B. `_Schule/Vorlagen/`): Das sind deine Dateien, die bleiben, wie du sie angepasst hast.

---

## 4. Ordnerstruktur

Mit ⚙ markierte Ordner **legen die Befehle selbst an und befüllen sie**.

```text
Schule/                                   ← dein Schulordner (aus „vorlage“)
├── CLAUDE.md                             ← du, Schule, Grundregeln
├── CLAUDE.local.md                       ← optional, private Notizen
├── .claude/                              ← /einrichten, Regeln, Sperren
├── einrichtung/                          ← Hilfsdateien für /einrichten
├── Backup/                             ⚙ /kreide:sichern
│
├── _Schule/                              ← schulweite Vorgaben
│   ├── Notenschluessel-Fachschaften.md
│   ├── Jahresplan-2026-27.md
│   ├── Vorlagen/                         ← KA-Kopf, Stundenentwurf, Briefkopf
│   ├── Protokolle/                     ⚙ /kreide:protokoll
│   └── Wochenplaene/                   ⚙ /kreide:wochenplan
│
├── Mathematik/                         ⚙ /kreide:neue-klasse (ein Ordner pro Fach)
│   ├── CLAUDE.md                         ← Fachregeln, Lehrwerk, Fachschaftsbeschlüsse
│   ├── _Lehrplan/                    ← Auszüge als Markdown
│   ├── _Beispiele/                       ← eigene gelungene Arbeiten („Goldstandard“)
│   └── Klasse-7b/                      ⚙ /kreide:neue-klasse (ein Ordner pro Lerngruppe)
│       ├── CLAUDE.md                     ← Klassenprofil (anonym!)
│       ├── Stoffverteilungsplan.md
│       ├── Logbuch.md                  ⚙ /kreide:logbuch
│       ├── Einheiten/
│       │   └── 03-Lineare-Funktionen/  ⚙ /kreide:einheit
│       │       ├── Planung.md
│       │       ├── Stunden/            ⚙ /kreide:stunde, :tafelbild, :exit-ticket
│       │       └── Arbeitsblaetter/    ⚙ /kreide:stunde, :differenzieren
│       ├── Klassenarbeiten/
│       │   ├── KA2-Lineare-Funktionen/ ⚙ /kreide:klassenarbeit, :fehleranalyse, :berichtigung, :lernlandkarte
│       │   └── KT-2026-11-20-Steigung/ ⚙ /kreide:kurztest
│       ├── Vertretung/                 ⚙ /kreide:vertretung
│       ├── Praesentation/              ⚙ /kreide:praesentation
│       └── Pruefung/                   ⚙ /kreide:pruefung
│
└── Klassenleitung-7b/                  ⚙ /einrichten
    ├── Elternbriefe/                   ⚙ /kreide:elternbrief
    ├── Elterngespraeche/Vorlagen/      ⚙ /kreide:elterngespraech (nur Vorlagen)
    └── Ausfluege/                      ⚙ /kreide:ausflug
```

> ⚠️ **Schülerdaten gehören NICHT in diesen Ordner.** Notenlisten, Namen, Förderpläne, Gutachten, Fotos usw. bleiben im dienstlichen System deiner Schule. Die Sperren sind nur ein zusätzliches Sicherheitsnetz.

**Namenskonventionen** (die Befehle verlassen sich darauf):
- Fächer: `Mathematik/`, `Deutsch/` … · Klassen: `Klasse-7b/`, Kurse: `Kurs-J1-Mathe/` …
- Dateien: `JJJJ-MM-TT_Thema.md`, keine Umlaute, keine Leerzeichen
- Lösungen immer separat: `…_Loesung.md`

---

## 5. Die drei CLAUDE.md-Ebenen

`/einrichten` und `/kreide:neue-klasse` füllen diese Dateien mit dir aus. Du kannst sie jederzeit ändern (einfache Textdateien) oder Claude bitten: *„Ergänze im Klassenprofil, dass Gruppenarbeit nach der 6. Stunde schlecht klappt.“*

### 5.1 `CLAUDE.md` (Schulordner): du und deine Schule
- Schulart, Ort, Fächer, Klassenleitung, Anrede (du/Sie)
- **Bundesland** (danach richten sich Lehrplan, Begriffe und Regeln)
- Grundregeln: Lehrplan und Vorgaben des Landes, Operatoren, keine erfundenen Standards
- Arbeitsweise: Dateien speichern, Dateinamen, Lösungen separat
- Verweise mit `@_Schule/…` auf kurze, immer wichtige Dateien (Notenschlüssel, Jahresplan)

> `@pfad` bindet eine Datei **immer** ein. Nur für kurze Dateien nutzen. Beim ersten Mal fragt Claude Code einmal nach Bestätigung.

### 5.2 `Fach/CLAUDE.md`: das Fach
- Lehrwerk(e) je Klassenstufe, Kompetenzbereiche laut Lehrplan des Landes
- Fachschaftsbeschlüsse: Notenschlüssel, Anzahl Klassenarbeiten, Hilfsmittel
- Stil: Kontexte, AFB-Verteilung, Layoutwünsche

### 5.3 `Klasse/CLAUDE.md`: das Klassenprofil (**anonym!**)
- Schulart, Niveau bzw. Bildungsgang (Bezeichnungen des Landes), Wochenstunden, Doppelstunden
- Lerngruppe **auf Klassenebene**: Anzahl, Förderbedarfe (ohne Namen), DaZ, Leistungsspitze
- Was methodisch funktioniert und was nicht

**Faustregeln:** Jede CLAUDE.md unter ca. 200 Zeilen. Konkret statt allgemein („Aufgabentexte max. 2 Sätze“ statt „einfach formulieren“).

---

## 6. Rules: Regeln für bestimmte Ordner

Rules sind kurze Regeldateien, die `/einrichten` nach `~/.claude/rules/` installiert. Eine Rule **mit** `paths:` lädt nur in passenden Ordnern, eine Rule **ohne** `paths:` gilt immer.

| Datei | Gilt | Inhalt |
|---|---|---|
| `datenschutz.md` | immer | keine personenbezogenen Daten, Platzhalter, keine Notenentscheidungen |
| `klassenarbeiten.md` | Ordner `Klassenarbeiten` | KA-Kopf, Operator + AFB + Punkte, Summe prüfen, Version B, Erwartungshorizont separat |
| `arbeitsblatt-layout.md` | Ordner `Arbeitsblaetter` | Kopfzeile, Operatoren fett, Platz zum Schreiben, ★-Aufgabe, Lösung separat |

Eigene Rule? Sag Claude z. B.: *„Leg eine Rule an: In Deutsch-Klassenarbeiten Bewertung Inhalt 50 %, Aufbau 20 %, Sprache 30 %.“*

---

## 7. Befehlsreferenz

**So funktionieren die Befehle:** `/kreide:name` und danach deine Angaben. Claude nutzt passende Befehle auch **von selbst**, wenn deine Bitte passt. Ausnahmen: `/einrichten` und `/kreide:sichern` laufen nur auf ausdrücklichen Aufruf.

**Wo starten?** Fast alle im **Klassenordner**. Ausnahmen stehen dabei.

### 7.1 Einrichtung und Verwaltung

| Befehl | Start | Was er tut |
|---|---|---|
| `/einrichten` | im Schulordner | Ersteinrichtung bzw. Aktualisierung: Plugin, Regeln, Zugriff und Sperren, Interview, Ordner anlegen |
| `/kreide:neuigkeiten` | überall | was in der aktuellen Version neu ist und was zu tun ist |
| `/kreide:neue-klasse [Fach] [Klasse] …` | im Schulordner | z. B. `/kreide:neue-klasse Deutsch 5a Realschule M 5 Std.`: legt Fach (falls nötig) und Klassenordner mit Profil, Stoffverteilungsplan, Logbuch an |
| `/kreide:sichern [Ziel]` | im Schulordner | datierte ZIP-Sicherung in `Backup/`, ohne Schülerdaten-Ordner, behält die letzten 10 |

### 7.2 Grundlage

| Skill | Was er tut |
|---|---|
| `kreide:unterricht` | Grundwissen für alle Länder (KMK-Bildungsstandards, Operatoren/AFB, Abschlüsse, Datenschutz) **plus Länderprofil** deines Bundeslandes (Lehrplan, Schularten, Leistungsnachweise). **Kein Aufruf nötig**, Claude nutzt ihn automatisch. Siehe Abschnitt 7.7. |

### 7.3 Planung

| Befehl | Beispiel | Liest | Erzeugt |
|---|---|---|---|
| `/kreide:einheit [Thema] [Std.]` | `/kreide:einheit Lineare Funktionen 14` | Stoffverteilung, Profil, Lehrplan, Jahresplan | `Einheiten/NN-Thema/Planung.md` mit Stundenfolge, Leistungsfeststellung, Differenzierung |
| `/kreide:stunde [Thema] [Min.]` | `/kreide:stunde Steigungsdreieck 90` | Profil, Logbuch (letzte 5), Lehrplan, Beispiele | `Stunden/JJJJ-MM-TT_Thema.md` (Verlaufsplan) und `Arbeitsblaetter/AB_Thema.md` mit Lösung |
| `/kreide:einstieg [Thema]` | `/kreide:einstieg Prozentrechnung` | Profil | **nur Chat:** 3 Einstiege (Problem · Bild/Objekt · Provokation) mit Empfehlung |
| `/kreide:tafelbild [Thema/Datei]` | `/kreide:tafelbild Steigung` | Stundenplanung | `…_Tafelbild.md` mit Merksatz, Beispiel, Farben und Lückentext-Variante |
| `/kreide:differenzieren [Datei] [Varianten]` | `/kreide:differenzieren Arbeitsblaetter/AB_Steigung.md G E DaZ` | Arbeitsblatt, Profil | `…_G.md`, `…_E.md`, `…_DaZ.md` und eine gemeinsame Lösung |
| `/kreide:vertretung [Klasse] [Fach] [Dauer]` | `/kreide:vertretung 7b Mathe 45` | Logbuch | `Vertretung/Datum_Klasse/`: Ablaufzettel, Arbeitsblatt, Lösung |
| `/kreide:wochenplan [KW]` | **Start im Schulordner** | Jahresplan, alle Logbücher und Stoffverteilungspläne | `_Schule/Wochenplaene/KW-NN.md` mit To-do-Liste und passenden Befehlen |
| `/kreide:logbuch [Notiz]` | `/kreide:logbuch Steigung geübt, AB4, HA S. 85/6` | – | neue Zeile in `Logbuch.md` und ein Hinweis für die nächste Stunde |

### 7.4 Leistungsfeststellung

| Befehl | Beispiel | Liest | Erzeugt |
|---|---|---|---|
| `/kreide:klassenarbeit [Thema] [Min.]`<br>(Bayern: Schulaufgabe) | `/kreide:klassenarbeit Lineare Funktionen 45` | Länderprofil, Profil, Stoffverteilung, Logbuch (letzte 10), Lehrplan, Beispiele, Notenschlüssel | `Klassenarbeiten/KAx-Thema/`: `KA.md`, `KA_B.md`, `Erwartungshorizont.md`, `Uebersicht.md` |
| `/kreide:kurztest [Thema] [Min.]`<br>(BW: Wiederholungsarbeit, BY: Stegreifaufgabe/Kurzarbeit) | `/kreide:kurztest Steigung 15` | Länderprofil, Logbuch (letzte 3–5) | `Klassenarbeiten/KT-Datum-Thema/`: `Test.md`, `Test_B.md`, `Loesung.md` |
| `/kreide:exit-ticket [Thema]` | `/kreide:exit-ticket Steigung ablesen` | Logbuch bzw. Stunde | `…_ExitTicket.md`: 3 Fragen, Version A/B, Auswertungshilfe |
| `/kreide:lernlandkarte [Thema]` | `/kreide:lernlandkarte KA2 Lineare Funktionen` | Stoffverteilung, Logbuch, KA-Übersicht | `Lernlandkarte.md` („Ich kann …“-Tabelle mit Übungsverweisen) |
| `/kreide:praesentation [Thema] [Form]`<br>(BW: GFS, SN: Komplexe Leistung …) | `/kreide:praesentation Funktionen im Alltag Präsentation` | Länderprofil, Profil, Stoffverteilung, Schulvorgaben | `Praesentation/`: Themenliste, Anforderungen, Bewertungsbogen, Kolloquium-Leitfaden |
| `/kreide:pruefung [Abschluss] [Fach] [Thema]` | `/kreide:pruefung MSA Mathematik gesamt` | Länderprofil, Lehrplan, Jahresplan, Prüfungsvorgaben | `Pruefung/`: Themenüberblick, Wiederholungsplan, Übungsaufgaben, Lösungen, Tipps |

> Bei Klassenarbeiten und Kurztests prüft Claude, ob alles laut Logbuch unterrichtet wurde, und nutzt Begriffe und Regeln deines Landes (z. B. Ankündigung, Höchstzahl pro Tag/Woche) aus dem Länderprofil bzw. aus `_Schule/Landesvorgaben.md`.

### 7.5 Korrektur und Rückmeldung (immer anonym)

| Befehl | Beispiel | Erzeugt |
|---|---|---|
| `/kreide:feedback [Stichworte]` | `/kreide:feedback Einleitung gut, Argumente ohne Beispiele, Schluss fehlt` | **nur Chat:** Rückmeldetext (Gelungen · Daran arbeiten · Tipp), keine Note |
| `/kreide:fehleranalyse [KA-Ordner] [Stichworte]` | `/kreide:fehleranalyse Klassenarbeiten/KA2-… A3b: 15/27 verwechseln m und b` | `Fehleranalyse.md`: Fehler nach Ursache, Förderaufgaben, Plan für die nächsten Stunden |
| `/kreide:berichtigung [KA-Ordner]` | `/kreide:berichtigung Klassenarbeiten/KA2-Lineare-Funktionen` | `Berichtigung.md` (gestufte Tipps und ähnliche Aufgaben) und Lösungen |

### 7.6 Klassenleitung und Organisation

| Befehl | Beispiel | Start | Erzeugt |
|---|---|---|---|
| `/kreide:elternbrief [Anlass, Fakten]` | `/kreide:elternbrief Elternabend 3.12. 19 Uhr Raum 112` | `Klassenleitung-…` | `Elternbriefe/Datum_Anlass.md` mit Briefkopf und Rückmeldeabschnitt, auf Wunsch in Leichter Sprache oder übersetzt |
| `/kreide:elterngespraech [Anlass]` | `/kreide:elterngespraech Leistungsabfall, Hausaufgaben fehlen` | `Klassenleitung-…` | **Chat:** Leitfaden, Formulierungshilfen, Protokollvorlage, nur Platzhalter |
| `/kreide:protokoll [Sitzung] [Stichpunkte]` | `/kreide:protokoll Fachkonferenz Mathe: TOP1 …` | Schulordner | `_Schule/Protokolle/Datum_Art.md` (Klassenkonferenzen nur im Chat) |
| `/kreide:ausflug [Art] [Ziel] [Datum] [Klasse]` | `/kreide:ausflug Exkursion Wilhelma 14.05. 7b` | `Klassenleitung-…` | `Ausfluege/Datum_Ziel/`: Planung, Checkliste, Kosten, Elternbrief, Arbeitsauftrag |

### 7.7 Bundesländer: so passt sich Kreide an dein Land an

Kreide bringt für **jedes der 16 Länder ein Länderprofil** mit (`plugins/kreide/skills/unterricht/laender/`). Claude liest es automatisch anhand der Zeile `Bundesland:` in deiner `CLAUDE.md` und verwendet dann die Begriffe und Regeln deines Landes.

| Land | Lehrplan heißt … | Große schriftliche Arbeit | Erster / Mittlerer Abschluss |
|---|---|---|---|
| Baden-Württemberg | Bildungsplan | Klassenarbeit | Hauptschulabschluss / Realschulabschluss |
| Bayern | LehrplanPLUS | **Schulaufgabe** | Erfolgreicher Abschluss der Mittelschule / Realschulabschluss bzw. Mittlerer Schulabschluss |
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

**Wie verlässlich sind die Profile?** Belegte Angaben stehen ohne Zusatz. Was nicht sicher belegt ist (z. B. Höchstzahl von Arbeiten pro Woche in manchen Ländern), ist mit **„[prüfen]“** markiert. Claude gibt solche Punkte nicht als Tatsache aus, sondern kennzeichnet sie im Material.

**Dein Land genauer machen:**
1. Trage geprüfte Regeln in **`_Schule/Landesvorgaben.md`** ein (mit Quelle). Die haben Vorrang vor dem Länderprofil.
2. Oder lass Claude helfen: *„Prüfe die [prüfen]-Punkte meines Länderprofils auf den offiziellen Seiten meines Landes und trage die Ergebnisse mit Quelle in Landesvorgaben.md ein.“*
3. Fehler im Länderprofil? Melde sie der Person, die Kreide pflegt. Dann sind sie mit dem nächsten Update für alle korrigiert.

---

## 8. Arbeitsabläufe: Befehle kombinieren

### 8.1 Schuljahresbeginn
1. Altes Schuljahr sichern: `/kreide:sichern`, dann Claude bitten: *„Verschiebe alle Klassenordner in Archiv/2025-26.“*
2. `_Schule/Jahresplan-…md` mit Ferien und Terminen füllen (Claude kann eine Vorlage erstellen)
3. Für jede neue Lerngruppe: `/kreide:neue-klasse Mathematik 5c Gymnasium 4 Std.`
4. Stoffverteilungsplan: *„Entwirf den Stoffverteilungsplan für die 5c nach Lehrplan und Jahresplan.“*
5. Erste Einheit: `/kreide:einheit …`

### 8.2 Zyklus einer Unterrichtseinheit

```text
/kreide:einheit Lineare Funktionen 14         → Planung.md
  └─ pro Stunde:
     /kreide:einstieg …                       → Ideen (Chat)
     /kreide:stunde …                         → Verlauf + Arbeitsblatt
     /kreide:differenzieren Arbeitsblaetter/… → G/E/DaZ-Fassungen
     /kreide:tafelbild …                      → Hefteintrag
     /kreide:exit-ticket …                    → Lernstandscheck
     /kreide:logbuch …                        → nach der Stunde eintragen (!)
```

### 8.3 Zyklus einer Klassenarbeit

```text
/kreide:kurztest …                            → zwischendurch Stand prüfen
/kreide:lernlandkarte …                       → ca. 1 Woche vorher an die Klasse
/kreide:klassenarbeit …                       → KA, Version B, Erwartungshorizont
   (du korrigierst selbst)
/kreide:feedback …                            → Rückmeldetexte (nacheinander, anonym)
/kreide:fehleranalyse … [Stichworte]          → was lief schief, Förderaufgaben
/kreide:berichtigung …                        → Berichtigungsblatt mit Tipps
/kreide:logbuch KA2 zurückgegeben, Berichtigung als HA
```

### 8.4 Die Woche im Griff
Sonntags im Schulordner:
```text
/kreide:wochenplan
/kreide:sichern
```
→ To-do-Liste mit fertigen Befehlen, z. B. „`/kreide:stunde …` für 7b Dienstag“, „KA 9a ist angekündigt, aber noch nicht erstellt“.

Fällt kurzfristig eine Stunde aus: `/kreide:vertretung 7b Mathe 45`, dann den Ablaufzettel weitergeben.

### 8.5 Präsentationsleistung und Abschlussprüfung
- Präsentationsleistung (z. B. GFS in BW): `/kreide:praesentation` → Themenliste für die Klasse, Bewertungsbogen für dich, Kolloquiumsfragen
- Abschlussklassen: `/kreide:pruefung MSA Deutsch gesamt` (Claude verwendet die Abschlussbezeichnung deines Landes). **Aktuelle Prüfungsvorgaben** in `_Lehrplan/` ablegen!

### 8.6 Klassenleitung
Im Ordner `Klassenleitung-7b`:
```text
/kreide:ausflug Schullandheim Schwarzwald 22.–24.06. 7b
/kreide:elternbrief Infoabend Schullandheim 12.03. 19 Uhr
/kreide:elterngespraech Häufige Verspätungen, Rückzug in der Pause
```

---

## 9. Material aufbereiten

Claude arbeitet am besten mit **Markdown**. Das ist einfacher Text mit `#` für Überschriften und `|` für Tabellen und lässt sich mit jedem Texteditor öffnen. PDFs und Word-Dateien gehen auch, werden aber ungenauer gelesen. **Claude kann sie dir umwandeln.**

| Material | Wohin | Tipp |
|---|---|---|
| **Lehrplan** (Bildungsplan, LehrplanPLUS, Kernlehrplan, Kerncurriculum, Rahmenlehrplan, Fachanforderungen …) | `Fach/_Lehrplan/` | Nur deine Klassenstufen, **Nummerierungen mitkopieren**. Wo es ihn gibt, steht im Länderprofil; Übersicht: bildungsserver.de → Lehrpläne der Bundesländer |
| **Schulinternes Curriculum / Fachcurriculum** | `Fach/_Lehrplan/` | In vielen Ländern Pflicht (z. B. Schleswig-Holstein, NRW) und für Claude sehr hilfreich |
| **Übergangs- und Lesehilfen** (z. B. G9-Umstellung) | `Fach/_Lehrplan/` | wenn dein Land sie herausgibt |
| **Geprüfte Landesregeln** | `_Schule/Landesvorgaben.md` | haben Vorrang vor dem mitgelieferten Länderprofil |
| **Prüfungsvorgaben** | `Fach/_Lehrplan/` | jährlich aktualisieren |
| **Stoffverteilungsplan** | `Klasse/Stoffverteilungsplan.md` | Tabelle: KW, Einheit, Stunden, Kompetenzen/Standards, fächerübergreifende Ziele, Leistung |
| **Schulcurriculum, Fachschaftsbeschlüsse** | `_Schule/` und `Fach/CLAUDE.md` | nur das Verbindliche, kurz |
| **Notenschlüssel** | `_Schule/Notenschluessel-Fachschaften.md` | eine landesweite Prozentvorgabe gibt es nicht, also die Werte deiner Fachschaft eintragen |
| **Eigene gelungene KAs/Stunden** | `Fach/_Beispiele/` | **Der größte Qualitätshebel.** Claude übernimmt Niveau, Länge, Layout |
| **Lehrwerk** | `Fach/CLAUDE.md` | nur Titel und Inhaltsverzeichnis/Seitenzuordnung |

**Umwandeln lassen.** Datei in den Ordner legen und Claude sagen:

```text
Wandle _Lehrplan/BP2016_Mathe.pdf in Markdown um. Behalte nur Klassen 7/8,
alle Standardnummern und Überschriften. Speichere als BP2016-Mathe-SekI-Kl7-8.md.
Lösche das PDF nicht, ich prüfe erst.
```

```text
Wandle meine alte Klassenarbeit _Beispiele/KA_Terme.docx in Markdown um und
entferne alle Namen. Speichere als KA-Beispiel-Kl7-Terme.md.
```

### Das Logbuch, der heimliche Star
Fast alle Befehle lesen das Logbuch. Nach jeder Stunde eine Zeile, am einfachsten mit `/kreide:logbuch`:

```markdown
- 2026-11-24 | Std. 5–6 | Steigungsdreieck eingeführt, AB3 bis Nr. 4 | HA: S. 84/3a–c | fallende Geraden noch unsicher
```

So fragen Klassenarbeiten nichts ab, was gar nicht dran war. Folgestunden knüpfen an, Vertretungen passen zum Stand, und der Wochenplan erkennt, ob du im Plan liegst.

---

## 10. Datenschutz

### 10.1 Technische Sperren
- **Persönliche Einstellungen** (von `/einrichten` angelegt): Lesesperren für `Schuelerdaten/`, `Noten/`, `*Notenliste*`, `Foerderplan*` im ganzen Schulordner, egal wo du startest
- **Schulordner:** `.claude/settings.json` enthält dieselben Sperren als zweite Absicherung
- **Rule `datenschutz.md`:** Claude weist auf eingefügte Namen hin und arbeitet mit Platzhaltern weiter
- **`/kreide:sichern`** lässt diese Ordner aus jeder Sicherung weg

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
- Inhalte, die du Claude gibst, werden zur Verarbeitung an Anthropic übertragen. Für personenbezogene Daten sind die landeseigenen bzw. von der Schule freigegebenen Werkzeuge (z. B. telli; siehe Länderprofil) und die Vorgaben deiner Schule maßgeblich.
- Kläre, ob und wie du auf einem Privatgerät dienstlich arbeiten darfst.
- Schülerarbeiten nur **vollständig anonymisiert** und ohne Handschrift-Fotos verwenden.
- **Noten gibst du.** Alle Bewertungsvorschläge sind Entwürfe.

---

## 11. Befehle anpassen und eigene schreiben

> **Wichtig:** Die Plugin-Befehle (`/kreide:…`) werden bei jedem Update **ersetzt**. Änderungen direkt im Plugin gehen also verloren. Eigene Varianten legst du deshalb als **persönliche Skills** an. Die bleiben bei Updates erhalten.

**Am einfachsten:** Sag Claude, was du willst:

```text
Erstelle mir einen persönlichen Skill /meine-klassenarbeit auf Basis von
/kreide:klassenarbeit, der zusätzlich immer eine Variante mit Hilfekarten
für den Nachteilsausgleich erstellt. Speichere ihn in ~/.claude/skills/.
```

```text
Schreib mir einen persönlichen Skill /quiz nach dem Muster von
/kreide:exit-ticket: 10 Multiple-Choice-Fragen zum aktuellen Thema, als Tabelle.
```

Persönliche Skills liegen in `~/.claude/skills/NAME/SKILL.md` (Windows: `C:\Users\NAME\.claude\skills\`) und heißen ohne Vorsilbe (`/quiz`).

**So ist ein Skill aufgebaut:**

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
| `description` | **Wann** der Skill passt. Danach entscheidet Claude, ob es ihn von selbst nutzt |
| `argument-hint` | Hinweis beim Tippen, z. B. `[Thema] [Minuten]` |
| `$ARGUMENTS` | wird durch alles ersetzt, was du nach dem Befehl tippst |
| `disable-model-invocation: true` | Claude nutzt den Skill **nie von selbst**, nur auf `/name` |

**Gute Idee für alle?** Schick deinen Skill an die Person, die das Paket pflegt. Dann kommt er per Update zu allen.

---

## 12. Tipps für optimale Ergebnisse

1. **Im Klassenordner starten.** Dann sind Schule, Fach und Klasse automatisch geladen.
2. **Beispiele schlagen Beschreibungen.** Zwei gute eigene Klassenarbeiten in `_Beispiele/` bringen mehr als zehn Regeln.
3. **Logbuch konsequent pflegen.** 30 Sekunden mit `/kreide:logbuch` nach jeder Stunde.
4. **Ergebnisse als Dateien speichern lassen.** So wächst dein Materialarchiv von selbst.
5. **Korrekturen zu Regeln machen.** Gefällt dir etwas nicht, sag: *„Nimm das als Regel in die Fach-CLAUDE.md auf.“*
6. **Kurz halten.** CLAUDE.md unter 200 Zeilen.
7. **Regelmäßig `/kreide:sichern`**, und ab und zu die neueste Sicherung extern kopieren.
8. **Drucken/Word:** *„Mach aus KA.md eine Word-Datei mit Schulkopf.“*
9. **Ab und zu `/kreide:neuigkeiten`**, um neue Befehle nicht zu verpassen.
10. **Alles prüfen.** Fachliche Richtigkeit, Lehrplanbezug und Bewertung verantwortest du.

---

## 13. Häufige Probleme

| Problem | Lösung |
|---|---|
| `/kreide:…`-Befehle erscheinen nicht | Claude nach `/einrichten` neu starten. Dann `/plugin` → **Installed**: Ist `kreide` aktiviert? Sonst `/einrichten` erneut ausführen. |
| `/einrichten` erscheint nicht | Claude wurde nicht im Schulordner (umbenannter Ordner `vorlage`) gestartet. Dort starten (Anhang A). |
| `/einrichten` meldet, dass git fehlt | Claude hilft bei der Installation. Alternativ ohne Updates einrichten (Claude bietet das an). |
| Updates kommen nicht an | `/plugin` → Marketplaces → kreide: Ist **auto-update** an? Sonst `/plugin marketplace update kreide` und neu starten. `/kreide:neuigkeiten` zeigt die Version. |
| Claude kennt mein Klassenprofil nicht | Nicht im Klassenordner gestartet. Mit `/memory` prüfen. |
| Claude fragt ständig, ob es `_Schule/` oder `_Lehrplan/` lesen darf | Zugriff fehlt oder der Schulordner wurde verschoben. `/einrichten` erneut ausführen und den Zugriffs-Schritt bestätigen. |
| Lehrplan-Nummern stimmen nicht | Auszug fehlt in `_Lehrplan/`. Claude markiert dann mit „[Lehrplanbezug prüfen]“. |
| Begriffe oder Regeln passen nicht zu meinem Land | Bundesland in der `CLAUDE.md` prüfen. Richtige Angaben in `_Schule/Landesvorgaben.md` eintragen (haben Vorrang) und der Person melden, die Kreide pflegt. |
| Klassenarbeit fragt Unbehandeltes ab | Das Logbuch ist lückenhaft. Nachtragen und neu erzeugen lassen. |
| Ergebnisse zu lang oder zu schwer | Beispiele in `_Beispiele/` ablegen, Regel in die Fach-CLAUDE.md schreiben. |
| Befehl doppelt (`/klassenarbeit` und `/kreide:klassenarbeit`) | Alte Kopie aus Version 1.0. `/einrichten` bietet das Aufräumen an. |
| Meldung „Settings Error“ beim Start | Einstellungsdatei beschädigt. **Mit Claude reparieren** wählen. |
| Datei versehentlich überschrieben | Aus dem neuesten ZIP in `Backup/` wiederherstellen. |

---

## 14. Checkliste

- [ ] Claude Code installiert und angemeldet
- [ ] Ordner `vorlage` in `Schule` umbenannt und an festen Platz verschoben
- [ ] Im Schulordner `/einrichten` vollständig durchlaufen
- [ ] Claude neu gestartet, **Auto-Update eingeschaltet** (`/plugin` → Marketplaces → kreide)
- [ ] Im Klassenordner `/memory` und `/kreide:einstieg …` getestet
- [ ] Notenschlüssel der Fachschaft eingetragen
- [ ] Pro Fach: Lehrplan-Auszug und 1–2 eigene Beispiele
- [ ] Pro Klasse: Stoffverteilungsplan
- [ ] Routinen: `/kreide:logbuch` nach jeder Stunde, `/kreide:sichern` jede Woche

---

## Anhang A: Terminal-Mini-Kurs

Das Terminal ist ein Fenster, in das man Befehle tippt. Du brauchst nur **drei Dinge**.

**1. Terminal öffnen**
- **Mac:** `Cmd + Leertaste`, „Terminal“ tippen, Enter
- **Windows:** Start-Menü, „Terminal“ oder „PowerShell“ tippen, Enter

**2. In einen Ordner wechseln**
`cd ` tippen (mit Leerzeichen!), dann den Ordner aus dem Finder bzw. Explorer **ins Terminal-Fenster ziehen**, Enter drücken.

**3. Claude starten und beenden**
- Starten: `claude` + Enter
- Beenden: `/exit` + Enter

**Nützlich in Claude:**

| Eingabe | Wirkung |
|---|---|
| `/` | Liste aller Befehle, weitertippen zum Filtern |
| `/kreide:neuigkeiten` | was ist neu? |
| `/memory` | geladene CLAUDE.md-Dateien |
| `/plugin` | Plugins und Updates verwalten |
| `/status` | aktive Einstellungen |
| `/clear` | neues Gespräch im selben Ordner (bei Themenwechsel) |
| `Esc` | Claude unterbrechen |
| Pfeil ↑ | letzte Eingabe wiederholen |

**Tipp:** Du kannst Claude in normaler Sprache sagen, was es tun soll: *„Zeig mir, welche Dateien in diesem Ordner liegen“* oder *„Öffne mir die KA2 als Word-Datei.“*

---

## Anhang B: Für Verantwortliche – Pflege, Versionen, Verteilung

*Für die Person, die das Paket pflegt (z. B. Medienbeauftragte, Fachschaftsleitung). Lehrkräfte brauchen diesen Teil nicht.*

### B.1 Aufbau

```text
kreide/                      ← dieses Repo = Plugin-Marketplace
├── .claude-plugin/marketplace.json      ← Katalog: Marketplace „kreide“, Plugin „Kreide“
├── plugins/kreide/
│   ├── .claude-plugin/plugin.json       ← Name, VERSION, Beschreibung
│   └── skills/<name>/SKILL.md           ← die Befehle (/kreide:<name>)
├── vorlage/                             ← Schulordner-Vorlage inkl. /einrichten, Rules, Settings
│   └── einrichtung/marketplace-quelle.txt  ← HIER die eigene Repo-Adresse eintragen
├── CHANGELOG.md
└── README.md
```

Warum so?
- **Skills im Plugin** → zentral pflegbar, Updates über den Marketplace
- **Rules und Settings in der Vorlage** → Plugins können keine Rules oder CLAUDE.md mitbringen, und aus der Plugin-`settings.json` werden nur wenige Schlüssel übernommen. Deshalb installiert `/einrichten` sie einmalig.
- **`/einrichten` als Projekt-Skill der Vorlage** → funktioniert, bevor das Plugin installiert ist

### B.2 Erstveröffentlichung
1. In `vorlage/einrichtung/marketplace-quelle.txt` die eigene Adresse eintragen, z. B. `meine-schule/kreide`
2. In `.claude-plugin/marketplace.json` den `owner` anpassen
3. Prüfen: `claude plugin validate .`
4. Auf GitHub veröffentlichen:
   ```bash
   gh repo create kreide --public --source=. --push
   ```
   **Öffentlich** ist am einfachsten. Lehrkräfte brauchen dann kein GitHub-Konto, Updates laufen ohne Anmeldung. Das Repo enthält keine personenbezogenen Daten. Bei einem **privaten** Repo braucht jede Lehrkraft Lesezugriff und gespeicherte Zugangsdaten auf ihrem Rechner.
5. Auffindbarkeit einrichten (Beschreibung, 20 Topics, Release, Repo-Adresse in den Dateien):
   ```bash
   git tag -a v1.2.0 -m "Kreide 1.2.0" && git push --tags
   bash scripts/github-einrichten.sh NAME/kreide
   ```
   Danach im Browser unter **Settings → Social preview** das Bild `assets/social-preview.png` hochladen.
6. Optional: Kreide im **Plugin-Verzeichnis von Anthropic** einreichen (Einreichungsformular auf claude.com/plugins). Nach einer Prüfung finden Lehrkräfte Kreide dann auch direkt in Claude.
7. Lehrkräften den Link zur ZIP (`Code → Download ZIP`) und diese README schicken

### B.3 Neue Version veröffentlichen
1. Skills in `plugins/kreide/skills/` ändern oder hinzufügen
2. **Version erhöhen** in `plugins/kreide/.claude-plugin/plugin.json` (z. B. `1.1.0` → `1.2.0`). **Ohne neue Versionsnummer bekommen die Lehrkräfte die Änderung nicht.**
3. `CHANGELOG.md` ergänzen **und** `plugins/kreide/skills/neuigkeiten/SKILL.md` aktualisieren (das sehen die Lehrkräfte unter `/kreide:neuigkeiten`). Was die Lehrkräfte selbst tun müssen, gehört unter „Zu tun“.
4. `claude plugin validate .`, dann committen und pushen
5. Optional ein GitHub-Release mit Versionsnummer anlegen. Wer das Repo mit „Watch → Releases“ beobachtet, bekommt eine E-Mail.
6. Kurze Info über den üblichen Kanal (E-Mail, Moodle, Konferenz)

**Sonderfälle:**
- Änderungen an **Rules oder Settings** erreichen niemanden automatisch. In `neuigkeiten` unter „Zu tun“ beschreiben: „Neue ZIP laden, `/einrichten` ausführen, Regeln ersetzen.“
- **Befehl umbenennen oder entfernen:** Für ganze Plugins gibt es in `marketplace.json` das Feld `renames`, für einzelne Skills im Plugin nicht. Alte Namen fallen einfach weg, also in `neuigkeiten` erwähnen.

### B.4 Auto-Update für alle erzwingen (Schulträger / Claude Team oder Enterprise)
Nutzt die Schule Claude über eine Organisation, kann ein Admin über **verwaltete Einstellungen** (claude.ai Admin-Konsole oder Geräteverwaltung) den Marketplace für alle registrieren, das Plugin aktivieren und Auto-Update erzwingen. Dann entfallen die Plugin-Installation in `/einrichten` und das manuelle Einschalten:

```json
{
  "extraKnownMarketplaces": {
    "kreide": {
      "source": { "source": "github", "repo": "meine-schule/kreide" },
      "autoUpdate": true
    }
  },
  "enabledPlugins": {
    "kreide@kreide": true
  }
}
```

Details: [Manage plugins for your organization](https://code.claude.com/docs/en/plugins/org)

### B.5 Länderprofile pflegen
- Dateien: `plugins/kreide/skills/unterricht/laender/<KÜRZEL>.md` (BW, BY, BE, BB, HB, HH, HE, MV, NI, NW, RP, SL, SN, ST, SH, TH)
- Regel: Nur belegte Angaben ohne Zusatz, alles andere mit „[prüfen]“. Quelle im Commit oder als Kommentar nennen.
- Rückmeldungen von Lehrkräften (aus ihren `Landesvorgaben.md`) sind die beste Quelle, um „[prüfen]“-Punkte aufzulösen.
- Nach Änderungen: Version erhöhen, `CHANGELOG.md` und `neuigkeiten` ergänzen (siehe B.3).

### B.6 Testen vor dem Veröffentlichen
```bash
claude plugin validate .
claude plugin marketplace add ./          # lokaler Test-Marketplace
claude plugin install kreide@kreide
```
Bei lokal hinzugefügten Marketplaces wirken Änderungen beim nächsten Start bzw. mit `/reload-plugins`.

---

**Offizielle Dokumentation:**
[CLAUDE.md & Rules](https://code.claude.com/docs/en/memory) · [Skills](https://code.claude.com/docs/en/skills) · [Settings](https://code.claude.com/docs/en/settings) · [Permissions](https://code.claude.com/docs/en/permissions) · [Plugins](https://code.claude.com/docs/en/plugins) · [Marketplace erstellen](https://code.claude.com/docs/en/plugin-marketplaces) · [Marketplace hosten & Updates](https://code.claude.com/docs/en/plugins/host-marketplace)

*Alle Inhalte sind Arbeitshilfen ohne Gewähr. Maßgeblich sind die jeweils gültigen Vorschriften (Schulgesetze, Verordnungen, Lehrpläne deines Landes) und die Vorgaben deiner Schule.*
