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

# 安装

使用 `chezmoi` 进行安装

```sh
chezmoi apply
```

# 架构

```
common/
linux/
mac/
windows/
```
