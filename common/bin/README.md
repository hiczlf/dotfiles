# Platform bin scripts

Put platform-specific scripts in these directories:

- `darwin/`: macOS scripts, synced to `~/bin` on macOS.
- `linux/`: Linux scripts, synced to `~/bin` on Linux.
- `windows/`: Windows scripts, synced to `$HOME\bin` on Windows.

Keep each platform directory flat. Files in the selected platform directory are copied to the target `bin` directory during `chezmoi apply`.
