# nvim-config

#### My NeoVim Configuration

This repository contains my personal NeoVim configuration.

You can find the keymaps I use [here](docs/keymaps.md).

### Installation

To utilize this configuration:

1. Clone this repository to your local machine.
2. Copy the contents to your NeoVim configuration directory (usually located at ~/.config/nvim).
3. Use Lazy.nvim, a plugin manager, to install the required plugins.

External Requirements:

- Basic utils: git, make, unzip, C Compiler (gcc)
- [ripgrep](https://github.com/BurntSushi/ripgrep#installation), [fd-find](https://github.com/sharkdp/fd#installation)
- Clipboard tool (xclip/xsel)
- [Nerd Font](https://www.nerdfonts.com/): optional, provides various icons
- Emoji fonts (Ubuntu only, and only if you want emoji!) `sudo apt install fonts-noto-color-emoji`
- Language Setup:
  - If you want to write Typescript, you need npm
  - If you want to write Golang, you will need go
  - etc.


### Features

- Configured using Lua to optimize performance and customization.
- Utilizes [Lazy.nvim](https://github.com/folke/lazy.nvim) as the plugin manager for easy installation and management.
- Implements LSP (Language Server Protocol) support for enhanced language-specific features.
- more ..

### File Structure

- `lua/core`: Contains the core Lua configuration files.
- `lua/plugins`: Contains the custom plugin configurations.

### Language Servers (LSPs):
- Java 17+ is required for `kotlin_language_server` and `jdtls`.
- Node 18+ is required for `tsserver`, `jsonls`, and `angularls`.
- Docker is required for `dockerls` and `docker_compose_language_service`.
- Python 3+ is required for `pyright`, `isSort`, and `mypy`.

Note:
* [ripgrep](https://github.com/BurntSushi/ripgrep?tab=readme-ov-file#installation) is required for telescope's `live_grep` and `grep_string`.
* ```bash
  sudo apt install make gcc ripgrep unzip git xclip
  ```

---
