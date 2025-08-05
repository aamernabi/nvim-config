# nvim-config

This repository contains my personal NeoVim configuration.

You can find the keymaps I use [here](docs/keymaps.md).

## Installation

### Install Neovim

nvim-config targets the latest neovim
['stable'](https://github.com/neovim/neovim/releases/tag/stable) and latest
['nightly'](https://github.com/neovim/neovim/releases/tag/nightly) of Neovim.
If you are experiencing issues, please make sure you have the latest versions.

### Install External Dependencies

External Requirements:
- Basic utils: `git`, `make`, `unzip`, C Compiler (`gcc`)
- [ripgrep](https://github.com/BurntSushi/ripgrep#installation),
  [fd-find](https://github.com/sharkdp/fd#installation)
- Clipboard tool (`xclip`/`xsel`/`win32yank` or other depending on the platform)
- A [Nerd Font](https://www.nerdfonts.com/): optional, provides various icons
  - if you have it set `vim.g.have_nerd_font` in `init.lua` to true
- Emoji fonts (Ubuntu only, and only if you want emoji!) `sudo apt install fonts-noto-color-emoji`
- Language Setup:
  - If you want to write Typescript, you need `npm`
  - If you want to write Golang, you will need `go`
  - etc.

### Post Installation

Start Neovim

```sh
nvim
```

That's it! Lazy will install all the plugins you have. Use `:Lazy` to view
the current plugin status. Hit `q` to close the window.

## Features

- Configured using Lua to optimize performance and customization.
- Utilizes [Lazy.nvim](https://github.com/folke/lazy.nvim) as the plugin manager for easy installation and management.
- Implements LSP (Language Server Protocol) support for enhanced language-specific features.
- more ..


## Language Servers (LSPs):
- Java 17+ is required for `kotlin_language_server` and `jdtls`.
- Node 18+ is required for `tsserver`, `jsonls`, and `angularls`.
- Docker is required for `dockerls` and `docker_compose_language_service`.
- Python 3+ is required for `pyright`, `isSort`, and `mypy`.

Note:
* [ripgrep](https://github.com/BurntSushi/ripgrep?tab=readme-ov-file#installation) is required for telescope's `live_grep` and `grep_string`.
* ```bash
  sudo apt install make gcc ripgrep unzip git xclip
  ```
