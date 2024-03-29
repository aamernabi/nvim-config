local opt = vim.opt

opt.background = 'dark' -- or "light" for light mode
opt.termguicolors = true -- enable True Color (24-bit) support for the terminal
opt.guifont = 'JetBrainsMono Nerd Font'

opt.backspace = '2'
opt.showcmd = true
opt.laststatus = 2
opt.autowrite = true
opt.cursorline = true
opt.autoread = true
opt.wrap = false
opt.ignorecase = true
opt.smartcase = true
opt.iskeyword:append('-')

opt.splitright = true
opt.splitbelow = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.shiftround = true
opt.expandtab = true
opt.clipboard = 'unnamedplus'
opt.autoindent = true

opt.relativenumber = true
opt.number = true

vim.cmd [[ set noswapfile ]] -- prevents the creation of swap files
