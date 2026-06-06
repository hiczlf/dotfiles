# AGENTS.md

## Project Scope

This repository contains personal dotfiles for multiple platforms:

- macOS
- Linux
- Windows

macOS is the primary development platform.

## Source Of Truth

This file is generated only from [README.md](README.md).

If this file and `README.md` disagree, follow `README.md`.

Do not treat this file as evidence for tools, workflows, files, or platform behavior that are not mentioned in `README.md`.

## Tools Mentioned In README

Cross-platform tools:

- `zoxide`: directory jumping across different locations.
- `fnm`: Node.js version management.
- `neovim`: command-line editor.

Shell by platform:

- macOS: `zsh`
- Linux: `bash`
- Windows: `powershell`

## Installation

The README states that installation is managed with `chezmoi`.

Do not replace the installation approach with a different tool or workflow unless the user explicitly asks for that change.

## Architecture

The README defines this layout:

- `common/`
- `linux/`
- `mac/`
- `windows/`

Preserve this architecture unless the user explicitly asks to change it.

## Agent Working Rules

- Read `README.md` before making project-level changes.
- Preserve the repository goal of supporting macOS, Linux, and Windows.
- Treat macOS as the primary platform, but do not make a change macOS-only unless the user explicitly requests it.
- When platform behavior may differ, state the platform assumption in the response.
- Do not introduce new tools, setup steps, directory conventions, or platform-specific rules unless the user explicitly requests them or updates `README.md` first.
- For installation-related changes, keep the workflow centered on `chezmoi`.
