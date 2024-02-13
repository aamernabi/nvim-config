vim.g.mapleader = ' '

local keymap = vim.keymap

keymap.set('n', '<leader>pv', vim.cmd.Ex)
keymap.set('n', '<C-a>', 'ggVG') -- select all
keymap.set('n', '<leader>nh', ':nohl<CR>') -- hide search highlight
keymap.set('n', 'x', '"_x') -- don't copy char when using x
keymap.set('n', '<leader>xx', '"_dd') -- delete line and don't copy

keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- split window
keymap.set('n', '<leader>sv', '<C-w>v') -- vertical
keymap.set('n', '<leader>sh', '<C-w>s') -- horizontal
keymap.set('n', '<leader>sx', ':close<CR>') -- close
keymap.set('n', '<leader>se', '<C-w>=') -- equal width

-- tabs
keymap.set('n', '<leader>to', ':tabnew<CR>')
keymap.set('n', '<leader>tx', ':tabclose<CR>')
keymap.set('n', '<leader>tn', ':tabn<CR>') -- next tab
keymap.set('n', '<leader>tp', ':tabp<CR>') -- previous tab

-- buffers
keymap.set('n', '<leader>bx', ':bd<CR>') -- close buffer
