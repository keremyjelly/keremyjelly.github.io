
/





















Fix site · SH
#!/usr/bin/env bash
#
# fix_site.sh — clean up keremyjelly.github.io after the repo rename
#
# What it does:
#   1. Rewrites every "/jelly-personal-website/" path to "/" (base tags,
#      links, images, og: meta tags) in .html/.css/.js/.md files
#   2. Removes the "O'Neill Hall (4B)" dorm reference
#   3. Shows you a diff and leftover-check — does NOT commit or push
#
# Usage:
#   cd /path/to/your/repo && bash fix_site.sh
#
set -euo pipefail
 
# --- safety checks ---------------------------------------------------------
if ! git rev-parse --show-toplevel >/dev/null 2>&1; then
  echo "ERROR: run this from inside your website repo (git clone it first)." >&2
  exit 1
fi
cd "$(git rev-parse --show-toplevel)"
 
if ! git diff --quiet || ! git diff --cached --quiet; then
  echo "WARNING: you have uncommitted changes. Commit or stash them first so"
  echo "you can cleanly review what this script changes. Aborting."
  exit 1
fi
 
echo "==> Working in: $(pwd)"
 
# --- collect target files ---------------------------------------------------
FILES=$(git ls-files '*.html' '*.css' '*.js' '*.md' '*.xml' '*.json')
if [ -z "$FILES" ]; then
  echo "ERROR: no html/css/js files found — is this the right repo?" >&2
  exit 1
fi
 
# --- 1. fix old base path ----------------------------------------------------
echo "==> Rewriting /jelly-personal-website/ -> /"
echo "$FILES" | while IFS= read -r f; do
  perl -pi -e 's{/jelly-personal-website/}{/}g' "$f"
done
 
# --- 2. remove dorm reference ------------------------------------------------
echo "==> Removing O'Neill Hall (4B) reference"
echo "$FILES" | while IFS= read -r f; do
  # ", and I'm a resident of O'Neill Hall (4B)" -> removed (keeps the sentence period)
  perl -0pi -e "s{,\s*and\s+I'?m\s+a\s+resident\s+of\s+O'?Neill\s+Hall\s*\(4B\)}{}gis" "$f"
  # fallback: any other standalone mention
  perl -0pi -e "s{O'?Neill\s+Hall\s*\(4B\)}{}gis" "$f"
done
 
# --- 3. report ---------------------------------------------------------------
echo ""
echo "==> Leftover check (should print nothing):"
grep -rn "jelly-personal-website\|O'Neill" --include='*.html' --include='*.css' --include='*.js' . || echo "    clean ✔"
 
echo ""
echo "==> Files changed:"
git diff --stat
 
echo ""
echo "==> Review the full diff with:  git diff"
echo "==> Then publish with:"
echo "      git add -A && git commit -m 'Fix base paths after repo rename; remove dorm info' && git push"
 
