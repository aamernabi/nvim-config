# Neovim Keymaps

## Leader Key

- `<Space>`: Map leader key

## Normal Mode

- `<leader>pv`: Execute Ex command
- `<C-a>`: Select all
- `<leader>nh`: Hide search highlight
- `x`: Delete without copying character
- `<leader>xx`: Delete line without copying
- `<leader>h`: Toggle inlay hints
- `]d`: Move to next diagnostics (added in neovim 0.10)
- `K`: Diagnostics hover information from language server (added in neovim 0.10)

## Visual Mode

- `J`: Move selected lines down
- `K`: Move selected lines up

## Split Window

- `<leader>sv`: Split window vertically
- `<leader>sh`: Split window horizontally
- `<leader>sx`: Close window
- `<leader>se`: Make windows equal width

## Tabs

- `<leader>to`: Open new tab
- `<leader>tx`: Close current tab
- `<leader>tn`: Switch to next tab
- `<leader>tp`: Switch to previous tab

## Buffers

- `<leader>bx`: Close buffer

## GitSigns

### Normal Mode

- `]c`: Next hunk (git diff navigation)
- `[c`: Previous hunk (git diff navigation)
- `<leader>hs`: Stage current hunk
- `<leader>hr`: Reset current hunk
- `<leader>hS`: Stage all changes in buffer
- `<leader>hu`: Undo stage current hunk
- `<leader>hR`: Reset all changes in buffer
- `<leader>hp`: Preview current hunk
- `<leader>hb`: Blame line
- `<leader>tb`: Toggle current line blame
- `<leader>hd`: Diff current hunk
- `<leader>hD`: Diff current hunk against its base
- `<leader>td`: Toggle deleted

### Visual Mode

- `<leader>hs`: Stage selected lines
- `<leader>hr`: Reset selected lines

### Text Object

- `ih`: Select hunk

## Telescope

- `<C-d>`: Delete buffer (normal and insert mode)
- `<leader>ff`: Find files
- `<C-p>`: Git files
- `<leader>fb`: Buffers
- `<leader>fh`: Help tags
- `<leader>fg`: Live grep
- `<leader>fs`: Grep string

## LSP (Language Server Protocol) Configuration

- `gd`: Go to definition
- `gi`: Go to implementation
- `gr`: Find references using Telescope
- `K`: Show hover information

- `<leader>D`: Show diagnostics for current buffer using Telescope
- `<leader>d`: Open diagnostics in a floating window
- `<leader>rn`: Rename symbol
- `<leader>ca`: Code action

## NeoTree Plugin

- `<C-e>`: Toggle NeoTree

## Code Formatting

- `<leader>gf`: Format code using null-ls

## Auto Completion

- `<C-k>`: Previous suggestion
- `<C-j>`: Next suggestion
- `<C-b>`: Scroll documentation up
- `<C-f>`: Scroll documentation down
- `<C-Space>`: Show completion suggestions
- `<C-q>`: Close completion window
- `<CR>`: Confirm and select completion item

## Undo Tree Plugin

- `<leader>u`: Toggle Undo Tree

## Comment

### NORMAL mode

- `gcc` - Toggles the current line using linewise comment
- `gbc` - Toggles the current line using blockwise comment
- `count]gcc` - Toggles the number of line given as a prefix-count using linewise
- `count]gbc` - Toggles the number of line given as a prefix-count using blockwise
- `gc[count]{motion}` - (Op-pending) Toggles the region using linewise comment
- `gb[count]{motion}` - (Op-pending) Toggles the region using blockwise comment
- `gco` - Insert comment to the next line and enters INSERT mode
- `gcO` - Insert comment to the previous line and enters INSERT mode
- `gcA` - Insert comment to end of the current line and enters INSERT mode

### VISUAL mode

- `gc` - Toggles the region using linewise comment
- `gb` - Toggles the region using blockwise comment

### Examples

#### Linewise

- `gcw` - Toggle from the current cursor position to the next word
- `gc$` - Toggle from the current cursor position to the end of line
- `gc}` - Toggle until the next blank line
- `gc5j` - Toggle 5 lines after the current cursor position
- `gc8k` - Toggle 8 lines before the current cursor position
- `gcip` - Toggle inside of paragraph
- `gca}` - Toggle around curly brackets
- `gci}` - Toggle inside curly brackets

#### Blockwise

- `gb2}` - Toggle until the 2 next blank line
- `gbaf` - Toggle comment around a function (w/ LSP/treesitter support)
- `gbac` - Toggle comment around a class (w/ LSP/treesitter support)
