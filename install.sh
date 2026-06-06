#!/usr/bin/env bash
set -e

REPO="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ZED="$HOME/.config/zed"

mkdir -p "$ZED"

for file in settings.json keymap.json tasks.json; do
  ln -sf "$REPO/$file" "$ZED/$file"
  echo "linked $file -> $ZED/$file"
done

echo "Done. Restart Zed to apply."
