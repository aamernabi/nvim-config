# nvim-config

#### My NeoVim Configuration

This repository contains my personal NeoVim configuration.

You can find the keymaps I use [here](docs/keymaps.md).

### Installation

To utilize this configuration:

1. Clone this repository to your local machine.
2. Copy the contents to your NeoVim configuration directory (usually located at ~/.config/nvim).
3. Use Lazy.nvim, a plugin manager, to install the required plugins.

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

---
