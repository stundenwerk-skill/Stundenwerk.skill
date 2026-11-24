---
name: wochenplan
description: Überblick über die kommende Schulwoche – liest alle Klassen-Logbücher, Stoffverteilungspläne und den Jahresplan und schlägt die Vorbereitung vor.
argument-hint: "[optional: Kalenderwoche oder Datum]"
---

Erstelle einen Vorbereitungsplan für die Woche: $ARGUMENTS (ohne Angabe: kommende Woche)

Vom Ordner `Schule/` aus starten. Vorgehen:
1. `_Schule/Jahresplan-*.md` lesen: Termine, Ferien, Konferenzen in dieser Woche.
2. Für jede Klasse (alle `*/Klasse-*/`): letzte Logbuch-Einträge und Stoffverteilungsplan lesen.
3. Abgleichen: Liegt die Klasse im Plan? Steht eine Klassenarbeit / Wiederholungsarbeit an? Ist eine Klassenarbeit angekündigt und schon erstellt?

Ausgabe im Chat (und als `_Schule/Wochenplaene/KW-NN.md`):
- Termine der Woche
- Tabelle pro Klasse: Klasse | Fach | Stand | geplante Themen diese Woche | Abweichung vom Plan | To-do
- Leistungsfeststellungen der Woche (NVO beachten: max. 1 KA/Tag, möglichst ≤ 3/Woche pro Klasse – soweit aus den Daten erkennbar)
- Priorisierte To-do-Liste für die Vorbereitung (was zuerst), mit passendem Skill-Befehl, z. B. `/stunde …`, `/klassenarbeit …`
