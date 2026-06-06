# my-zed-config

Personal [Zed](https://zed.dev) configuration — settings, keybindings, and tasks.

## Install

```bash
bash install.sh
```

Symlinks `settings.json`, `keymap.json`, and `tasks.json` into `~/.config/zed/`. Restart Zed after running.

## What's included

| File | Purpose |
|------|---------|
| `settings.json` | Theme, fonts, LSP, formatter, file exclusions. Extensions listed under `auto_install_extensions` are installed automatically on first launch. |
| `keymap.json` | Custom keybindings (VSCode base). Notable: `cmd-shift-t` opens the current file in Typora. |
| `tasks.json` | One-shot tasks. Currently: **Open in Typora** — opens the focused file in Typora without a modal. |

## Adding extensions

Add the extension slug to `auto_install_extensions` in `settings.json`:

```json
"auto_install_extensions": {
  "my-extension": true
}
```

Find slugs on the [Zed extensions page](https://zed.dev/extensions).

## Per-project overrides

Zed supports project-level settings via a `.zed/settings.json` file at the repo root — useful for per-project formatter or LSP config. These are separate from this global config.
