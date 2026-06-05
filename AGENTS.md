# AGENTS.md

## Scope

This repository contains personal dotfiles for multiple platforms: macOS, Linux, and Windows.
macOS is the primary development platform.

## Source Of Truth

Read [README.md](README.md) first and treat it as the authoritative project overview.
If this file and README conflict, follow README.

## Tool Context

Expected tools in this repo context:
- zoxide (cross-platform directory jumping)
- fnm (Node version management)
- neovim (CLI editor)
- zsh (macOS and Linux)
- powershell (Windows)

## Agent Working Rules

- Keep edits minimal and scoped to the user request.
- Preserve cross-platform intent unless the user explicitly asks for platform-specific changes.
- Prefer documenting assumptions in PR/chat output when platform behavior may differ.

## Setup Note

Installation flow is managed with chezmoi, as documented in [README.md](README.md).
