# AGENTS.md

## Build, Lint, and Test

LLM agents should never use. These are for manual use only.

- **Install:**  
  `bash setup.sh` — Sets up tmux config and plugins.
- **Reload config:**  
  In tmux: `prefix-R` (Ctrl-a then R)
- **Install plugins:**  
  In tmux: `prefix-I` (Ctrl-a then I)
- **No automated tests or linter scripts are present.**  
  Manual verification is required.

## Code Style Guidelines

- **Shell scripts:**
  - Use `#!/usr/bin/env bash` or `#!/usr/bin/env sh` as shebang.
  - Prefer double quotes for variables.
  - Use local variables in functions.
  - Indent with tabs or 2 spaces (be consistent).
  - Use `[[ ... ]]` for conditionals in bash.
  - Always quote paths and variables.
- **Naming:**
  - Use lowercase, hyphen-separated filenames (e.g., `setup.sh`, `toggle.sh`).
  - Functions: `snake_case`.
  - Variables: `snake_case`, all lowercase.
- **Imports & Sourcing:**
  - Use `source` for other scripts.
  - Reference config via `$HOME/.config/tmux`.
- **Error Handling:**
  - Check for command existence (`hash watson >/dev/null`).
  - Use `if [[ ... ]]; then ...; fi` for logic.
  - Prefer early returns in functions.
- **Tmux config:**
  - Use `set -g` for global options.
  - Use `bind` for key bindings.
  - Comments start with `#`.
  - Organize config with fold markers (`# {{{ ... # }}}`).
- **Formatting:**
  - Align assignments and commands for readability.
  - Use Unicode/ASCII icons for status bar.
- **Other:**
  - Sensitive/local overrides go in `tmuxrc.local` (gitignored).
  - See `REFERENCE.md` for key bindings and usage.
