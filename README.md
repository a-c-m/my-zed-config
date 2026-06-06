# my-zed-config

Personal [Zed](https://zed.dev) configuration — settings, keybindings, and tasks.

## Install

```bash
bash install.sh
```

Symlinks `settings.json`, `keymap.json`, and `tasks.json` into `~/.config/zed/`, and installs the JetBrains Mono font (used by the editor and terminal) via Homebrew. Requires [Homebrew](https://brew.sh). Restart Zed after running.

## How to use this repo

This is _my_ config — to use it, **fork it (or clone it) and make your own copy**, then run `install.sh` from there. Don't expect to push changes back here.

Because `install.sh` **symlinks** the files (rather than copying them), Zed reads and writes them in place:

- Editing settings in Zed — via the UI or by opening `settings.json` — changes the file **in this repo**.
- So your tweaks show up directly as git changes here. Run `git status` / `git diff` to **review** what changed, then **commit** the ones you want to keep (and discard the rest with `git restore`).
- Pull updates from your fork and they apply on the next Zed restart — no re-install needed, since the symlinks already point here.

In short: clone → `install.sh` → edit in Zed → review the diff → commit. Your config is version-controlled as you go.

> [!TIP]
> This repo uses Claude Sonnet with auto-accept edits enabled — good for cost, but you may prefer a larger model for complex tasks. Change the model with `/model` in Claude Code and toggle auto-accept in settings.

## What's included

| File            | Purpose                                                                                                                                                                                                                             |
| --------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `settings.json` | Theme, fonts, panel layout, LSP, formatter, file exclusions, and external AI agents (`opencode`, `claude-acp` via the ACP registry). Extensions listed under `auto_install_extensions` are installed automatically on first launch. |
| `keymap.json`   | Custom keybindings (VSCode base). Notable: `cmd-shift-t` opens the current file in Typora.                                                                                                                                          |
| `tasks.json`    | One-shot tasks. Currently: **Open in Typora** — opens the focused file in Typora without a modal.                                                                                                                                   |

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
