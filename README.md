# Claude Code für Lehrkräfte in Baden-Württemberg

**Eine Vorlage, mit der Claude Code deine Fächer, Klassen, Stoffverteilungspläne und Schulvorgaben kennt und daraus Klassenarbeiten, Stunden, Differenzierungen, Elternbriefe und vieles mehr erstellt. Gedacht für alle Schularten und Fächer in BW. Ohne Programmier- oder Git-Kenntnisse.**

---

## Inhalt

0. [Was ist in diesem Paket?](#0-was-ist-in-diesem-paket)
1. [Grundidee](#1-grundidee)
2. [Einrichtung in 15 Minuten](#2-einrichtung-in-15-minuten)
3. [Ordnerstruktur](#3-ordnerstruktur)
4. [Die drei CLAUDE.md-Ebenen](#4-die-drei-claudemd-ebenen)
5. [Rules: Regeln für bestimmte Ordner](#5-rules-regeln-für-bestimmte-ordner)
6. [Skill-Referenz: alle 25 Befehle](#6-skill-referenz-alle-25-befehle)
7. [Arbeitsabläufe: Skills kombinieren](#7-arbeitsabläufe-skills-kombinieren)
8. [Material aufbereiten: Bildungsplan, Stoffverteilung, Logbuch](#8-material-aufbereiten)
9. [Datenschutz](#9-datenschutz)
10. [Skills anpassen und eigene schreiben](#10-skills-anpassen-und-eigene-schreiben)
11. [Tipps für optimale Ergebnisse](#11-tipps-für-optimale-ergebnisse)
12. [Häufige Probleme](#12-häufige-probleme)
13. [Checkliste](#13-checkliste)
- [Anhang A: Terminal-Mini-Kurs](#anhang-a-terminal-mini-kurs)
- [Anhang B: Für Verantwortliche – Verteilung über GitHub](#anhang-b-für-verantwortliche--verteilung-über-github)

---

## 0. Was ist in diesem Paket?

| Pfad | Inhalt |
|---|---|
| `README.md` | diese Anleitung |
| `CLAUDE.md` | Vorlage für deinen persönlichen Kontext (füllt `/einrichten` mit dir aus) |
| `.claude/skills/` | **25 Skills** (Befehle wie `/klassenarbeit`, `/stunde`, `/vertretung` …) |
| `.claude/rules/` | Datenschutz (immer), Regeln für Klassenarbeiten und Arbeitsblätter (ordnerabhängig) |
| `.claude/settings.json` | Lesesperren für Schülerdaten (Projektebene) |
| `einrichtung/` | Vorlage für deine persönlichen Einstellungen (nutzt `/einrichten`) |
| `_Schule/` | Vorlagen: Notenschlüssel, Jahresplan, KA-Kopf, Stundenentwurf, Briefkopf |
| `Mathematik/` | Beispielfach mit `Klasse-7b`, Muster für jedes Fach |
| `Klassenleitung-7b/` | Beispielordner für die Klassenleitung |

---

## 1. Grundidee

Claude Code liest beim Start automatisch die `CLAUDE.md`-Dateien **des Ordners, in dem du startest, und aller übergeordneten Ordner**. Die Befehle (Skills) installiert `/einrichten` einmalig in deinem persönlichen Claude-Ordner, damit sie **überall** funktionieren.

Startest du Claude in `Mathematik/Klasse-7b`, kennt es:

| Ebene | Datei | Inhalt |
|---|---|---|
| Du & Schule | `CLAUDE.md` | Schulart, Fächer, Arbeitsweise, Datenschutz |
| Fach | `Mathematik/CLAUDE.md` | Lehrwerk, Fachschaftsbeschlüsse, Stil |
| Klasse | `Mathematik/Klasse-7b/CLAUDE.md` | anonymes Klassenprofil, Niveau, Besonderheiten |
| Befehle | persönliche Skills | 25 Befehle, alle mit `/` aufrufbar |

Du musst also nichts jedes Mal neu erklären. Du tippst nur:

```text
/klassenarbeit Lineare Funktionen 45
```

Claude liest dann selbst Logbuch, Stoffverteilungsplan, Bildungsplan-Auszug und Beispiele und legt die fertigen Dateien im richtigen Ordner ab.

---

## 2. Einrichtung in 15 Minuten

Du brauchst **keine** Programmier- oder Git-Kenntnisse. Neu im Terminal? Dann zuerst [Anhang A](#anhang-a-terminal-mini-kurs) lesen (2 Minuten).

### Schritt 1: Claude Code installieren
Anleitung: https://code.claude.com/docs. Du brauchst ein Claude-Konto.

### Schritt 2: Paket entpacken
1. ZIP-Datei herunterladen (von GitHub: grüner Knopf **„Code“ → „Download ZIP“**)
2. Doppelklick zum Entpacken
3. Den entpackten Ordner in **`Schule`** umbenennen und dorthin verschieben, wo er bleiben soll, z. B. in **Dokumente**

> Nur in einen Cloud-Ordner (iCloud, OneDrive, Dropbox …), wenn deine Schule das erlaubt.

### Schritt 3: Claude im Ordner `Schule` starten
- Terminal öffnen, `cd ` tippen (mit Leerzeichen), den Ordner `Schule` ins Fenster **ziehen**, Enter drücken
- `claude` tippen, Enter drücken
- Beim ersten Start fragt Claude, ob du dem Ordner vertraust → **Ja**

### Schritt 4: `/einrichten` tippen

```text
/einrichten
```

Claude erledigt dann alles Schritt für Schritt und fragt vorher nach:
1. **Installiert die 25 Befehle und Regeln dauerhaft** in deinem persönlichen Claude-Ordner
2. **Richtet Zugriff und Datenschutz-Sperren ein**, damit Claude den Schulordner lesen darf und Schülerdaten gesperrt bleiben
3. **Stellt dir bis zu 8 kurze Fragen**: Schulart, Fächer, Klassen, Klassenleitung …
4. **Füllt die Vorlagen aus und legt deine Fach- und Klassenordner an**

Bestätige jeden Schritt mit **Ja**, wenn Claude fragt.

### Schritt 5: Neu starten und testen
1. Claude beenden: `/exit` tippen (oder zweimal `Strg + C`)
2. Ins Klassenordner wechseln und Claude neu starten, z. B.:
   ```text
   cd  ← Klassenordner ins Fenster ziehen, Enter
   claude
   ```
3. Testen:
   ```text
   /memory              ← zeigt, welche CLAUDE.md-Dateien geladen sind
   /einstieg Bruchrechnung
   ```

**Fertig.** Danach nach und nach Bildungsplan-Auszüge und eigene Beispiele ergänzen (Abschnitt 8). Das macht die Ergebnisse deutlich besser.

> **Neue Version der Vorlage?** Neue ZIP entpacken, darin Claude starten, `/einrichten` tippen und bei „ersetzen oder behalten?“ **ersetzen** wählen. Deine ausgefüllten Dateien bleiben unangetastet, wenn du weiter in deinem bisherigen `Schule`-Ordner arbeitest.

<details>
<summary><b>Manuell einrichten (ohne /einrichten, für Fortgeschrittene)</b></summary>

1. Inhalt von `Schule/.claude/skills/` nach `~/.claude/skills/` kopieren und `Schule/.claude/rules/` nach `~/.claude/rules/`
2. `einrichtung/user-settings-beispiel.json` nach `~/.claude/settings.json` übernehmen (vorhandene Einträge behalten) und den Pfad anpassen:

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

- Achtung: Der Ordner „Dokumente“ heißt technisch **`Documents`** (Mac und Windows)
- `additionalDirectories` erlaubt Claude, den ganzen Schulordner ohne Rückfrage zu **lesen**, auch wenn du im Klassenordner startest
- `deny` sperrt Schülerdaten überall
- Prüfen mit `/status`: Unter „Setting sources“ muss „User settings“ stehen

</details>

---

## 3. Ordnerstruktur

Mit ⚙ markierte Ordner **legen die Skills selbst an und befüllen sie**.

```text
Schule/                                   ← alles, was Claude sehen darf
├── CLAUDE.md                             ← du, Schule, Grundregeln
├── CLAUDE.local.md                       ← optional, private Notizen
├── .claude/                              ← Original der Skills/Regeln (installiert per /einrichten)
├── einrichtung/
├── Backup/                             ⚙ /sichern
│
├── _Schule/                              ← schulweite Vorgaben
│   ├── Notenschluessel-Fachschaften.md
│   ├── Jahresplan-2026-27.md
│   ├── Schulcurriculum.md                (optional)
│   ├── Vorlagen/                         ← KA-Kopf, Stundenentwurf, Briefkopf
│   ├── Protokolle/                     ⚙ /protokoll
│   └── Wochenplaene/                   ⚙ /wochenplan
│
├── Mathematik/                         ⚙ /neue-klasse (ein Ordner pro Fach)
│   ├── CLAUDE.md                         ← Fachregeln, Lehrwerk, Fachschaftsbeschlüsse
│   ├── _Bildungsplan/                    ← Auszüge als Markdown
│   ├── _Beispiele/                       ← eigene gelungene Arbeiten („Goldstandard“)
│   └── Klasse-7b/                      ⚙ /neue-klasse (ein Ordner pro Lerngruppe)
│       ├── CLAUDE.md                     ← Klassenprofil (anonym!)
│       ├── Stoffverteilungsplan.md
│       ├── Logbuch.md                  ⚙ /logbuch
│       ├── Einheiten/
│       │   └── 03-Lineare-Funktionen/  ⚙ /einheit
│       │       ├── Planung.md
│       │       ├── Stunden/            ⚙ /stunde, /tafelbild, /exit-ticket
│       │       └── Arbeitsblaetter/    ⚙ /stunde, /differenzieren
│       ├── Klassenarbeiten/
│       │   ├── KA2-Lineare-Funktionen/ ⚙ /klassenarbeit, /fehleranalyse, /berichtigung, /lernlandkarte
│       │   └── WH-2026-11-20-Steigung/ ⚙ /wiederholungsarbeit
│       ├── Vertretung/                 ⚙ /vertretung
│       ├── GFS/                        ⚙ /gfs
│       └── Pruefung/                   ⚙ /pruefung (Abschlussklassen)
│
└── Klassenleitung-7b/                  ⚙ /einrichten
    ├── Elternbriefe/                   ⚙ /elternbrief
    ├── Elterngespraeche/Vorlagen/      ⚙ /elterngespraech (nur Vorlagen, keine Inhalte)
    └── Ausfluege/                      ⚙ /ausflug
```

> ⚠️ **Schülerdaten gehören NICHT in diesen Ordner.** Notenlisten, Namen, Förderpläne, Gutachten, Fotos usw. bleiben im dienstlichen System deiner Schule. Die Sperren sind nur ein zusätzliches Sicherheitsnetz.

**Namenskonventionen** (die Skills verlassen sich darauf):
- Fächer: `Mathematik/`, `Deutsch/` … · Klassen: `Klasse-7b/`, Kurse: `Kurs-J1-Mathe/` …
- Dateien: `JJJJ-MM-TT_Thema.md`, keine Umlaute, keine Leerzeichen
- Lösungen immer separat: `…_Loesung.md`

---

## 4. Die drei CLAUDE.md-Ebenen

`/einrichten` und `/neue-klasse` füllen diese Dateien mit dir aus. Du kannst sie jederzeit selbst ändern (sie sind einfache Textdateien) oder Claude bitten: *„Ergänze im Klassenprofil, dass Gruppenarbeit nach der 6. Stunde schlecht klappt.“*

### 4.1 `CLAUDE.md` (Schulordner): du und deine Schule
- Schulart, Ort, Fächer, Klassenleitung
- Anrede in Material (du/Sie)
- Grundregeln: Bildungsplan BW, NVO, Operatoren, keine erfundenen Standards
- Arbeitsweise: Dateien speichern, Dateinamen, Lösungen separat
- Verweise mit `@_Schule/…` auf kurze, immer wichtige Dateien (Notenschlüssel, Jahresplan)

> `@pfad` bindet eine Datei **immer** ein. Nur für kurze Dateien nutzen. Beim ersten Mal fragt Claude Code einmal nach Bestätigung.

### 4.2 `Fach/CLAUDE.md`: das Fach
- Lehrwerk(e) je Klassenstufe (für Seitenverweise, ohne Aufgaben abzuschreiben)
- Kompetenzbereiche/Leitideen des Fachs laut Bildungsplan
- Fachschaftsbeschlüsse: Notenschlüssel, Anzahl Klassenarbeiten, Hilfsmittel
- Stil: Kontexte, AFB-Verteilung, Layoutwünsche

### 4.3 `Klasse/CLAUDE.md`: das Klassenprofil (**anonym!**)
- Schulart, Niveau (G/M/E), Wochenstunden, Doppelstunden
- Lerngruppe **auf Klassenebene**: Anzahl, Förderbedarfe (ohne Namen), DaZ, Leistungsspitze
- Was methodisch funktioniert und was nicht

**Faustregeln:** Jede CLAUDE.md unter ca. 200 Zeilen. Konkret statt allgemein („Aufgabentexte max. 2 Sätze“ statt „einfach formulieren“).

---

## 5. Rules: Regeln für bestimmte Ordner

Rules sind kurze Regeldateien. Eine Rule **mit** `paths:` lädt nur, wenn Claude in passenden Ordnern arbeitet. Eine Rule **ohne** `paths:` gilt immer. `/einrichten` installiert sie nach `~/.claude/rules/`.

| Datei | Gilt | Inhalt |
|---|---|---|
| `datenschutz.md` | immer | keine personenbezogenen Daten, Platzhalter, keine Notenentscheidungen |
| `klassenarbeiten.md` | Ordner `Klassenarbeiten` | KA-Kopf, Operator + AFB + Punkte, Summe prüfen, Version B, Erwartungshorizont separat |
| `arbeitsblatt-layout.md` | Ordner `Arbeitsblaetter` | Kopfzeile, Operatoren fett, Platz zum Schreiben, ★-Aufgabe, Lösung separat |

Eigene Rule? Sag Claude z. B.: *„Leg eine Rule an: In Deutsch-Klassenarbeiten Bewertung Inhalt 50 %, Aufbau 20 %, Sprache 30 %.“*

---

## 6. Skill-Referenz: alle 25 Befehle

**So funktionieren Skills:** Du tippst `/name` und danach deine Angaben. Claude nutzt passende Skills auch **von selbst**, wenn deine Bitte zur Beschreibung passt (z. B. „mach mir eine Vertretungsstunde für die 9a“). Ausnahme: `/einrichten` und `/sichern` laufen nur, wenn du sie ausdrücklich aufrufst.

**Wo starten?** Fast alle Skills im **Klassenordner**. Ausnahmen stehen dabei.

### 6.1 Einrichtung und Verwaltung

| Befehl | Start | Was er tut |
|---|---|---|
| `/einrichten` | im entpackten Ordner `Schule` | Ersteinrichtung bzw. Aktualisierung: Befehle und Regeln installieren, Zugriff und Sperren, Interview, Ordner anlegen |
| `/neue-klasse [Fach] [Klasse] …` | im Schulordner | z. B. `/neue-klasse Deutsch 5a Realschule M 5 Std.`: legt (falls nötig) das Fach und den Klassenordner mit Profil, Stoffverteilungsplan und Logbuch an |
| `/sichern [Ziel]` | überall im Schulordner | datierte ZIP-Sicherung in `Backup/`, ohne Schülerdaten-Ordner, behält die letzten 10 |

### 6.2 Grundlage

| Skill | Was er tut |
|---|---|
| `unterricht-bw` | Wissen zu Bildungsplan BW (inkl. G9 neu, Leitperspektiven), NVO, Operatoren/AFB, Niveaus G/M/E, Datenschutz. **Kein Befehl nötig**, Claude nutzt ihn automatisch. |

### 6.3 Planung

| Befehl | Beispiel | Liest | Erzeugt |
|---|---|---|---|
| `/einheit [Thema] [Stunden]` | `/einheit Lineare Funktionen 14` | Stoffverteilung, Profil, Bildungsplan, Jahresplan | `Einheiten/NN-Thema/Planung.md` mit Stundenfolge, Leistungsfeststellung, Differenzierung |
| `/stunde [Thema] [Min.]` | `/stunde Steigungsdreieck 90` | Profil, Logbuch (letzte 5), Bildungsplan, Beispiele | `Stunden/JJJJ-MM-TT_Thema.md` (Verlaufsplan) und `Arbeitsblaetter/AB_Thema.md` mit Lösung |
| `/einstieg [Thema]` | `/einstieg Prozentrechnung` | Profil | **nur Chat:** 3 Einstiege (Problem · Bild/Objekt · Provokation) mit Empfehlung |
| `/tafelbild [Thema oder Datei]` | `/tafelbild Steigung` | Stundenplanung | `…_Tafelbild.md` mit Merksatz, Beispiel, Farbhinweisen und Lückentext-Variante |
| `/differenzieren [Datei] [Varianten]` | `/differenzieren Arbeitsblaetter/AB_Steigung.md G E DaZ` | Arbeitsblatt, Profil | `…_G.md`, `…_E.md`, `…_DaZ.md` … und eine gemeinsame Lösung |
| `/vertretung [Klasse] [Fach] [Dauer] [Thema]` | `/vertretung 7b Mathe 45` | Logbuch | `Vertretung/Datum_Klasse/`: Ablaufzettel für die Vertretung, Arbeitsblatt, Lösung |
| `/wochenplan [KW]` | `/wochenplan` · **Start im Schulordner** | Jahresplan, alle Logbücher und Stoffverteilungspläne | Übersicht und `_Schule/Wochenplaene/KW-NN.md` mit To-do-Liste und passenden Befehlen |
| `/logbuch [Notiz]` | `/logbuch Steigung geübt, AB4, HA S. 85/6, fallende Geraden unsicher` | – | neue Zeile in `Logbuch.md` und ein Hinweis für die nächste Stunde |

### 6.4 Leistungsfeststellung

| Befehl | Beispiel | Liest | Erzeugt |
|---|---|---|---|
| `/klassenarbeit [Thema] [Min.]` | `/klassenarbeit Lineare Funktionen 45` | Profil, Stoffverteilung, Logbuch (letzte 10), Bildungsplan, Beispiele, Notenschlüssel | `Klassenarbeiten/KAx-Thema/`: `KA.md`, `KA_B.md`, `Erwartungshorizont.md`, `Uebersicht.md` |
| `/wiederholungsarbeit [Thema] [Min.]` | `/wiederholungsarbeit Steigung 15` | Logbuch (letzte 3–5) | `Klassenarbeiten/WH-Datum-Thema/`: `WH.md`, `WH_B.md`, `Loesung.md` |
| `/exit-ticket [Thema]` | `/exit-ticket Steigung ablesen` | Logbuch bzw. Stunde | `…_ExitTicket.md`: 3 Fragen, Version A/B, Auswertungshilfe |
| `/lernlandkarte [Thema]` | `/lernlandkarte KA2 Lineare Funktionen` | Stoffverteilung, Logbuch, KA-Übersicht | `Lernlandkarte.md` („Ich kann …“-Tabelle mit Smileys und Übungsverweisen) |
| `/gfs [Thema] [Form]` | `/gfs Funktionen im Alltag Präsentation` | Profil, Stoffverteilung, Schulvorgaben | `GFS/`: Themenliste, Anforderungen, Bewertungsbogen, Kolloquium-Leitfaden |
| `/pruefung [Abschluss] [Fach] [Thema]` | `/pruefung RSA Mathematik gesamt` | Bildungsplan, Jahresplan, Prüfungsvorgaben | `Pruefung/`: Themenüberblick, Wiederholungsplan, Übungsaufgaben, Lösungen, Tipps |

> Bei `/klassenarbeit` und `/wiederholungsarbeit` prüft Claude, ob alles laut Logbuch unterrichtet wurde. Die NVO-Regeln (Ankündigung, max. 1 KA/Tag, möglichst ≤ 3/Woche) sind in `unterricht-bw` hinterlegt.

### 6.5 Korrektur und Rückmeldung (immer anonym)

| Befehl | Beispiel | Erzeugt |
|---|---|---|
| `/feedback [Stichworte]` | `/feedback Einleitung gut, Argumente ohne Beispiele, Schluss fehlt` | **nur Chat:** Rückmeldetext (Gelungen · Daran arbeiten · Tipp), keine Note |
| `/fehleranalyse [KA-Ordner] [Stichworte]` | `/fehleranalyse Klassenarbeiten/KA2-… A3b: 15/27 verwechseln m und b` | `Fehleranalyse.md`: Fehler nach Ursache, Förderaufgaben, Plan für die nächsten Stunden |
| `/berichtigung [KA-Ordner]` | `/berichtigung Klassenarbeiten/KA2-Lineare-Funktionen` | `Berichtigung.md` (gestufte Tipps und ähnliche Aufgaben) und `Berichtigung_Loesung.md` |

### 6.6 Klassenleitung und Organisation

| Befehl | Beispiel | Start | Erzeugt |
|---|---|---|---|
| `/elternbrief [Anlass, Fakten]` | `/elternbrief Elternabend 3.12. 19 Uhr Raum 112` | `Klassenleitung-…` | `Elternbriefe/Datum_Anlass.md` mit Briefkopf und Rückmeldeabschnitt, auf Wunsch in Leichter Sprache oder übersetzt |
| `/elterngespraech [Anlass]` | `/elterngespraech Leistungsabfall, Hausaufgaben fehlen` | `Klassenleitung-…` | **Chat:** Leitfaden, Formulierungshilfen, Protokollvorlage, nur Platzhalter |
| `/protokoll [Sitzung] [Stichpunkte]` | `/protokoll Fachkonferenz Mathe: TOP1 …` | Schulordner | `_Schule/Protokolle/Datum_Art.md` mit Beschlüssen und Aufgaben (Klassenkonferenzen nur im Chat) |
| `/ausflug [Art] [Ziel] [Datum] [Klasse]` | `/ausflug Exkursion Wilhelma 14.05. 7b` | `Klassenleitung-…` | `Ausfluege/Datum_Ziel/`: Planung, Checkliste, Kosten, Elternbrief, Arbeitsauftrag |

---

## 7. Arbeitsabläufe: Skills kombinieren

### 7.1 Schuljahresbeginn
1. Altes Schuljahr sichern: `/sichern`, dann Claude bitten: *„Verschiebe alle Klassenordner in Archiv/2025-26.“*
2. `_Schule/Jahresplan-…md` mit Ferien und Terminen füllen (Claude kann eine Vorlage erstellen)
3. Für jede neue Lerngruppe: `/neue-klasse Mathematik 5c Gymnasium 4 Std.`
4. Stoffverteilungsplan: *„Entwirf den Stoffverteilungsplan für die 5c nach Bildungsplan und Jahresplan.“*
5. Erste Einheit: `/einheit …`

### 7.2 Zyklus einer Unterrichtseinheit

```text
/einheit Lineare Funktionen 14         → Planung.md
  └─ pro Stunde:
     /einstieg …                       → Ideen (Chat)
     /stunde …                         → Verlauf + Arbeitsblatt
     /differenzieren Arbeitsblaetter/… → G/E/DaZ-Fassungen
     /tafelbild …                      → Hefteintrag
     /exit-ticket …                    → Lernstandscheck
     /logbuch …                        → nach der Stunde eintragen (!)
```

### 7.3 Zyklus einer Klassenarbeit

```text
/wiederholungsarbeit …                 → zwischendurch Stand prüfen
/lernlandkarte …                       → ca. 1 Woche vorher an die Klasse
/klassenarbeit …                       → KA, Version B, Erwartungshorizont
   (du korrigierst selbst)
/feedback …                            → Rückmeldetexte (nacheinander, anonym)
/fehleranalyse … [Stichworte]          → was lief schief, Förderaufgaben
/berichtigung …                        → Berichtigungsblatt mit Tipps
/logbuch KA2 zurückgegeben, Berichtigung als HA
```

### 7.4 Die Woche im Griff
Sonntags im Schulordner:
```text
/wochenplan
/sichern
```
→ To-do-Liste mit fertigen Befehlen, z. B. „`/stunde …` für 7b Dienstag“, „KA 9a ist angekündigt, aber noch nicht erstellt“.

Fällt kurzfristig eine Stunde aus: `/vertretung 7b Mathe 45`, dann den Ablaufzettel weitergeben.

### 7.5 GFS und Abschlussprüfung
- GFS: `/gfs` → Themenliste für die Klasse, Bewertungsbogen für dich, Kolloquiumsfragen je Thema
- Abschlussklassen: `/pruefung RSA Deutsch gesamt` → Wiederholungsplan und Übungsaufgaben im Prüfungsstil. **Aktuelle Prüfungsvorgaben** in `_Bildungsplan/` ablegen!

### 7.6 Klassenleitung
Im Ordner `Klassenleitung-7b`:
```text
/ausflug Schullandheim Schwarzwald 22.–24.06. 7b
/elternbrief Infoabend Schullandheim 12.03. 19 Uhr
/elterngespraech Häufige Verspätungen, Rückzug in der Pause
```

---

## 8. Material aufbereiten

Claude arbeitet am besten mit **Markdown**. Das ist einfacher Text mit `#` für Überschriften und `|` für Tabellen und lässt sich mit jedem Texteditor öffnen. PDFs und Word-Dateien gehen auch, werden aber ungenauer gelesen. **Claude kann sie dir umwandeln** (siehe unten).

| Material | Wohin | Tipp |
|---|---|---|
| **Bildungsplan** | `Fach/_Bildungsplan/` | Nur deine Klassenstufen, **Standardnummern mitkopieren**. Quelle: bildungsplaene-bw.de |
| **Lesehilfen G9 neu** | `Fach/_Bildungsplan/` | Für Gymnasium Kl. 5/6 ff., weil sie Stundenumfang und Schwerpunkte ändern |
| **Prüfungsvorgaben** | `Fach/_Bildungsplan/` | jährlich aktualisieren |
| **Stoffverteilungsplan** | `Klasse/Stoffverteilungsplan.md` | Tabelle: KW, Einheit, Stunden, Standards, Leitperspektiven, Leistung |
| **Schulcurriculum, Fachschaftsbeschlüsse** | `_Schule/` und `Fach/CLAUDE.md` | nur das Verbindliche, kurz |
| **Notenschlüssel** | `_Schule/Notenschluessel-Fachschaften.md` | eine landesweite Prozentvorgabe gibt es nicht, also die Werte deiner Fachschaft eintragen |
| **Eigene gelungene KAs/Stunden** | `Fach/_Beispiele/` | **Der größte Qualitätshebel.** Claude übernimmt Niveau, Länge, Layout |
| **Lehrwerk** | `Fach/CLAUDE.md` | nur Titel und Inhaltsverzeichnis/Seitenzuordnung |

**PDF oder Word umwandeln lassen.** Datei in den Ordner legen und Claude sagen:

```text
Wandle _Bildungsplan/BP2016_Mathe.pdf in Markdown um. Behalte nur Klassen 7/8,
alle Standardnummern und Überschriften. Speichere als BP2016-Mathe-SekI-Kl7-8.md.
Lösche das PDF nicht, ich prüfe erst.
```

```text
Wandle meine alte Klassenarbeit _Beispiele/KA_Terme.docx in Markdown um und
entferne alle Namen. Speichere als KA-Beispiel-Kl7-Terme.md.
```

### Das Logbuch, der heimliche Star
Fast alle Skills lesen das Logbuch. Nach jeder Stunde eine Zeile, am einfachsten mit `/logbuch`:

```markdown
- 2026-11-24 | Std. 5–6 | Steigungsdreieck eingeführt, AB3 bis Nr. 4 | HA: S. 84/3a–c | fallende Geraden noch unsicher
```

So fragen Klassenarbeiten nichts ab, was gar nicht dran war. Folgestunden knüpfen an, Vertretungen passen zum Stand, und `/wochenplan` erkennt, ob du im Plan liegst.

---

## 9. Datenschutz

### 9.1 Technische Sperren
- **Persönliche Einstellungen** (von `/einrichten` angelegt): Lesesperren für `Schuelerdaten/`, `Noten/`, `*Notenliste*`, `Foerderplan*` im ganzen Schulordner, egal wo du startest.
- **Projektebene:** `.claude/settings.json` enthält dieselben Sperren als zweite Absicherung beim Start im Schulordner.
- **Rule `datenschutz.md`:** Claude weist auf eingefügte Namen hin und arbeitet mit Platzhaltern weiter.
- **`/sichern`** lässt diese Ordner aus jeder Sicherung weg.

### 9.2 Was die Skills tun

| Skill | Schutzmaßnahme |
|---|---|
| `/feedback` | nur Stichworte, keine Namen, keine Note, nichts wird gespeichert |
| `/fehleranalyse` | nur Angaben auf Klassenebene („15 von 27 …“) |
| `/logbuch` | Beobachtungen nur für die ganze Klasse, Namen werden entfernt |
| `/neue-klasse` | Profil nur auf Klassenebene, fragt ausdrücklich ohne Namen |
| `/elterngespraech` | nur Platzhalter, Ausgabe im Chat |
| `/protokoll` | Klassenkonferenzen nur im Chat |
| `/ausflug`, `/elternbrief` | keine Namen, Gesundheitsdaten oder Notfallkontakte |

### 9.3 Organisatorisch
- Inhalte, die du Claude gibst, werden zur Verarbeitung an Anthropic übertragen. Für personenbezogene Daten sind die landeseigenen Werkzeuge (SCHULE@BW, F13) bzw. die Vorgaben deiner Schule maßgeblich.
- Kläre, ob und wie du auf einem Privatgerät dienstlich arbeiten darfst.
- Schülerarbeiten nur **vollständig anonymisiert** und ohne Handschrift-Fotos verwenden.
- **Noten gibst du.** Alle Bewertungsvorschläge sind Entwürfe.

---

## 10. Skills anpassen und eigene schreiben

**Am einfachsten:** Sag Claude, was du willst:

```text
Ändere den Skill /klassenarbeit so, dass er immer auch eine Variante mit
Hilfekarten für den Nachteilsausgleich erstellt.
```

```text
Schreib mir einen neuen Skill /quiz nach dem Muster von /exit-ticket:
10 Multiple-Choice-Fragen zum aktuellen Thema, als Tabelle für Kahoot.
```

> **Wichtig:** Die aktiven Skills liegen nach `/einrichten` in deinem persönlichen Ordner `~/.claude/skills/` (Windows: `C:\Users\NAME\.claude\skills\`). Sag Claude ausdrücklich, dass es **dort** ändern soll, oder ändere im Schulordner und führe danach `/einrichten` erneut aus.

**So ist ein Skill aufgebaut** (eine Textdatei `SKILL.md` in einem eigenen Ordner):

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
| `disable-model-invocation: true` | Claude nutzt den Skill **nie von selbst**, nur wenn du `/name` tippst |

**Ideen für eigene Skills:** `/quiz`, `/vokabeltest`, `/leseverstehen`, `/experiment` (mit Platzhalter für die Gefährdungsbeurteilung), `/stationenlernen`, `/projektwoche`, `/zeugnisbemerkung` (nur Formulierungsbausteine, keine Namen).

---

## 11. Tipps für optimale Ergebnisse

1. **Im Klassenordner starten.** Dann sind Schule, Fach und Klasse automatisch geladen.
2. **Beispiele schlagen Beschreibungen.** Zwei gute eigene Klassenarbeiten in `_Beispiele/` bringen mehr als zehn Regeln.
3. **Logbuch konsequent pflegen.** 30 Sekunden mit `/logbuch` nach jeder Stunde.
4. **Ergebnisse als Dateien speichern lassen.** So wächst dein Materialarchiv von selbst.
5. **Korrekturen zu Regeln machen.** Gefällt dir etwas nicht, sag: *„Nimm das als Regel in die Fach-CLAUDE.md auf.“*
6. **Kurz halten.** CLAUDE.md unter 200 Zeilen. Selten Gebrauchtes gehört in Skills oder Rules.
7. **Regelmäßig `/sichern`**, z. B. sonntags, und ab und zu die neueste Sicherung extern kopieren.
8. **Drucken/Word:** Claude kann jede Datei in ein Word-Dokument oder PDF umwandeln: *„Mach aus KA.md eine Word-Datei mit Schulkopf.“*
9. **Alles prüfen.** Fachliche Richtigkeit, Bildungsplanbezug und Bewertung verantwortest du.

---

## 12. Häufige Probleme

| Problem | Lösung |
|---|---|
| Ein Befehl wie `/klassenarbeit` erscheint nicht | `/einrichten` wurde noch nicht ausgeführt oder Claude wurde danach nicht neu gestartet. Im Schulordner `/einrichten` erneut ausführen, dann Claude neu starten. |
| `/einrichten` erscheint nicht | Claude wurde nicht im entpackten Ordner `Schule` gestartet. Dort starten (Anhang A). |
| Claude kennt mein Klassenprofil nicht | Nicht im Klassenordner gestartet. Mit `/memory` prüfen, welche CLAUDE.md geladen sind. |
| Claude fragt ständig, ob es `_Schule/` oder `_Bildungsplan/` lesen darf | Zugriff fehlt. `/einrichten` erneut ausführen und Schritt 3 bestätigen. Prüfen mit `/status`. |
| Sperren für Schülerdaten greifen nicht | Wie oben: `/einrichten` erneut ausführen. Wurde der Schulordner verschoben, stimmen die Pfade nicht mehr. |
| Bildungsplan-Nummern stimmen nicht | Auszug fehlt in `_Bildungsplan/`. Claude markiert dann mit „[Standard prüfen]“. Auszug ablegen. |
| Klassenarbeit fragt Unbehandeltes ab | Das Logbuch ist lückenhaft. Nachtragen und die KA neu erzeugen lassen. |
| Ergebnisse zu lang oder zu schwer | Beispiele in `_Beispiele/` ablegen und die Regel in die Fach-CLAUDE.md schreiben (z. B. „KA Kl. 7: max. 2 Seiten“). |
| Meldung „Settings Error“ beim Start | Die Einstellungsdatei ist beschädigt. Claude bietet an, sie zu reparieren: **mit Claude reparieren** wählen. |
| Datei versehentlich überschrieben | Aus dem neuesten ZIP in `Backup/` wiederherstellen (Doppelklick, Datei zurückkopieren). |

---

## 13. Checkliste

- [ ] Claude Code installiert und angemeldet
- [ ] Paket entpackt, Ordner in `Schule` umbenannt, an festen Platz verschoben
- [ ] Im Ordner `Schule` Claude gestartet und `/einrichten` vollständig durchlaufen
- [ ] Claude neu gestartet, im Klassenordner `/memory` und `/einstieg …` getestet
- [ ] Notenschlüssel der Fachschaft eingetragen
- [ ] Pro Fach: Bildungsplan-Auszug in `_Bildungsplan/`
- [ ] Pro Fach: 1–2 eigene gelungene Arbeiten in `_Beispiele/`
- [ ] Pro Klasse: Stoffverteilungsplan erstellt
- [ ] Logbuch-Routine: `/logbuch` nach jeder Stunde
- [ ] Sicherung: `/sichern` jede Woche

---

## Anhang A: Terminal-Mini-Kurs

Das Terminal ist ein Fenster, in das man Befehle tippt. Für Claude Code brauchst du nur **drei Dinge**.

**1. Terminal öffnen**
- **Mac:** `Cmd + Leertaste`, „Terminal“ tippen, Enter
- **Windows:** Start-Menü, „Terminal“ oder „PowerShell“ tippen, Enter

**2. In einen Ordner wechseln**
`cd ` tippen (mit Leerzeichen danach!), dann den Ordner aus dem Finder bzw. Explorer **ins Terminal-Fenster ziehen**, Enter drücken.

**3. Claude starten und beenden**
- Starten: `claude` + Enter
- Beenden: `/exit` + Enter (oder zweimal `Strg + C`)

**Nützlich in Claude:**

| Eingabe | Wirkung |
|---|---|
| `/` | Liste aller Befehle |
| `/memory` | zeigt geladene CLAUDE.md-Dateien |
| `/status` | zeigt, welche Einstellungen aktiv sind |
| `/clear` | neues Gespräch im selben Ordner (bei Themenwechsel sinnvoll) |
| `Esc` | Claude unterbrechen |
| Pfeil ↑ | letzte Eingabe wiederholen |

**Tipp:** Du kannst Claude in normaler Sprache sagen, was es tun soll. Auch so etwas geht: *„Zeig mir, welche Dateien in diesem Ordner liegen“* oder *„Öffne mir die KA2 als Word-Datei.“*

---

## Anhang B: Für Verantwortliche – Verteilung über GitHub

*Dieser Abschnitt richtet sich an die Person, die die Vorlage pflegt (z. B. Medienbeauftragte, Fachschaftsleitung). Lehrkräfte brauchen ihn nicht.*

- Die Vorlage als **öffentliches oder schulinternes Repo** veröffentlichen. Lehrkräfte laden sie über **„Code“ → „Download ZIP“** herunter, ganz ohne Git.
- Persönliche, ausgefüllte Ordner von Lehrkräften gehören **nicht** in ein gemeinsames Repo. Die `.gitignore` schließt `CLAUDE.local.md`, `Backup/`, ZIP-Dateien und Schülerdaten-Ordner aus.

**Repo anlegen:**

```bash
cd lehrer-claude-code
gh repo create lehrer-claude-code --private --source=. --push
# ohne gh: leeres Repo auf github.com anlegen, dann:
git remote add origin https://github.com/NAME/lehrer-claude-code.git
git push -u origin main
```

**Neue Version verteilen:** Änderungen committen und pushen, dann Lehrkräfte informieren: „Neue ZIP laden, darin Claude starten, `/einrichten` und *ersetzen* wählen.“

**Technischer Hintergrund:**
- Projekt-Skills werden vom Startordner aufwärts nur bis zur Git-Wurzel gefunden. Deshalb installiert `/einrichten` die Skills als persönliche Skills (`~/.claude/skills/`), die unabhängig vom Startordner laden.
- `.claude/settings.json` wird nur aus dem Startordner gelesen, ohne übergeordnete Ordner. Deshalb stehen `additionalDirectories` und die Sperren in `~/.claude/settings.json`.
- Persönliche Rules in `~/.claude/rules/` gelten in jedem Projekt.

---

**Offizielle Dokumentation:**
[CLAUDE.md & Rules](https://code.claude.com/docs/en/memory) · [Skills](https://code.claude.com/docs/en/skills) · [Settings](https://code.claude.com/docs/en/settings) · [Permissions](https://code.claude.com/docs/en/permissions)

*Alle Inhalte sind Arbeitshilfen ohne Gewähr. Maßgeblich sind die jeweils gültigen Vorschriften (Schulgesetz, NVO, Bildungspläne) und die Vorgaben deiner Schule.*
