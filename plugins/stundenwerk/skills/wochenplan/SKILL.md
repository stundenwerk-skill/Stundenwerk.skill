---
name: wochenplan
description: Überblick über die kommende Schulwoche – liest alle Klassen-Logbücher, Stoffverteilungspläne und den Jahresplan und schlägt die Vorbereitung vor.
argument-hint: "[optional: Kalenderwoche oder Datum]"
---

> **Qualität (verbindlich):** Nichts erfinden – keine Studien, Zahlen, Lehrplan-Nummern, Paragrafen oder Quellen ohne Beleg; Unsicheres offen sagen und mit „[prüfen]“ kennzeichnen. Fehlen Angaben, die das Ergebnis inhaltlich verändern, oder widersprechen sich Anfrage und Dateien: **zuerst nachfragen** (max. 3 kurze Fragen), statt zu raten. Pädagogische Begründungen nur mit gut belegten Prinzipien (Skill `stundenwerk:unterricht`, `evidenz.md`). Verständlich für die Zielgruppe schreiben, Lösungen nachrechnen, am Ende „Bitte prüfen:“ mit offenen Punkten. Ausführlich: `qualitaet.md` im Skill `stundenwerk:unterricht`.

Erstelle einen Vorbereitungsplan für die Woche: $ARGUMENTS (ohne Angabe: kommende Woche)

Vom Ordner `Schule/` aus starten. Vorgehen:
1. `_Schule/Jahresplan-*.md` lesen: Termine, Ferien, Konferenzen in dieser Woche.
2. Für jede Klasse (alle `*/Klasse-*/`): letzte Logbuch-Einträge und Stoffverteilungsplan lesen.
3. Abgleichen: Liegt die Klasse im Plan? Steht eine Klassenarbeit / Kurztest an? Ist eine Klassenarbeit angekündigt und schon erstellt?

Ausgabe im Chat (und als `_Schule/Wochenplaene/KW-NN.md`):
- Termine der Woche
- Tabelle pro Klasse: Klasse | Fach | Stand | geplante Themen diese Woche | Abweichung vom Plan | To-do
- Leistungsfeststellungen der Woche (Höchstzahlen des Landes laut Länderprofil bzw. `_Schule/Landesvorgaben.md` beachten – soweit aus den Daten erkennbar)
- Priorisierte To-do-Liste für die Vorbereitung (was zuerst), mit passendem Skill-Befehl, z. B. `/stundenwerk:stunde …`, `/stundenwerk:klassenarbeit …`
