---
name: klassenarbeit
description: "Erstellt eine Klassenarbeit (Bayern: Schulaufgabe, Oberstufe: Klausur) mit Erwartungshorizont, Notenschlüssel-Vorschlag und Version B für die aktuelle Klasse – nach den Vorgaben des jeweiligen Bundeslandes."
argument-hint: "[Thema] [Dauer in Minuten]"
---

> **Qualität (verbindlich):** Nichts erfinden – keine Studien, Zahlen, Lehrplan-Nummern, Paragrafen oder Quellen ohne Beleg; Unsicheres offen sagen und mit „[prüfen]“ kennzeichnen. Fehlen Angaben, die das Ergebnis inhaltlich verändern, oder widersprechen sich Anfrage und Dateien: **zuerst nachfragen** (max. 3 kurze Fragen), statt zu raten. Pädagogische Begründungen nur mit gut belegten Prinzipien (Skill `stundenwerk:unterricht`, `evidenz.md`). Verständlich für die Zielgruppe schreiben, Lösungen nachrechnen, am Ende „Bitte prüfen:“ mit offenen Punkten. Sprache: Schülermaterial passend zur Klassenstufe nach `sprache.md`, Texte für Erwachsene nach `schreibstil.md`. Ausführlich: `qualitaet.md` im Skill `stundenwerk:unterricht`.

Erstelle eine Klassenarbeit zum Thema: $ARGUMENTS

Vorgehen:
1. Länderprofil lesen (über den Skill `unterricht`): **Begriff** (z. B. Schulaufgabe in Bayern) und **Regeln** des Landes übernehmen (Ankündigung, Höchstzahl pro Tag/Woche, Anzahl je Fach). Mit „[prüfen]“ markierte Regeln nur als Hinweis nennen.
2. Klassenprofil (CLAUDE.md der Klasse), Stoffverteilungsplan.md und die letzten 10 Einträge im Logbuch.md lesen.
3. Passende Lehrplan-Auszüge in `../_Lehrplan/` und Beispiele in `../_Beispiele/` lesen.
4. Prüfen: Wurde alles, was abgefragt wird, laut Logbuch auch unterrichtet? Wenn nicht: nachfragen.
5. Im Ordner `Klassenarbeiten/` einen neuen Unterordner `KAx-Thema/` anlegen mit:
   - `KA.md` (Version A)
   - `KA_B.md` (Version B, gleiche Schwierigkeit)
   - `Erwartungshorizont.md` (beide Versionen, Teilpunkte)
   - `Uebersicht.md` (Tabelle: Aufgabe | Kompetenz/Lehrplanbezug | AFB | Punkte; dazu Zeitbedarf und Notenschlüssel-Vorschlag aus der Fach-CLAUDE.md)
6. Jede Aufgabe: Operator, AFB (I/II/III), Punkte. Punktsumme prüfen.
   - Kopf: Fach, Klasse, Datum, Bearbeitungszeit, erlaubte Hilfsmittel, Gesamtpunktzahl (Vorlage `_Schule/Vorlagen/Kopf-Klassenarbeit.md`, falls vorhanden).
   - Aufgaben nach Schwierigkeit ordnen, Teilaufgaben a, b, c mit eigenen Punkten, Materialien als M1, M2 … benennen.
   - Nur Fachbegriffe und Operatoren verwenden, die laut Logbuch eingeführt sind. Keine Fangfragen.
   - Version B: gleiche Operatoren, gleiche AFB-Verteilung, gleich viele Lösungsschritte, andere Zahlen oder Beispiele.
   - Zeitbedarf schätzen, indem du die Musterlösung Schritt für Schritt durchgehst und Zeit für Lesen, Nachdenken und Aufschreiben einplanst. Die Zahl als Schätzung kennzeichnen. Passt die Arbeit nicht in die Zeit: kürzen und das im Chat sagen.
7. Kurze Zusammenfassung im Chat: Punktzahl, AFB-Verteilung, offene Punkte.

Lehrplan-Standards nie erfinden – ohne Beleg „[Lehrplanbezug prüfen]“.

## Sprache und Aufgabenstellung (verbindlich)
1. Klassenstufe, Niveau und Sprachstand (DaZ, Leseschwierigkeiten) aus dem Klassenprofil bestimmen. Fehlt etwas davon und ändert es das Ergebnis: nachfragen.
2. Alles, was Schülerinnen und Schüler lesen, nach `sprache.md` (Skill `stundenwerk:unterricht`) schreiben: Satzlänge und Wortschatz laut Stufentabelle, Operator am Satzanfang, ein Auftrag pro Satz, Ergebnisform nennen („in zwei Sätzen“, „in die Tabelle“), Material eindeutig benennen („M2“).
3. Neue Fachbegriffe beim ersten Auftreten erklären (Begriff mit Artikel, Erklärung in Alltagssprache, Beispiel) und danach immer gleich benennen. Bei neuen Themen einen Wortspeicher anbieten.
4. Fachlich korrekt bleiben: vereinfachen ja, verfälschen nein. Didaktische Vereinfachungen für die Lehrkraft vermerken.
5. Vor der Ausgabe den Sprach-Check aus `sprache.md` durchgehen und im Chat eine Zeile ausgeben, z. B. „Sprache: Klasse 7, Niveau M, neue Fachbegriffe: …“.
