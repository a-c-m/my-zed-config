#!/usr/bin/env bash
set -e

REPO="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ZED="$HOME/.config/zed"

# Check for Homebrew
if ! command -v brew &>/dev/null; then
  echo "Error: Homebrew is required but not installed."
  echo "Install it from https://brew.sh, then re-run this script."
  exit 1
fi

# Install Zed
if brew list --cask zed &>/dev/null; then
  echo "Zed already installed"
else
  echo "Installing Zed..."
  brew install --cask zed
fi

# Install JetBrains Mono font
if brew list --cask font-jetbrains-mono &>/dev/null; then
  echo "JetBrains Mono already installed"
else
  echo "Installing JetBrains Mono font..."
  brew install --cask font-jetbrains-mono
fi

mkdir -p "$ZED"

for file in settings.json keymap.json tasks.json; do
  ln -sf "$REPO/$file" "$ZED/$file"
  echo "linked $file -> $ZED/$file"
done

echo "Done. Restart Zed to apply."
