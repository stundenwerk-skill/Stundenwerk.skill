#!/usr/bin/env bash
# Kreide – GitHub-Repo für gute Auffindbarkeit einrichten.
# Voraussetzung: gh ist installiert und angemeldet (gh auth login).
# Aufruf im Repo-Ordner:  bash scripts/github-einrichten.sh NAME/kreide "Vorname Nachname"
set -euo pipefail

REPO="${1:?Bitte Repo angeben, z. B.: bash scripts/github-einrichten.sh meine-schule/kreide \"Vorname Nachname\"}"
AUTOR="${2:-}"

DESCRIPTION="Kreide – KI-Kollegium für Lehrkräfte: Claude-Code-Plugin für Unterrichtsplanung, Klassenarbeiten, Differenzierung, Korrektur und Elternbriefe. Länderprofile für alle 16 Bundesländer, Datenschutz eingebaut, automatische Updates."

TOPICS=(
  claude-code claude-code-plugin claude-plugin agent-skills claude-skills
  lehrer lehrkraefte schule unterricht unterrichtsplanung
  unterrichtsvorbereitung klassenarbeit lehrplan bildung ki-in-der-schule
  education teachers lesson-planning germany edtech
)

echo "→ Beschreibung, Website und Funktionen setzen"
gh repo edit "$REPO" \
  --description "$DESCRIPTION" \
  --homepage "https://github.com/$REPO#readme" \
  --enable-issues \
  --enable-discussions \
  --enable-wiki=false

echo "→ Topics setzen (${#TOPICS[@]})"
ARGS=()
for t in "${TOPICS[@]}"; do ARGS+=(--add-topic "$t"); done
gh repo edit "$REPO" "${ARGS[@]}"

echo "→ Repo-Adresse in den Dateien eintragen"
sed -i.bak "s#DEIN-GITHUB-NAME/kreide#$REPO#g" \
  vorlage/einrichtung/marketplace-quelle.txt \
  plugins/kreide/.claude-plugin/plugin.json README.md
rm -f vorlage/einrichtung/marketplace-quelle.txt.bak plugins/kreide/.claude-plugin/plugin.json.bak README.md.bak
if [ -n "$AUTOR" ]; then
  echo "→ Urheber „$AUTOR“ eintragen"
  for f in README.md LIZENZ.md BEITRAGSVEREINBARUNG.md scripts/LICENSE; do sed -i.bak "s#\[DEIN NAME\]#$AUTOR#g" "$f"; rm -f "$f.bak"; done
  sed -i.bak "s#kreide.skill#$AUTOR#g" plugins/kreide/.claude-plugin/plugin.json .claude-plugin/marketplace.json
  rm -f plugins/kreide/.claude-plugin/plugin.json.bak .claude-plugin/marketplace.json.bak
fi

VERSION=$(python3 -c "import json;print(json.load(open('plugins/kreide/.claude-plugin/plugin.json'))['version'])")
echo "→ Release v$VERSION anlegen (Notizen aus CHANGELOG.md)"
NOTES=$(awk -v v="## $VERSION" '$0 ~ "^"v {f=1; next} /^## / && f {exit} f' CHANGELOG.md)
if git rev-parse "v$VERSION" >/dev/null 2>&1; then
  gh release create "v$VERSION" --repo "$REPO" --title "Kreide $VERSION" --notes "$NOTES" --verify-tag || true
else
  echo "   Tag v$VERSION fehlt lokal – bitte zuerst: git tag -a v$VERSION -m 'Kreide $VERSION' && git push --tags"
fi

cat <<'HINWEIS'

Fertig. Zwei Dinge gehen nur im Browser:
  1. Vorschaubild für Links: Settings → General → Social preview → Edit → assets/social-preview.png hochladen
  2. Optional: unter „About“ (Zahnrad) „Releases“ und „Packages“ anzeigen lassen

Danach die geänderten Dateien committen und pushen:
  git add -A && git commit -m "Repo-Adresse eingetragen" && git push
HINWEIS
