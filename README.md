# dotfiles

支持多平台的 dotfiles 配置, 支持 mac，linux, windows, 不过 mac 是我的主力开发平台

# 我的工具

## 多平台

- zoxide: 在不同的目录跳转
- fnm: 管理 node 版本
- neovim: 命令行编辑器

## Shell

- windows: powershell
- mac: zsh
- linux: bash

# 目录

- `common/nvim`: 跨平台共享的 Neovim 配置源
- `common/bin/darwin`: macOS 专用脚本，应用到 `~/bin`
- `common/bin/linux`: Linux 专用脚本，应用到 `~/bin`
- `common/bin/windows`: Windows 专用脚本，应用到 `$HOME\bin`

# 安装

使用 `chezmoi` 进行安装

```sh
chezmoi apply
```

Windows 使用 PowerShell 运行同样的命令:

```powershell
chezmoi apply
```

Windows 会配置 PowerShell 7 的 profile, 并同步:

- `common/nvim` 到 `$HOME\AppData\Local\nvim`
- `common/bin/windows` 到 `$HOME\bin`
- `fnm`, `zoxide`, `nvim` 相关的 PowerShell 初始化

# 架构

```
common/
linux/
mac/
windows/
```
