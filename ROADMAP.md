# Roadmap Stundenwerk

Stand: 25. November 2026 · aktuelle Version: 1.3.1 (25 Befehle, 16 Länderprofile)

Das ist ein Plan, kein Versprechen. Reihenfolge und Inhalt richten sich auch danach, was Lehrkräfte zurückmelden. Wünsche bitte als [Issue „Befehl-Wunsch“](https://github.com/stundenwerk-skill/Stundenwerk.skill/issues/new/choose) einreichen.

## Was für jede neue Version gilt

- Jeder neue Befehl folgt den Qualitätsregeln: nichts erfinden, Herkunft kennzeichnen, bei Unklarheiten nachfragen, am Ende „Bitte prüfen:“.
- Namen, Noten oder Förderdaten von Schülerinnen und Schülern bleiben draußen. Befehle, die nah an solchen Daten arbeiten, verwenden nur Kürzel und sagen das ausdrücklich.
- Rechtliche Angaben zu Nachteilsausgleich, Notenbildung oder Prüfungen kommen nur mit Quelle hinein, sonst mit „[prüfen]“.
- Neue Befehle werden mit echten Beispielanfragen getestet und mit Claude ohne Plugin verglichen (`claude plugin eval`).
- Neue Befehle erhöhen die Nebenversion (1.4, 1.5 …), Korrekturen den Patch (1.3.1 …). Version 2.0 kommt erst bei größeren Umbauten.

## 1.3.x: Aufräumen und absichern (Dezember 2026)

In dieser Phase kommen keine neuen Befehle. Es geht darum, dass das Verzeichnis-Listing steht und die vorhandenen Inhalte belastbar sind.

- [ ] Aufnahme ins Claude-Verzeichnis abschließen: Rückfragen beantworten, erste Version veröffentlichen, Claude GitHub App für schnelle Updates verbinden
- [ ] Die 52 „[prüfen]“-Stellen in den Länderprofilen gegen die Originalquellen der Kultusministerien prüfen, vor allem Anzahl und Dauer von Klassenarbeiten, Ankündigungsfristen und die KI-Werkzeuge der Länder
- [ ] Die Quellen in `evidenz.md` einzeln gegenprüfen (Autor, Jahr, Kernaussage)
- [ ] Für jedes Bundesland eine Lehrkraft finden, die das Profil gegenliest
- [ ] Beispielanfragen mit erwarteten Ergebnissen für die wichtigsten Befehle anlegen, als Grundlage für Tests

## 1.4.0: Korrektur und Bewertung (Januar/Februar 2027)

Korrigieren kostet Lehrkräfte die meiste Zeit. Diese Version soll dabei helfen und Bewertungen nachvollziehbarer machen.

| Neuer Befehl | Wofür | Hinweis |
|---|---|---|
| `/stundenwerk:bewertungsraster` | Kriterienraster für offene Aufgaben, Projekte und Portfolios | mit Niveaustufen und Beispielformulierungen |
| `/stundenwerk:korrektur` | anonymisierte Schülerlösung mit dem Erwartungshorizont abgleichen, Punktevorschlag mit Begründung | die Entscheidung trifft die Lehrkraft |
| `/stundenwerk:notenschluessel` | Notenschlüssel aus Punkten nach Fachschafts- oder Landesvorgabe, auch im 15-Punkte-System | nutzt `_Schule/Notenschluessel-Fachschaften.md` |
| `/stundenwerk:rueckmeldung` | schriftliche Rückmeldung zu einer Arbeit: Stärken und nächster Schritt | ergänzt `feedback` |

## 1.5.0: Vielfalt und Sprache (März/April 2027)

Material, das auch Kinder mit wenig Deutschkenntnissen oder besonderem Förderbedarf erreicht.

| Neuer Befehl | Wofür | Hinweis |
|---|---|---|
| `/stundenwerk:sprachsensibel` | Texte und Aufgaben sprachsensibel aufbereiten (Wortspeicher, Satzanfänge, Scaffolding), auch für DaZ | |
| `/stundenwerk:einfache-sprache` | Texte in einfache Sprache übertragen und Fachbegriffe erklären | der Fachinhalt bleibt gleich |
| `/stundenwerk:nachteilsausgleich` | Möglichkeiten für Nachteilsausgleich nach Landesvorgabe zusammenstellen | nur mit Quelle, keine Einzelfallentscheidung |
| `/stundenwerk:foerderplan-vorlage` | leere, landesübliche Struktur für Förderpläne | nur Vorlage, keine Schülerdaten |

## 1.6.0: Das Schuljahr planen (Mai/Juni 2027)

Diese Version erscheint bewusst vor der Planung für das Schuljahr 2027/28.

| Neuer Befehl | Wofür | Hinweis |
|---|---|---|
| `/stundenwerk:jahresplan` | Stoffverteilungsplan aus Lehrplan, Stundentafel, Ferien und Klassenarbeitsterminen | Ferientermine je Land aus amtlicher Quelle |
| `/stundenwerk:fachkonferenz` | Tagesordnung, Beschlussvorlage und Protokoll für Fach- und Klassenkonferenzen | ergänzt `protokoll` |
| `/stundenwerk:projekt` | Projektwoche oder fächerübergreifendes Projekt planen | |
| `/stundenwerk:schuljahresende` | Checkliste und Texte zum Schuljahresende, etwa Übergaben | ohne Zeugnisnoten |

## 1.7.0: Digitales Material und KI-Bildung (Herbst 2027)

| Neuer Befehl | Wofür | Hinweis |
|---|---|---|
| `/stundenwerk:ki-unterricht` | Unterrichtsbausteine zu KI: wie sie funktioniert, wo sie irrt, Quellenkritik, Regeln der Schule | passend zu den KI-Vorgaben des Landes |
| `/stundenwerk:quiz-export` | Quizfragen als Moodle-XML, CSV oder als Text für H5P | Dateien für die Lernplattform |
| `/stundenwerk:medienkompetenz` | Bezug zum KMK-Kompetenzrahmen „Bildung in der digitalen Welt“ herstellen | |

## 2.0.0: Stundenwerk auf anderen Plattformen (2028)

- [ ] Pakete für ChatGPT (Custom GPT), Gemini (Gems), Perplexity und weitere Plattformen, automatisch aus derselben Quelle erzeugt
- [ ] Fach-Pakete mit vertieften Hinweisen für Mathematik, Deutsch, Englisch, Naturwissenschaften und Gesellschaftswissenschaften: Operatoren, typische Fehlvorstellungen, Aufgabenformate
- [ ] Lehrplan-Bausteine: Kompetenzen je Land, Fach und Klassenstufe in einheitlichem Format, mit Link zur amtlichen Quelle
- [ ] Eigene Hinweise für die Grundschule (Lernentwicklungsberichte, Anfangsunterricht) und für berufliche Schulen (Lernfelder)

## Ideen, noch nicht eingeplant

Hausaufgabenplan, Sitzplan-Ideen ohne Namen, Klassenfahrt mit Kostenplan, Lesetagebuch, Experimentieranleitungen mit Gefährdungsbeurteilung, ein Paket fürs Referendariat (Unterrichtsentwurf nach Seminarvorgaben), Präsentation für den Elternabend.

## Was Stundenwerk nicht machen wird

- Zeugnisnoten berechnen oder Zeugnistexte mit Schülernamen schreiben; dagegen sprechen Datenschutz und rechtliche Verantwortung
- automatisch bewerten, ohne dass die Lehrkraft das Ergebnis kontrolliert
- eigene Server betreiben, Konten anlegen oder Daten speichern

## Mitmachen

Rückmeldungen, Fehler und Wünsche gehen über die [Issues](https://github.com/stundenwerk-skill/Stundenwerk.skill/issues) oder an stundenwerk.skill@gmail.com. Wie Beiträge funktionieren, steht in [CONTRIBUTING.md](CONTRIBUTING.md).
