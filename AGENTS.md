# Repository Guidelines

## Project Structure & Module Organization
Core preview sources live in `sources/*.zsh`; each script handles a single completion context and begins with a `# :fzf-tab:complete:` magic comment so `fzf-tab-source.plugin.zsh` can wire it in. Autoload helpers and fallbacks live in `functions/main.zsh`, while `fzf-tab-source.plugin.zsh` gathers every source, loads user overrides defined via `zstyle ':fzf-tab:sources' config-directory`, and applies shared `fzf` flags. Helper tooling sits in `bin/`, and documentation belongs in `README.md` plus this guide. Compiled `.zwc` artefacts mirror the `.zsh` files—edit the plain text versions only.

## Build, Test, and Development Commands
- `zsh -n sources/gio.zsh`: syntax-check a script without executing it; run this whenever you touch a source file.  
- `rg ':fzf-tab:complete' sources/*.zsh`: quickly confirm a new context matches existing patterns.  
- `zsh -i -c exit`: benchmarks an interactive startup with the plugin enabled; ensure it prints nothing except the usual `stty` warning so lazy loading remains silent.  
- `source fzf-tab-source.plugin.zsh` inside a fresh terminal: smoke-test that previews load and fzf bindings still work.  
No external build step is required; the plugin is pure zsh.

## Coding Style & Naming Conventions
Stick to POSIX-safe zsh with two-space indentation for multiline bodies and pipelines. Prefer `[[ ... ]]` tests, `(( ... ))` arithmetic, and guard clauses like `[[ -f $realpath ]] && less $realpath || ...` to keep previews concise. Reference real files via `$realpath` and user input via `$word`. When adding commands, follow existing naming (`command-subcommand.zsh`), and add short comments only to clarify non-obvious logic.

## Testing Guidelines
There is no dedicated automated test suite; rely on fast checks. Run `zsh -n` for each edited file, optionally pipe through `shellcheck -s sh` for common issues, and then interactively press `<TAB>` on the relevant command to ensure previews and fallbacks behave (e.g., `gio help`, `gio trash`). Document any manual testing steps in your PR description.

## Commit & Pull Request Guidelines
Recent history uses emoji-prefixed summaries (`✨ Feature`, `🐛 Fix`) followed by a short imperative clause—for example, `🐛 consistent parameter expansion`. Keep commits focused and reference issue numbers when applicable. Pull requests should describe the user-facing change, note manual tests, mention new dependencies, and include screenshots or terminal recordings when the preview output changes. Tag maintainers only after CI or manual checks pass.
