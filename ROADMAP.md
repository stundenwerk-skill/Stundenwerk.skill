# Roadmap Stundenwerk

Stand: 25. November 2026 · aktuelle Version: **1.3.0** (25 Befehle, 16 Länderprofile)

Diese Roadmap ist ein Plan, kein Versprechen. Reihenfolge und Inhalt können sich ändern, vor allem durch Rückmeldungen von Lehrkräften. Wünsche bitte als [Issue „Befehl-Wunsch“](https://github.com/stundenwerk-skill/Stundenwerk.skill/issues/new/choose) einreichen.

## Leitlinien für jede neue Version

- **Qualität vor Menge:** Jeder neue Befehl folgt den Qualitätsregeln (nichts erfinden, Herkunft kennzeichnen, bei Unklarheiten nachfragen, „Bitte prüfen:“ am Ende).
- **Datenschutz zuerst:** Keine Namen, Noten oder Förderdaten von Schülerinnen und Schülern. Befehle, die nah an Schülerdaten arbeiten, nutzen nur Kürzel und sagen das ausdrücklich.
- **Länderrecht nur mit Beleg:** Rechtliche Angaben (Nachteilsausgleich, Notenbildung, Prüfungen) nur mit Quelle oder als „[prüfen]“.
- **Getestet:** Neue Befehle werden mit echten Beispielanfragen gegen Claude ohne Plugin verglichen (`claude plugin eval`).
- **Versionen:** Neue Befehle = neue Nebenversion (1.4, 1.5 …), Korrekturen = Patch (1.3.1 …), Umbrüche = 2.0.

---

## 1.3.x – Aufräumen und Absichern (Dezember 2026)

Ziel: Das Verzeichnis-Listing steht, die vorhandenen Inhalte sind belastbar.

- [ ] Aufnahme ins Claude-Verzeichnis abschließen (Rückfragen beantworten, erste Version veröffentlichen, Claude GitHub App für schnelle Updates verbinden)
- [ ] **52 „[prüfen]“-Stellen** in den Länderprofilen gegen die Originalquellen der Kultusministerien prüfen (Schwerpunkt: Anzahl und Dauer von Klassenarbeiten, Ankündigungsfristen, KI-Werkzeuge der Länder)
- [ ] Quellen in `evidenz.md` einzeln gegenprüfen (Autor, Jahr, Kernaussage)
- [ ] Fach- und Länder-Paten gewinnen: je Bundesland eine Lehrkraft, die das Profil gegenliest
- [ ] Beispielanfragen und Erwartungen für die wichtigsten Befehle anlegen (Grundlage für Tests)

## 1.4.0 – Korrektur und Bewertung (Januar/Februar 2027)

Ziel: Weniger Zeit am Korrekturstapel, fairere und nachvollziehbare Bewertung.

| Neuer Befehl | Wofür | Hinweis |
|---|---|---|
| `/stundenwerk:bewertungsraster` | Kriterienraster (Rubric) für offene Aufgaben, Projekte, Portfolios | mit Niveaustufen und Beispielformulierungen |
| `/stundenwerk:korrektur` | Korrekturhilfe: Schülerlösung (anonymisiert) mit Erwartungshorizont abgleichen, Punktevorschlag mit Begründung | Entscheidung bleibt bei der Lehrkraft |
| `/stundenwerk:notenschluessel` | Notenschlüssel aus Punkten erstellen, nach Fachschafts- oder Landesvorgabe, inkl. 15-Punkte-System | nutzt `_Schule/Notenschluessel-Fachschaften.md` |
| `/stundenwerk:rueckmeldung` | Lernförderliche schriftliche Rückmeldung zu einer Arbeit (Stärken, nächster Schritt) | ergänzt `feedback` |

## 1.5.0 – Vielfalt und Sprache (März/April 2027)

Ziel: Material, das alle erreicht.

| Neuer Befehl | Wofür | Hinweis |
|---|---|---|
| `/stundenwerk:sprachsensibel` | Texte und Aufgaben sprachsensibel aufbereiten (Wortspeicher, Satzanfänge, Scaffolding), auch für DaZ | |
| `/stundenwerk:einfache-sprache` | Texte in einfache Sprache übertragen, Fachbegriffe erklären | Fachinhalt bleibt gleich |
| `/stundenwerk:nachteilsausgleich` | Möglichkeiten für Nachteilsausgleich nach Landesvorgabe übersichtlich darstellen | nur mit Quelle, keine Einzelfallentscheidung |
| `/stundenwerk:foerderplan-vorlage` | Leere, landesübliche Struktur für Förderpläne | nur Vorlage, keine Schülerdaten |

## 1.6.0 – Das Schuljahr im Blick (Mai/Juni 2027, vor der Jahresplanung)

Ziel: Planung für das neue Schuljahr 2027/28 in einem Durchgang.

| Neuer Befehl | Wofür | Hinweis |
|---|---|---|
| `/stundenwerk:jahresplan` | Stoffverteilungsplan aus Lehrplan, Stundentafel, Ferien und Klassenarbeitsterminen | Ferientermine je Land aus amtlicher Quelle |
| `/stundenwerk:fachkonferenz` | Tagesordnung, Beschlussvorlage und Protokoll für Fach- und Klassenkonferenzen | ergänzt `protokoll` |
| `/stundenwerk:projekt` | Projektwoche oder fächerübergreifendes Projekt planen | |
| `/stundenwerk:schuljahresende` | Checkliste und Texte zum Schuljahresende (Abschluss, Übergaben) | ohne Zeugnisnoten |

## 1.7.0 – Digital und KI-Bildung (Herbst 2027)

Ziel: Digitales Material und KI-Kompetenz der Schülerinnen und Schüler.

| Neuer Befehl | Wofür | Hinweis |
|---|---|---|
| `/stundenwerk:ki-unterricht` | Unterrichtsbausteine zu KI: Funktionsweise, Grenzen, Quellenkritik, Regeln der Schule | passend zu KI-Vorgaben des Landes |
| `/stundenwerk:quiz-export` | Quizfragen als Moodle-XML, CSV oder H5P-geeignete Textform | Dateien für die Lernplattform |
| `/stundenwerk:medienkompetenz` | Bezug zum Kompetenzrahmen „Bildung in der digitalen Welt“ der KMK herstellen | |

## 2.0.0 – Stundenwerk überall (2028)

Ziel: Gleiche Qualität auf anderen KI-Plattformen und tiefer in den Fächern.

- [ ] **Export für andere Plattformen:** Pakete für ChatGPT (Custom GPT), Gemini (Gems), Perplexity und weitere aus derselben Quelle, automatisch erzeugt
- [ ] **Fach-Pakete:** vertiefte Hinweise für Mathematik, Deutsch, Englisch, Naturwissenschaften und Gesellschaftswissenschaften (Operatoren, typische Fehlvorstellungen, Aufgabenformate)
- [ ] **Lehrplan-Bausteine:** Kompetenzen je Land, Fach und Klassenstufe in einheitlichem Format, mit Link zur amtlichen Quelle
- [ ] **Grundschul- und Berufsschul-Profil:** eigene Hinweise für Grundschule (Lernentwicklungsberichte, Anfangsunterricht) und berufliche Schulen (Lernfelder)

---

## Ideen-Parkplatz

Noch nicht eingeplant, aber gesammelt: Hausaufgabenplan, Sitzplan-Ideen (ohne Namen), Klassenfahrt mit Kostenplan, Lesetagebuch, Experimentieranleitungen mit Gefährdungsbeurteilung, Referendariat-Paket (Unterrichtsentwurf nach Seminarvorgaben), Elternabend-Präsentation.

## Bewusst nicht geplant

- Zeugnisnoten berechnen oder Zeugnistexte mit Schülernamen schreiben (Datenschutz, rechtliche Verantwortung)
- Automatisches Bewerten ohne Kontrolle durch die Lehrkraft
- Eigene Server, Konten oder Datenspeicherung durch Stundenwerk

## Mitmachen

Rückmeldungen, Fehler und Wünsche: [Issues](https://github.com/stundenwerk-skill/Stundenwerk.skill/issues) oder stundenwerk.skill@gmail.com. Wie Beiträge funktionieren, steht in [CONTRIBUTING.md](CONTRIBUTING.md).
