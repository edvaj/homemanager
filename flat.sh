#!/usr/bin/env bash
# Moves every modules/<name>/config/* up into modules/<name>/,
# removes the empty config/ dir, and rewrites ./config/ -> ./ in that
# module's .nix files so the imports still resolve.
# Usage: ./flatten-config.sh <repo root>

set -euo pipefail
shopt -s dotglob nullglob

root="${1:?usage: $0 <repo root>}"
cd "$root"

# Use git mv inside a git repo so the flake sees the moves
if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
    mv_cmd=(git mv)
else
    mv_cmd=(mv)
fi

for cfg in modules/*/config; do
    [[ -d "$cfg" ]] || continue
    parent="$(dirname "$cfg")"

    # Check for name clashes before moving anything in this module
    for f in "$cfg"/*; do
        if [[ -e "$parent/$(basename "$f")" ]]; then
            echo "conflict: $parent/$(basename "$f") already exists, skipping $cfg"
            continue 2
        fi
    done

    for f in "$cfg"/*; do
        "${mv_cmd[@]}" "$f" "$parent/"
    done
    rmdir "$cfg"

    # Fix relative paths in this module's .nix files
    for nix in "$parent"/*.nix; do
        sed -i 's#\./config/#./#g' "$nix"
    done

    echo "flattened: $cfg"
done

echo
echo "remaining ./config references (fix these by hand):"
grep -rn '\./config' modules --include=*.nix || echo "none"
