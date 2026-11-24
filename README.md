# Claude Code für Lehrkräfte in Baden-Württemberg

**So legst du Fächer, Klassen, Stoffverteilungspläne und Vorgaben ab, damit Claude Code gute Klassenarbeiten, Stundenentwürfe und Alltagsmaterial erstellt.**

---

## 0. Dieses Repo verwenden

Dieses Repo ist eine **Vorlage**. Es enthält:

| Pfad | Inhalt |
|---|---|
| `CLAUDE.md` | Vorlage für deinen persönlichen Kontext (ausfüllen!) |
| `.claude/skills/` | 22 fertige Skills (Übersicht in Abschnitt 4.3) |
| `.claude/rules/` | Datenschutz, Regeln für Klassenarbeiten und Arbeitsblätter |
| `.claude/settings.json` | Lesesperren für Schülerdaten |
| `_Schule/` | Vorlagen: Notenschlüssel, Jahresplan, KA-Kopf, Stundenentwurf, Briefkopf |
| `Mathematik/` | Beispielfach mit Klasse 7b: so legst du jedes Fach an |
| `.gitignore` | hält persönliche Dateien und Schülerdaten aus dem Repo |

**Einrichten:**

```bash
# 1. Repo herunterladen bzw. ZIP entpacken und umbenennen
mv lehrer-claude-code ~/Schule
cd ~/Schule

# 2. Vorlagen ausfüllen: CLAUDE.md, _Schule/*, Mathematik/* (Werte in [eckigen Klammern])
# 3. Für jedes eigene Fach den Ordner Mathematik/ kopieren und anpassen
# 4. Starten
cd Mathematik/Klasse-7b
claude
```

**Auf GitHub hochladen (privat!):**

```bash
cd ~/Schule
gh repo create lehrer-claude-code --private --source=. --push
# oder ohne gh: leeres PRIVATES Repo auf github.com anlegen, dann:
git remote add origin https://github.com/DEIN-NAME/lehrer-claude-code.git
git push -u origin main
```

> 🔒 **Empfehlung:** Teile mit Kolleginnen und Kollegen nur die **Vorlage** (Skills, Rules, Vorlagen). Dein ausgefülltes Repo mit Klassenprofilen und Logbüchern bleibt **privat**, auch wenn es anonym ist.

---

## 1. Grundidee in einem Satz

Claude Code liest beim Start automatisch die `CLAUDE.md`-Dateien **aller übergeordneten Ordner**.
Startest du Claude im Ordner `Mathematik/Klasse-7b`, kennt es automatisch:

1. **dich und deine Schule** → `Schule/CLAUDE.md`
2. **das Fach** → `Schule/Mathematik/CLAUDE.md`
3. **die Klasse** → `Schule/Mathematik/Klasse-7b/CLAUDE.md`

Du musst also nichts jedes Mal neu erklären. Du sagst nur: *„Erstelle die KA 2 zu linearen Funktionen.“*

---

## 2. Empfohlene Ordnerstruktur

```text
Schule/                                  ← hier liegt alles, was Claude sehen darf
├── CLAUDE.md                            ← Wer bin ich, Schule, Grundregeln (max. ~150 Zeilen)
├── CLAUDE.local.md                      ← optional: private Notizen, nicht teilen
├── .claude/
│   ├── settings.json                    ← Sperren (z. B. Schülerdaten)
│   ├── rules/
│   │   ├── datenschutz.md               ← gilt immer
│   │   ├── klassenarbeiten.md           ← gilt nur in Ordnern "Klassenarbeiten"
│   │   └── arbeitsblatt-layout.md       ← gilt nur in Ordnern "Arbeitsblaetter"
│   └── skills/
│       ├── unterricht-bw/SKILL.md       ← der BW-Skill (Bildungsplan, NVO, Operatoren)
│       ├── klassenarbeit/SKILL.md       ← Befehl: /klassenarbeit …
│       ├── stunde/SKILL.md              ← Befehl: /stunde …
│       ├── elternbrief/SKILL.md         ← Befehl: /elternbrief …
│       └── logbuch/SKILL.md             ← Befehl: /logbuch …
│
├── _Schule/                             ← schulweite Vorgaben
│   ├── Schulcurriculum.md
│   ├── Notenschluessel-Fachschaften.md
│   ├── Jahresplan-2026-27.md            ← Ferien, Konferenzen, Projekttage, Halbjahr
│   ├── Leitbild-und-Methodencurriculum.md
│   └── Vorlagen/
│       ├── Kopf-Klassenarbeit.md
│       ├── Stundenentwurf-Vorlage.md
│       └── Briefkopf-Elternbrief.md
│
├── Mathematik/
│   ├── CLAUDE.md                        ← fachspezifische Regeln
│   ├── _Bildungsplan/
│   │   ├── BP2016-Mathe-SekI-Kl7-8.md   ← Auszug als Markdown (siehe Abschnitt 5)
│   │   └── Operatoren-Mathe.md
│   ├── _Beispiele/                      ← „Goldstandard“: gelungene eigene Arbeiten
│   │   ├── KA-Beispiel-Kl7-Terme.md
│   │   └── Stunde-Beispiel-Einstieg.md
│   ├── Klasse-7b/
│   │   ├── CLAUDE.md                    ← Klassenprofil (anonym!)
│   │   ├── Stoffverteilungsplan.md
│   │   ├── Logbuch.md                   ← was wurde wann gemacht
│   │   ├── Einheiten/
│   │   │   └── 03-Lineare-Funktionen/
│   │   │       ├── Planung.md
│   │   │       ├── Arbeitsblaetter/
│   │   │       └── Stunden/
│   │   └── Klassenarbeiten/
│   │       ├── KA1-Terme/
│   │       └── KA2-Lineare-Funktionen/
│   └── Klasse-9a/ …
│
├── Deutsch/ …
└── Klassenleitung-7b/                   ← Organisatorisches (Elternabend, Ausflug, Briefe)
```

> ⚠️ **Schülerdaten gehören NICHT in diesen Ordner.**
> Notenlisten, Namen, Förderpläne, Gutachten, Fotos usw. lagerst du **außerhalb** von `Schule/`, zum Beispiel im dienstlichen System deiner Schule. Die Sperre in Abschnitt 6 ist nur ein zusätzliches Sicherheitsnetz.

---

## 3. Die drei CLAUDE.md-Ebenen: Vorlagen zum Kopieren

### 3.1 `Schule/CLAUDE.md`: du und deine Schule

```markdown
# Kontext: Lehrkraft in Baden-Württemberg

## Ich
- Lehrkraft an einer [Realschule / Gemeinschaftsschule / Gymnasium …] in [Ort, Regierungsbezirk]
- Fächer: Mathematik, Physik
- Klassenleitung: 7b
- Ich schreibe Material auf Deutsch, Anrede der Lernenden: „du“ (Kl. 5–10), „Sie“ (Oberstufe)

## Grundlagen
- Bildungsplan 2016 BW (bzw. G9 neu mit Lesehilfen), Notenbildungsverordnung (NVO)
- Immer Operatoren und Anforderungsbereiche I–III verwenden
- Bildungsplan-Standards NIE erfinden; ohne Beleg „[Standard prüfen]“ schreiben
- Schulweite Vorgaben: @_Schule/Notenschluessel-Fachschaften.md
- Termine/Ferien: @_Schule/Jahresplan-2026-27.md

## Arbeitsweise
- Ergebnisse als Markdown-Datei im passenden Ordner speichern, nicht nur im Chat
- Dateinamen: `JJJJ-MM-TT_Thema.md`, ohne Umlaute und Leerzeichen
- Lösungen/Erwartungshorizont immer als separate Datei `…_Loesung.md`
- Vor dem Erstellen einer Klassenarbeit: Stoffverteilungsplan und Logbuch der Klasse lesen
- Wenn etwas unklar ist: höchstens eine Rückfrage, sonst sinnvoll annehmen und Annahme oben nennen

## Datenschutz
- Keine echten Namen oder personenbezogenen Daten von Schülerinnen und Schülern
- Platzhalter: S1, S2 … oder „Schüler/in A“
```

**Tipp:** Halte jede `CLAUDE.md` **unter ca. 200 Zeilen**. Was nur manchmal gebraucht wird, gehört in Skills oder Rules (Abschnitt 4).
`@pfad/datei.md` bindet eine andere Datei ein. Die wird dann aber **immer** mitgeladen, verwende es also nur für kurze Dateien.

### 3.2 `Mathematik/CLAUDE.md`: das Fach

```markdown
# Fach Mathematik

## Lehrwerk
- Kl. 5–6: [Titel, Verlag]; Kl. 7–10: [Titel, Verlag]
- Seitenangaben gerne nennen, aber keine Aufgaben aus dem Buch abschreiben

## Bildungsplan
- Auszüge liegen in `_Bildungsplan/`; bei Bedarf dort nachlesen
- Leitideen: Zahl–Variable–Operation, Messen, Raum und Form, Funktionaler Zusammenhang, Daten und Zufall
- Prozessbezogen: Argumentieren, Problemlösen, Modellieren, Darstellen, Kommunizieren

## Fachschaftsbeschlüsse
- Notenschlüssel Mathe (Sek I): 1 ab 92 %, 2 ab 80 %, 3 ab 65 %, 4 ab 50 %, 5 ab 25 %  ← DEINE WERTE EINTRAGEN
- Pro Halbjahr [x] Klassenarbeiten in Kl. 7
- Taschenrechner ab Klasse [x]; Formelsammlung: [ja/nein]

## Stil
- Aufgaben mit Kontext aus der Lebenswelt (Handytarif, Sportverein, Schwäbische Alb …)
- Jede KA: ca. 30 % AFB I, 50 % AFB II, 20 % AFB III
- Gelungene Beispiele: `_Beispiele/`. Daran Länge, Layout und Niveau orientieren
```

### 3.3 `Mathematik/Klasse-7b/CLAUDE.md`: das Klassenprofil (anonym!)

```markdown
# Klasse 7b, Mathematik, Schuljahr 2026/27

- Schulart: Realschule, Niveau überwiegend M, einzelne G-Niveau
- 4 Wochenstunden, Doppelstunde Dienstag
- 27 Lernende, davon ca. 5 mit Förderbedarf im Lesen → Aufgabentexte kurz, Fachbegriffe erklären
- 3 DaZ-Lernende → Wortspeicher anbieten
- Leistungsstarke Gruppe (ca. 6) → immer eine Sternchen-Aufgabe (AFB III)
- Methoden, die gut funktionieren: Lerntheke, Think-Pair-Share, Mini-Whiteboards
- Klappt schlecht: lange Gruppenarbeiten nach der großen Pause

## Aktueller Stand
- Siehe @Logbuch.md (letzte Einträge) und Stoffverteilungsplan.md
```

---

## 4. Rules und Skills: Wissen nur dann, wenn es gebraucht wird

### 4.1 Rules (`.claude/rules/`): Regeln für bestimmte Ordner

Eine Rule mit `paths:` wird **nur geladen, wenn Claude Dateien in passenden Ordnern liest**. Das spart Platz und hält den Kontext sauber.

`.claude/rules/klassenarbeiten.md`

```markdown
---
paths:
  - "**/Klassenarbeiten/**"
---

# Regeln für Klassenarbeiten (NVO BW)
- Kopf aus `_Schule/Vorlagen/Kopf-Klassenarbeit.md` verwenden
- Jede Aufgabe: Operator, AFB (I/II/III), Punktzahl
- Punktsumme am Ende prüfen und ausweisen
- Erwartungshorizont mit Teilpunkten in separater Datei
- Notenschlüssel aus der Fach-CLAUDE.md; als Vorschlag kennzeichnen
- Immer eine Version B (Nachschreiber) anbieten, gleicher Schwierigkeitsgrad
- Bearbeitungszeit realistisch schätzen (Faustregel angeben)
```

`.claude/rules/datenschutz.md` (ohne `paths`, gilt immer)

```markdown
# Datenschutz
- Niemals personenbezogene Daten von Schülerinnen, Schülern oder Eltern verarbeiten oder speichern.
- Wenn ich versehentlich Namen einfüge: darauf hinweisen und mit Platzhaltern weiterarbeiten.
- Keine Notenentscheidungen treffen; Bewertungen sind Vorschläge für die Lehrkraft.
```

### 4.2 Skills (`.claude/skills/`): eigene Befehle

Ein Skill ist ein Ordner mit einer `SKILL.md`. Du rufst ihn mit `/name` auf, oder Claude nutzt ihn automatisch, wenn die Beschreibung passt.

**`.claude/skills/klassenarbeit/SKILL.md`**

```markdown
---
name: klassenarbeit
description: Erstellt eine Klassenarbeit mit Erwartungshorizont, Notenschlüssel und Version B für die aktuelle Klasse.
argument-hint: "[Thema] [Dauer in Minuten]"
---

Erstelle eine Klassenarbeit zum Thema: $ARGUMENTS

Vorgehen:
1. Lies Klassenprofil (CLAUDE.md der Klasse), Stoffverteilungsplan.md und die letzten 10 Einträge im Logbuch.md.
2. Lies die passenden Bildungsplan-Auszüge in `../_Bildungsplan/` und Beispiele in `../_Beispiele/`.
3. Prüfe: Wurde alles, was abgefragt wird, laut Logbuch auch unterrichtet? Wenn nicht: nachfragen.
4. Erstelle im Ordner `Klassenarbeiten/` einen neuen Unterordner `KAx-Thema/` mit:
   - `KA.md` (Version A)
   - `KA_B.md` (Version B)
   - `Erwartungshorizont.md` (beide Versionen, Teilpunkte)
   - `Uebersicht.md` (Tabelle: Aufgabe | Kompetenz/Standard | AFB | Punkte, dazu Zeitbedarf und Notenschlüssel)
5. Kurze Zusammenfassung im Chat: Punktzahl, AFB-Verteilung, offene Punkte.
```

Aufruf in der Klasse 7b:

```text
/klassenarbeit Lineare Funktionen 45
```

**Weitere nützliche Skills (gleiches Muster):**

| Skill | Aufruf-Beispiel | Was er tut |
|---|---|---|
| `stunde` | `/stunde Steigungsdreieck 45` | Stundenverlauf (Tabelle) und Arbeitsblatt mit Lösung, passend zum Logbuch-Stand |
| `einheit` | `/einheit Lineare Funktionen 12` | Planung einer Unterrichtseinheit über x Stunden inkl. Bildungsplan-Bezug |
| `differenzieren` | `/differenzieren Arbeitsblaetter/AB3.md` | Macht aus einem AB eine G-, M- und E-Version bzw. eine DaZ-Version |
| `logbuch` | `/logbuch Steigung eingeführt, HA S. 84/3` | Trägt die heutige Stunde mit Datum ins Logbuch ein |
| `elternbrief` | `/elternbrief Wandertag 12.05.` | Brief mit Schulbriefkopf, Platzhalter statt Namen |
| `wochenplan` | `/wochenplan` | Liest alle Klassen-Logbücher und den Jahresplan und schlägt die Vorbereitung der Woche vor |

### 4.3 Alle mitgelieferten Skills

| Bereich | Befehl | Wofür |
|---|---|---|
| **Grundlage** | `unterricht-bw` | Bildungsplan BW, NVO, Operatoren, Datenschutz. Wird automatisch genutzt |
| **Planung** | `/einheit [Thema] [Std.]` | Unterrichtseinheit über mehrere Stunden |
| | `/stunde [Thema] [Min.]` | Stundenverlauf, Arbeitsblatt und Lösung |
| | `/einstieg [Thema]` | drei Einstiegsideen |
| | `/tafelbild [Thema]` | Tafelbild/Hefteintrag mit Lückentext-Variante |
| | `/differenzieren [Datei]` | G/M/E-, DaZ- und Förder-Fassungen |
| | `/vertretung [Klasse] [Fach] [Dauer]` | Vertretungsstunde für fachfremde Kollegen |
| | `/wochenplan` | Wochenüberblick über alle Klassen |
| | `/logbuch [Notiz]` | heutige Stunde eintragen |
| **Leistung** | `/klassenarbeit [Thema] [Min.]` | KA mit Version B, Erwartungshorizont, Übersicht |
| | `/wiederholungsarbeit [Thema]` | kurze, unangekündigte Arbeit nach NVO |
| | `/exit-ticket [Thema]` | 3-Fragen-Check am Stundenende |
| | `/lernlandkarte [Thema]` | „Ich kann …“-Liste vor der KA |
| | `/gfs [Thema] [Form]` | GFS: Themen, Bewertungsbogen, Kolloquium |
| | `/pruefung [HSA/RSA/Abitur] [Fach]` | Prüfungsvorbereitung |
| **Korrektur** | `/feedback [Stichworte]` | Rückmeldetext zu einer Arbeit (anonym) |
| | `/fehleranalyse [KA-Ordner] [Stichworte]` | Fehler der Klasse auswerten und Förderaufgaben |
| | `/berichtigung [KA-Ordner]` | Berichtigungsblatt mit gestuften Tipps |
| **Organisation** | `/elternbrief [Anlass]` | Elternbrief mit Rückmeldeabschnitt |
| | `/elterngespraech [Anlass]` | Leitfaden, Formulierungshilfen, Protokollvorlage |
| | `/protokoll [Sitzung] [Stichpunkte]` | Konferenz-/Fachschaftsprotokoll |
| | `/ausflug [Art] [Ziel] [Datum]` | Wandertag/Schullandheim inkl. Elternbrief und Kosten |

**Supporting Files:** Ein Skill-Ordner darf Zusatzdateien enthalten (z. B. `operatoren.md`, `leitperspektiven.md`). Claude liest sie nur bei Bedarf. Verlinke sie in der `SKILL.md`.

**Den BW-Skill aus claude.ai:** Er liegt in diesem Repo bereits als `.claude/skills/unterricht-bw/SKILL.md`.

---

## 5. Bildungsplan, Stoffverteilungspläne & Co. aufbereiten

Claude arbeitet am besten mit **Markdown-Text**. PDFs und Word-Dateien gehen auch, kosten aber mehr Kontext und werden ungenauer gelesen.

| Material | Empfehlung |
|---|---|
| **Bildungsplan** | Nur die relevanten Abschnitte (deine Fächer und Klassenstufen) von bildungsplaene-bw.de als Markdown speichern. Standardnummern mitkopieren (z. B. `3.2.4.1 (3)`). |
| **Lesehilfen G9 neu** | Für Gymnasium Kl. 5/6 ff. zusätzlich ablegen. Sie ändern Stundenumfang und Schwerpunkte. |
| **Stoffverteilungsplan** | Als Markdown-Tabelle: Woche, Einheit, Stunden, Standards, Leitperspektiven, Leistungsfeststellung |
| **Schulcurriculum / Fachschaftsbeschlüsse** | Kurz zusammengefasst, nur das Verbindliche |
| **Notenschlüssel** | Pro Fach in die Fach-CLAUDE.md |
| **Eigene gelungene KAs/Stunden** | In `_Beispiele/`. **Das ist der größte Qualitätshebel.** Claude übernimmt Niveau, Länge und Layout. |
| **Lehrwerk** | Nur Inhaltsverzeichnis/Seitenzuordnung, keine kopierten Aufgaben |

**PDF in Markdown umwandeln lassen:**
Lege das PDF kurz in den Ordner und sag Claude:

```text
Wandle _Bildungsplan/BP2016_Mathe.pdf in Markdown um. Behalte nur Klassen 7/8,
alle Standardnummern und Überschriften. Speichere als BP2016-Mathe-SekI-Kl7-8.md.
Lösche danach das PDF NICHT, ich prüfe erst.
```

### Stoffverteilungsplan: Beispielformat

```markdown
| KW | Einheit | Std. | Standards (BP 2016) | LP | Leistung |
|---|---|---|---|---|---|
| 37–39 | Terme und Gleichungen | 12 | 3.2.2 (1)–(4) | MB | |
| 40 | | | | | KA 1 |
| 41–44 | Lineare Funktionen | 14 | 3.2.4.1 (1)–(5) | BNE, VB | Wdh.-Arbeit KW 42 |
```

### Logbuch: der heimliche Star

Trage nach jeder Stunde 1–2 Zeilen ein (oder nutze `/logbuch`):

```markdown
- 2026-11-24 | Std. 5–6 | Steigungsdreieck eingeführt, AB3 bis Nr. 4 | HA: S. 84/3a–c | Steigung bei fallenden Geraden noch unsicher
```

Damit weiß Claude, **was wirklich unterrichtet wurde**. Klassenarbeiten fragen dann nichts ab, was gar nicht dran war, und Folgestunden knüpfen an.

---

## 6. Datenschutz technisch absichern

`Schule/.claude/settings.json`:

```json
{
  "$schema": "https://json.schemastore.org/claude-code-settings.json",
  "permissions": {
    "deny": [
      "Read(./**/Schuelerdaten/**)",
      "Read(./**/Noten/**)",
      "Read(./**/*Notenliste*)",
      "Read(./**/Foerderplan*)"
    ]
  }
}
```

Das verhindert, dass Claude solche Ordner/Dateien liest, falls sie doch einmal im Projekt landen.

**Trotzdem gilt:**
- Inhalte, die du Claude gibst, werden zur Verarbeitung an Anthropic übertragen. Halte dich an die Datenschutzvorgaben deiner Schule und des Landes. Für personenbezogene Daten sind die landeseigenen Werkzeuge (SCHULE@BW, F13) gedacht.
- Klären, ob du auf einem Privatgerät dienstlich arbeiten darfst bzw. welche Genehmigung nötig ist.
- Aufsätze oder Schülerarbeiten nur **vollständig anonymisiert** und ohne Handschriftfotos verwenden.

---

## 7. Täglicher Ablauf (Beispiel)

**Morgens / Vorbereitung**

```bash
cd ~/Schule/Mathematik/Klasse-7b
claude
```

```text
/stunde Steigung von Geraden 90
```

→ Claude liest Profil, Logbuch und Plan und legt `Einheiten/03-…/Stunden/2026-11-25_Steigung.md` und das Arbeitsblatt an.

**Nach dem Unterricht**

```text
/logbuch Steigung bei fallenden Geraden geübt, AB4 komplett, HA S. 85/6
```

**Klassenarbeit planen**

```text
/klassenarbeit Lineare Funktionen 45
```

**Wochenplanung (vom Ordner `Schule/` aus)**

```text
/wochenplan
```

**Klassenleitung**

```bash
cd ~/Schule/Klassenleitung-7b && claude
```

```text
/elternbrief Einladung Elternabend 3.12., 19 Uhr, Raum 112, Themen: Schullandheim, Handyregeln
```

---

## 8. Tipps für optimale Ergebnisse

1. **Immer im Klassenordner starten.** Dann sind alle drei Ebenen automatisch geladen.
2. **Beispiele schlagen Beschreibungen.** Zwei gute eigene Klassenarbeiten in `_Beispiele/` bringen mehr als zehn Regeln.
3. **Logbuch pflegen.** 30 Sekunden pro Stunde sparen später viel Korrekturarbeit an Claudes Entwürfen.
4. **Ergebnisse als Datei speichern lassen**, nicht nur im Chat. So baut sich dein Materialarchiv von selbst auf.
5. **Feedback in die CLAUDE.md zurückschreiben.** Wenn dir etwas nicht gefällt (z. B. „zu textlastig“), sag: *„Nimm das als Regel in die Fach-CLAUDE.md auf.“*
6. **CLAUDE.md-Dateien kurz halten** (unter ca. 200 Zeilen) und ab und zu auf Widersprüche prüfen.
7. **Optional Git nutzen** (`git init` im Ordner `Schule/`). Dann kannst du jede Änderung zurückverfolgen und rückgängig machen.
8. **Alles prüfen.** Fachliche Richtigkeit, Bildungsplanbezug und Notenschlüssel verantwortest du.

---

## 9. Schnellstart-Checkliste

- [ ] Claude Code installieren (Anleitung: https://code.claude.com/docs)
- [ ] Ordner `Schule/` mit Struktur aus Abschnitt 2 anlegen
- [ ] `Schule/CLAUDE.md` ausfüllen (Abschnitt 3.1)
- [ ] Pro Fach: `CLAUDE.md` und Bildungsplan-Auszug als Markdown
- [ ] Pro Klasse: anonymes Klassenprofil, Stoffverteilungsplan, leeres Logbuch
- [ ] `.claude/settings.json` mit Sperren anlegen
- [ ] Skill `unterricht-bw` und `klassenarbeit` anlegen
- [ ] 1–2 gelungene eigene Arbeiten in `_Beispiele/` legen
- [ ] Test: im Klassenordner `claude` starten und `/stunde …` ausprobieren
- [ ] Mit `/memory` bzw. `/status` prüfen, welche Dateien geladen wurden

---

*Offizielle Dokumentation: CLAUDE.md & Rules: https://code.claude.com/docs/en/memory · Skills: https://code.claude.com/docs/en/skills · Settings: https://code.claude.com/docs/en/settings*
